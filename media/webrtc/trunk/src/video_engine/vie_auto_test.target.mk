# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := vie_auto_test
### Generated for copy rule.
/tmp/captureDeviceImage.bmp: TOOLSET := $(TOOLSET)
/tmp/captureDeviceImage.bmp: src/video_engine/test/auto_test/media/captureDeviceImage.bmp FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += /tmp/captureDeviceImage.bmp
/tmp/captureDeviceImage.jpg: TOOLSET := $(TOOLSET)
/tmp/captureDeviceImage.jpg: src/video_engine/test/auto_test/media/captureDeviceImage.jpg FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += /tmp/captureDeviceImage.jpg
/tmp/renderStartImage.bmp: TOOLSET := $(TOOLSET)
/tmp/renderStartImage.bmp: src/video_engine/test/auto_test/media/renderStartImage.bmp FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += /tmp/renderStartImage.bmp
/tmp/renderStartImage.jpg: TOOLSET := $(TOOLSET)
/tmp/renderStartImage.jpg: src/video_engine/test/auto_test/media/renderStartImage.jpg FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += /tmp/renderStartImage.jpg
/tmp/renderTimeoutImage.bmp: TOOLSET := $(TOOLSET)
/tmp/renderTimeoutImage.bmp: src/video_engine/test/auto_test/media/renderTimeoutImage.bmp FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += /tmp/renderTimeoutImage.bmp
/tmp/renderTimeoutImage.jpg: TOOLSET := $(TOOLSET)
/tmp/renderTimeoutImage.jpg: src/video_engine/test/auto_test/media/renderTimeoutImage.jpg FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += /tmp/renderTimeoutImage.jpg
vie_auto_test_copies = /tmp/captureDeviceImage.bmp /tmp/captureDeviceImage.jpg /tmp/renderStartImage.bmp /tmp/renderStartImage.jpg /tmp/renderTimeoutImage.bmp /tmp/renderTimeoutImage.jpg

DEFS_Debug := '-D_FILE_OFFSET_BITS=64' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_NSS=1' \
	'-DTOOLKIT_USES_GTK=1' \
	'-DGTK_DISABLE_SINGLE_INCLUDES=1' \
	'-DENABLE_REMOTING=1' \
	'-DENABLE_P2P_APIS=1' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DENABLE_INPUT_SPEECH' \
	'-DENABLE_NOTIFICATIONS' \
	'-DENABLE_GPU=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DUSE_SKIA=1' \
	'-DENABLE_REGISTER_PROTOCOL_HANDLER=1' \
	'-DENABLE_WEB_INTENTS=1' \
	'-DENABLE_PLUGIN_INSTALLATION=1' \
	'-DWEBRTC_TARGET_PC' \
	'-DWEBRTC_LINUX' \
	'-DWEBRTC_THREAD_RR' \
	'-DUNIT_TEST' \
	'-DGTEST_HAS_RTTI=0' \
	'-DGFLAGS_DLL_DECL=' \
	'-DGFLAGS_DLL_DECLARE_FLAG=' \
	'-DGFLAGS_DLL_DEFINE_FLAG=' \
	'-D__STDC_FORMAT_MACROS' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := -Werror \
	-pthread \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wextra \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-O0 \
	-g

# Flags passed to only C files.
CFLAGS_C_Debug := 

# Flags passed to only C++ files.
CFLAGS_CC_Debug := -fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare

INCS_Debug := -Isrc \
	-I. \
	-Isrc/video_engine/test/auto_test/interface \
	-Isrc/video_engine/test/auto_test/helpers \
	-Isrc/video_engine/test/auto_test/primitives \
	-Isrc/video_engine/include \
	-Isrc/video_engine \
	-Isrc/modules/video_coding/codecs/interface \
	-Isrc/common_video/interface \
	-Itest \
	-Isrc/system_wrappers/interface \
	-Isrc/modules/video_render/main/interface \
	-Isrc/modules/interface \
	-Isrc/modules/video_capture/main/interface \
	-Isrc/common_video/libyuv/include \
	-Isrc/voice_engine/main/interface \
	-Itesting/gtest/include \
	-Ithird_party/google-gflags/gen/arch/linux/x64/include \
	-Ithird_party/google-gflags/src

