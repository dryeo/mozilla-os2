/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

#ifndef nsDesktopNotification_h
#define nsDesktopNotification_h

#ifdef MOZ_IPC
#include "PCOMContentPermissionRequestChild.h"
#endif

#ifndef MOZ_IPC
#include "nsDOMClassInfo.h"
#else
#include "nsDOMClassInfoID.h"
#include "nsIPrincipal.h"
#endif
#include "nsIJSContextStack.h"

#include "nsIAlertsService.h"

#include "nsIDOMDesktopNotification.h"
#include "nsIDOMEventTarget.h"
#include "nsIContentPermissionPrompt.h"

#include "nsIObserver.h"
#include "nsString.h"
#include "nsWeakPtr.h"
#include "nsCycleCollectionParticipant.h"
#include "nsIDOMWindow.h"
#include "nsThreadUtils.h"

#include "nsDOMEventTargetHelper.h"
#include "nsIDOMEvent.h"
#include "nsIDocument.h"

class AlertServiceObserver;

/*
 * nsDesktopNotificationCenter
 * Object hangs off of the navigator object and hands out nsDOMDesktopNotification objects
 */
class nsDesktopNotificationCenter : public nsIDOMDesktopNotificationCenter
{
public:
  NS_DECL_ISUPPORTS
  NS_DECL_NSIDOMDESKTOPNOTIFICATIONCENTER

  nsDesktopNotificationCenter(nsPIDOMWindow *aWindow)
  {
    mOwner = aWindow;

    // Grab the uri of the document
    nsCOMPtr<nsIDOMDocument> domdoc;
    mOwner->GetDocument(getter_AddRefs(domdoc));
    nsCOMPtr<nsIDocument> doc = do_QueryInterface(domdoc);
    mPrincipal = doc->NodePrincipal();
  }

  virtual ~nsDesktopNotificationCenter()
  {
  }

  void Shutdown() {
    mOwner = nullptr;
  }

private:
  nsCOMPtr<nsPIDOMWindow> mOwner;
  nsCOMPtr<nsIPrincipal> mPrincipal;
};


class nsDOMDesktopNotification : public nsDOMEventTargetHelper,
                                 public nsIDOMDesktopNotification
{
  friend class nsDesktopNotificationRequest;

public:
  NS_DECL_ISUPPORTS_INHERITED
  NS_DECL_CYCLE_COLLECTION_CLASS_INHERITED(nsDOMDesktopNotification,nsDOMEventTargetHelper)
  NS_DECL_NSIDOMDESKTOPNOTIFICATION

  nsDOMDesktopNotification(const nsAString & title,
                           const nsAString & description,
                           const nsAString & iconURL,
                           nsPIDOMWindow *aWindow,
                           nsIPrincipal* principal);

  virtual ~nsDOMDesktopNotification();

  /*
   * PostDesktopNotification
   * Uses alert service to display a notification
   */
  nsresult PostDesktopNotification();

  nsresult SetAllow(bool aAllow);

  /*
   * Creates and dispatches a dom event of type aName
   */
  void DispatchNotificationEvent(const nsString& aName);

  void HandleAlertServiceNotification(const char *aTopic);

protected:

  nsString mTitle;
  nsString mDescription;
  nsString mIconURL;

  nsRefPtr<nsDOMEventListenerWrapper> mOnClickCallback;
  nsRefPtr<nsDOMEventListenerWrapper> mOnCloseCallback;

  nsRefPtr<AlertServiceObserver> mObserver;
  nsCOMPtr<nsIPrincipal> mPrincipal;
  bool mAllow;
  bool mShowHasBeenCalled;
};

/*
 * Simple Request
 */
class nsDesktopNotificationRequest : public nsIContentPermissionRequest,
                                     public nsRunnable
#ifdef MOZ_IPC
 , public PCOMContentPermissionRequestChild
#endif

{
 public:
  NS_DECL_ISUPPORTS
  NS_DECL_NSICONTENTPERMISSIONREQUEST

  nsDesktopNotificationRequest(nsDOMDesktopNotification* notification)
    : mDesktopNotification(notification) {}

  NS_IMETHOD Run()
  {
    nsCOMPtr<nsIContentPermissionPrompt> prompt =
      do_GetService(NS_CONTENT_PERMISSION_PROMPT_CONTRACTID);
    if (prompt) {
      prompt->Prompt(this);
    }
    return NS_OK;
  }

  ~nsDesktopNotificationRequest()
  {
  }

#ifdef MOZ_IPC

 bool Recv__delete__(const bool& allow)
 {
   if (allow)
     (void) Allow();
   else
     (void) Cancel();
   return true;
 }
 void IPDLRelease() { Release(); }
#endif

  nsRefPtr<nsDOMDesktopNotification> mDesktopNotification;
};

class AlertServiceObserver: public nsIObserver
{
 public:
  NS_DECL_ISUPPORTS
    
    AlertServiceObserver(nsDOMDesktopNotification* notification)
    : mNotification(notification) {}
  
  virtual ~AlertServiceObserver() {}

  void Disconnect() { mNotification = nullptr; }

  NS_IMETHODIMP
  Observe(nsISupports *aSubject,
          const char *aTopic,
          const PRUnichar *aData)
  {
    // forward to parent
    if (mNotification)
      mNotification->HandleAlertServiceNotification(aTopic);
    return NS_OK;
  };
  
 private:
  nsDOMDesktopNotification* mNotification;
};

#endif /* nsDesktopNotification_h */
