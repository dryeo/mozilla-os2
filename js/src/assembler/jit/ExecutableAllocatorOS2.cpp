/*
 * Copyright (C) 2008 Apple Inc. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY APPLE INC. ``AS IS'' AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL APPLE INC. OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
 * OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */


#include "assembler/jit/ExecutableAllocator.h"

#if ENABLE_ASSEMBLER && WTF_OS_OS2

#define INCL_DOS
#include <os2.h>

namespace JSC {

size_t ExecutableAllocator::determinePageSize()
{
    return 4096u;
}

ExecutablePool::Allocation ExecutableAllocator::systemAlloc(size_t n)
{
    void* allocation = NULL;
    if (DosAllocMem(&allocation, n, OBJ_ANY | PAG_COMMIT | PAG_READ | PAG_WRITE | PAG_EXECUTE))
        if (DosAllocMem(&allocation, n, PAG_COMMIT | PAG_READ | PAG_WRITE | PAG_EXECUTE))
            MOZ_CRASH();
    ExecutablePool::Allocation alloc = { reinterpret_cast<char*>(allocation), n };
    return alloc;
}

void ExecutableAllocator::systemRelease(const ExecutablePool::Allocation& alloc)
{
    DosFreeMem(alloc.pages);
}

void
ExecutablePool::toggleAllCodeAsAccessible(bool accessible)
{
    char* begin = m_allocation.pages;
    size_t size = m_freePtr - begin;

    if (size) {
        ULONG flags = PAG_READ | PAG_WRITE | PAG_EXECUTE;
        if (!accessible)
            flags |= PAG_GUARD;
        if (DosSetMem(begin, size, flags))
            MOZ_CRASH();
    }
}

#if ENABLE_ASSEMBLER_WX_EXCLUSIVE
#error "ASSEMBLER_WX_EXCLUSIVE not yet suported on this platform."
#endif

}

#endif // HAVE(ASSEMBLER)