DEFS_Release := '-D_FILE_OFFSET_BITS=64' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_NSS=1' \
	'-DTOOLKIT_USES_GTK=1' \
	'-DGTK_DISABLE_SINGLE_INCLUDES=1' \
	'-DENABLE_REMOTING=1' \
	'-DENABLE_P2P_APIS=1' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DENABLE_INPUT_SPEECH' \
	'-DENABLE_NOTIFICATIONS' \
	'-DENABLE_GPU=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DUSE_SKIA=1' \
	'-DENABLE_REGISTER_PROTOCOL_HANDLER=1' \
	'-DENABLE_WEB_INTENTS=1' \
	'-DENABLE_PLUGIN_INSTALLATION=1' \
	'-DWEBRTC_TARGET_PC' \
	'-DWEBRTC_LINUX' \
	'-DWEBRTC_THREAD_RR' \
	'-DUNIT_TEST' \
	'-DGTEST_HAS_RTTI=0' \
	'-DGFLAGS_DLL_DECL=' \
	'-DGFLAGS_DLL_DECLARE_FLAG=' \
	'-DGFLAGS_DLL_DEFINE_FLAG=' \
	'-D__STDC_FORMAT_MACROS' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=0'

# Flags passed to all source files.
CFLAGS_Release := -Werror \
	-pthread \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wextra \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-O2 \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections

# Flags passed to only C files.
CFLAGS_C_Release := 

# Flags passed to only C++ files.
CFLAGS_CC_Release := -fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare

INCS_Release := -Isrc \
	-I. \
	-Isrc/video_engine/test/auto_test/interface \
	-Isrc/video_engine/test/auto_test/helpers \
	-Isrc/video_engine/test/auto_test/primitives \
	-Isrc/video_engine/include \
	-Isrc/video_engine \
	-Isrc/modules/video_coding/codecs/interface \
	-Isrc/common_video/interface \
	-Itest \
	-Isrc/system_wrappers/interface \
	-Isrc/modules/video_render/main/interface \
	-Isrc/modules/interface \
	-Isrc/modules/video_capture/main/interface \
	-Isrc/common_video/libyuv/include \
	-Isrc/voice_engine/main/interface \
	-Itesting/gtest/include \
	-Ithird_party/google-gflags/gen/arch/linux/x64/include \
	-Ithird_party/google-gflags/src

OBJS := $(obj).target/$(TARGET)/src/video_engine/test/auto_test/helpers/vie_fake_camera.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/helpers/vie_file_capture_device.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/helpers/vie_to_file_renderer.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/helpers/vie_window_creator.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/automated/vie_api_integration_test.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/automated/vie_extended_integration_test.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/automated/vie_integration_test_base.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/automated/vie_standard_integration_test.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/automated/vie_video_verification_test.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/primitives/base_primitives.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/primitives/codec_primitives.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/primitives/framedrop_primitives.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/primitives/general_primitives.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/source/tb_capture_device.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/source/tb_external_transport.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/source/tb_I420_codec.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/source/tb_interfaces.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/source/tb_video_channel.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/source/vie_autotest.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/source/vie_autotest_base.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/source/vie_autotest_capture.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/source/vie_autotest_codec.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/source/vie_autotest_encryption.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/source/vie_autotest_file.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/source/vie_autotest_image_process.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/source/vie_autotest_loopback.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/source/vie_autotest_main.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/source/vie_autotest_network.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/source/vie_autotest_render.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/source/vie_autotest_rtp_rtcp.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/source/vie_autotest_custom_call.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/source/vie_autotest_simulcast.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/source/vie_file_based_comparison_tests.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/source/vie_autotest_linux.o \
	$(obj).target/$(TARGET)/src/video_engine/test/auto_test/source/vie_window_manager_factory_linux.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/src/system_wrappers/source/libsystem_wrappers.a $(obj).target/src/modules/libvideo_render_module.a $(obj).target/src/modules/libvideo_capture_module.a $(obj).target/src/voice_engine/libvoice_engine_core.a $(obj).target/testing/libgtest.a $(obj).target/third_party/google-gflags/libgoogle-gflags.a $(obj).target/test/libmetrics.a $(obj).target/test/libtest_support.a $(obj).target/src/video_engine/libvideo_engine_core.a $(obj).target/src/modules/libwebrtc_utility.a $(obj).target/src/modules/libaudio_coding_module.a $(obj).target/src/modules/libCNG.a $(obj).target/src/common_audio/libsignal_processing.a $(obj).target/src/modules/libG711.a $(obj).target/src/modules/libG722.a $(obj).target/src/modules/libiLBC.a $(obj).target/src/modules/libiSAC.a $(obj).target/src/modules/libiSACFix.a $(obj).target/src/modules/libPCM16B.a $(obj).target/src/modules/libNetEq.a $(obj).target/src/common_audio/libresampler.a $(obj).target/src/common_audio/libvad.a $(obj).target/src/modules/libwebrtc_video_coding.a $(obj).target/src/modules/libwebrtc_i420.a $(obj).target/src/modules/libwebrtc_vp8.a $(obj).target/src/common_video/libwebrtc_libyuv.a $(obj).target/third_party/libyuv/libyuv.a $(obj).target/third_party/libvpx/libvpx.a $(obj).target/src/modules/libaudio_conference_mixer.a $(obj).target/src/modules/libaudio_processing.a $(obj).target/src/modules/libaec.a $(obj).target/src/modules/libapm_util.a $(obj).target/src/modules/libaec_sse2.a $(obj).target/src/modules/libaecm.a $(obj).target/src/modules/libagc.a $(obj).target/src/modules/libns.a $(obj).target/src/modules/libaudioproc_debug_proto.a $(obj).target/third_party/protobuf/libprotobuf_lite.a $(obj).target/src/modules/libaudio_device.a $(obj).target/src/modules/libmedia_file.a $(obj).target/src/modules/librtp_rtcp.a $(obj).target/src/modules/libudp_transport.a $(obj).target/testing/gtest_prod.stamp $(obj).target/testing/libgmock.a $(obj).target/src/common_video/libwebrtc_jpeg.a $(obj).target/third_party/libjpeg_turbo/libjpeg_turbo.a $(obj).target/src/modules/libvideo_processing.a $(obj).target/src/modules/libvideo_processing_sse2.a

# Make sure our actions/rules run before any of us.
$(OBJS): | $(vie_auto_test_copies)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
# Build our special outputs first.
$(builddir)/vie_auto_test: | $(vie_auto_test_copies)

# Preserve order dependency of special output on deps.
$(vie_auto_test_copies): | $(obj).target/src/system_wrappers/source/libsystem_wrappers.a $(obj).target/src/modules/libvideo_render_module.a $(obj).target/src/modules/libvideo_capture_module.a $(obj).target/src/voice_engine/libvoice_engine_core.a $(obj).target/testing/libgtest.a $(obj).target/third_party/google-gflags/libgoogle-gflags.a $(obj).target/test/libmetrics.a $(obj).target/test/libtest_support.a $(obj).target/src/video_engine/libvideo_engine_core.a $(obj).target/src/modules/libwebrtc_utility.a $(obj).target/src/modules/libaudio_coding_module.a $(obj).target/src/modules/libCNG.a $(obj).target/src/common_audio/libsignal_processing.a $(obj).target/src/modules/libG711.a $(obj).target/src/modules/libG722.a $(obj).target/src/modules/libiLBC.a $(obj).target/src/modules/libiSAC.a $(obj).target/src/modules/libiSACFix.a $(obj).target/src/modules/libPCM16B.a $(obj).target/src/modules/libNetEq.a $(obj).target/src/common_audio/libresampler.a $(obj).target/src/common_audio/libvad.a $(obj).target/src/modules/libwebrtc_video_coding.a $(obj).target/src/modules/libwebrtc_i420.a $(obj).target/src/modules/libwebrtc_vp8.a $(obj).target/src/common_video/libwebrtc_libyuv.a $(obj).target/third_party/libyuv/libyuv.a $(obj).target/third_party/libvpx/libvpx.a $(obj).target/src/modules/libaudio_conference_mixer.a $(obj).target/src/modules/libaudio_processing.a $(obj).target/src/modules/libaec.a $(obj).target/src/modules/libapm_util.a $(obj).target/src/modules/libaec_sse2.a $(obj).target/src/modules/libaecm.a $(obj).target/src/modules/libagc.a $(obj).target/src/modules/libns.a $(obj).target/src/modules/libaudioproc_debug_proto.a $(obj).target/third_party/protobuf/libprotobuf_lite.a $(obj).target/src/modules/libaudio_device.a $(obj).target/src/modules/libmedia_file.a $(obj).target/src/modules/librtp_rtcp.a $(obj).target/src/modules/libudp_transport.a $(obj).target/testing/gtest_prod.stamp $(obj).target/testing/libgmock.a $(obj).target/src/common_video/libwebrtc_jpeg.a $(obj).target/third_party/libjpeg_turbo/libjpeg_turbo.a $(obj).target/src/modules/libvideo_processing.a $(obj).target/src/modules/libvideo_processing_sse2.a

LDFLAGS_Debug := -pthread \
	-Wl,-z,noexecstack \
	-fPIC \
	-B$(builddir)/../../third_party/gold

LDFLAGS_Release := -pthread \
	-Wl,-z,noexecstack \
	-fPIC \
	-B$(builddir)/../../third_party/gold \
	-Wl,-O1 \
	-Wl,--as-needed \
	-Wl,--gc-sections

LIBS := -lXext \
	-lX11 \
	-lrt \
	-ldl \
	-lasound \
	-lpulse

$(builddir)/vie_auto_test: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/vie_auto_test: LIBS := $(LIBS)
$(builddir)/vie_auto_test: LD_INPUTS := $(OBJS) $(obj).target/src/system_wrappers/source/libsystem_wrappers.a $(obj).target/src/modules/libvideo_render_module.a $(obj).target/src/modules/libvideo_capture_module.a $(obj).target/src/voice_engine/libvoice_engine_core.a $(obj).target/testing/libgtest.a $(obj).target/third_party/google-gflags/libgoogle-gflags.a $(obj).target/test/libmetrics.a $(obj).target/test/libtest_support.a $(obj).target/src/video_engine/libvideo_engine_core.a $(obj).target/src/modules/libwebrtc_utility.a $(obj).target/src/modules/libaudio_coding_module.a $(obj).target/src/modules/libCNG.a $(obj).target/src/common_audio/libsignal_processing.a $(obj).target/src/modules/libG711.a $(obj).target/src/modules/libG722.a $(obj).target/src/modules/libiLBC.a $(obj).target/src/modules/libiSAC.a $(obj).target/src/modules/libiSACFix.a $(obj).target/src/modules/libPCM16B.a $(obj).target/src/modules/libNetEq.a $(obj).target/src/common_audio/libresampler.a $(obj).target/src/common_audio/libvad.a $(obj).target/src/modules/libwebrtc_video_coding.a $(obj).target/src/modules/libwebrtc_i420.a $(obj).target/src/modules/libwebrtc_vp8.a $(obj).target/src/common_video/libwebrtc_libyuv.a $(obj).target/third_party/libyuv/libyuv.a $(obj).target/third_party/libvpx/libvpx.a $(obj).target/src/modules/libaudio_conference_mixer.a $(obj).target/src/modules/libaudio_processing.a $(obj).target/src/modules/libaec.a $(obj).target/src/modules/libapm_util.a $(obj).target/src/modules/libaec_sse2.a $(obj).target/src/modules/libaecm.a $(obj).target/src/modules/libagc.a $(obj).target/src/modules/libns.a $(obj).target/src/modules/libaudioproc_debug_proto.a $(obj).target/third_party/protobuf/libprotobuf_lite.a $(obj).target/src/modules/libaudio_device.a $(obj).target/src/modules/libmedia_file.a $(obj).target/src/modules/librtp_rtcp.a $(obj).target/src/modules/libudp_transport.a $(obj).target/testing/libgmock.a $(obj).target/src/common_video/libwebrtc_jpeg.a $(obj).target/third_party/libjpeg_turbo/libjpeg_turbo.a $(obj).target/src/modules/libvideo_processing.a $(obj).target/src/modules/libvideo_processing_sse2.a
$(builddir)/vie_auto_test: TOOLSET := $(TOOLSET)
$(builddir)/vie_auto_test: $(OBJS) $(obj).target/src/system_wrappers/source/libsystem_wrappers.a $(obj).target/src/modules/libvideo_render_module.a $(obj).target/src/modules/libvideo_capture_module.a $(obj).target/src/voice_engine/libvoice_engine_core.a $(obj).target/testing/libgtest.a $(obj).target/third_party/google-gflags/libgoogle-gflags.a $(obj).target/test/libmetrics.a $(obj).target/test/libtest_support.a $(obj).target/src/video_engine/libvideo_engine_core.a $(obj).target/src/modules/libwebrtc_utility.a $(obj).target/src/modules/libaudio_coding_module.a $(obj).target/src/modules/libCNG.a $(obj).target/src/common_audio/libsignal_processing.a $(obj).target/src/modules/libG711.a $(obj).target/src/modules/libG722.a $(obj).target/src/modules/libiLBC.a $(obj).target/src/modules/libiSAC.a $(obj).target/src/modules/libiSACFix.a $(obj).target/src/modules/libPCM16B.a $(obj).target/src/modules/libNetEq.a $(obj).target/src/common_audio/libresampler.a $(obj).target/src/common_audio/libvad.a $(obj).target/src/modules/libwebrtc_video_coding.a $(obj).target/src/modules/libwebrtc_i420.a $(obj).target/src/modules/libwebrtc_vp8.a $(obj).target/src/common_video/libwebrtc_libyuv.a $(obj).target/third_party/libyuv/libyuv.a $(obj).target/third_party/libvpx/libvpx.a $(obj).target/src/modules/libaudio_conference_mixer.a $(obj).target/src/modules/libaudio_processing.a $(obj).target/src/modules/libaec.a $(obj).target/src/modules/libapm_util.a $(obj).target/src/modules/libaec_sse2.a $(obj).target/src/modules/libaecm.a $(obj).target/src/modules/libagc.a $(obj).target/src/modules/libns.a $(obj).target/src/modules/libaudioproc_debug_proto.a $(obj).target/third_party/protobuf/libprotobuf_lite.a $(obj).target/src/modules/libaudio_device.a $(obj).target/src/modules/libmedia_file.a $(obj).target/src/modules/librtp_rtcp.a $(obj).target/src/modules/libudp_transport.a $(obj).target/testing/libgmock.a $(obj).target/src/common_video/libwebrtc_jpeg.a $(obj).target/third_party/libjpeg_turbo/libjpeg_turbo.a $(obj).target/src/modules/libvideo_processing.a $(obj).target/src/modules/libvideo_processing_sse2.a FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/vie_auto_test
# Add target alias
.PHONY: vie_auto_test
vie_auto_test: $(builddir)/vie_auto_test
