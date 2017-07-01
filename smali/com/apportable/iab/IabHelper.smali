.class public Lcom/apportable/iab/IabHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/iab/IabHelper$OnConsumeFinishedListener;,
        Lcom/apportable/iab/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/apportable/iab/IabHelper$OnIabSetupFinishedListener;,
        Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mPurchaseListener:Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput-boolean v1, p0, Lcom/apportable/iab/IabHelper;->mDebugLog:Z

    #@6
    const-string v0, "IabHelper"

    #@8
    iput-object v0, p0, Lcom/apportable/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    #@a
    iput-boolean v1, p0, Lcom/apportable/iab/IabHelper;->mSetupDone:Z

    #@c
    iput-boolean v1, p0, Lcom/apportable/iab/IabHelper;->mSubscriptionsSupported:Z

    #@e
    iput-boolean v1, p0, Lcom/apportable/iab/IabHelper;->mAsyncInProgress:Z

    #@10
    const-string v0, ""

    #@12
    iput-object v0, p0, Lcom/apportable/iab/IabHelper;->mAsyncOperation:Ljava/lang/String;

    #@14
    const/4 v0, 0x0

    #@15
    iput-object v0, p0, Lcom/apportable/iab/IabHelper;->mSignatureBase64:Ljava/lang/String;

    #@17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lcom/apportable/iab/IabHelper;->mContext:Landroid/content/Context;

    #@1d
    iput-object p2, p0, Lcom/apportable/iab/IabHelper;->mSignatureBase64:Ljava/lang/String;

    #@1f
    const-string v0, "IAB helper created."

    #@21
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@24
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .registers 4

    #@0
    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    #@2
    const-string v1, "/"

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    const-string v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    #@a
    const-string v2, "/"

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const/16 v2, -0x3e8

    #@12
    if-gt p0, v2, :cond_36

    #@14
    rsub-int v0, p0, -0x3e8

    #@16
    if-ltz v0, :cond_1e

    #@18
    array-length v2, v1

    #@19
    if-ge v0, v2, :cond_1e

    #@1b
    aget-object v0, v1, v0

    #@1d
    :goto_1d
    return-object v0

    #@1e
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    const-string v1, ":Unknown IAB Helper Error"

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    goto :goto_1d

    #@36
    :cond_36
    if-ltz p0, :cond_3b

    #@38
    array-length v1, v0

    #@39
    if-lt p0, v1, :cond_53

    #@3b
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    const-string v1, ":Unknown"

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    goto :goto_1d

    #@53
    :cond_53
    aget-object v0, v0, p0

    #@55
    goto :goto_1d
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .registers 5

    #@0
    iget-boolean v0, p0, Lcom/apportable/iab/IabHelper;->mSetupDone:Z

    #@2
    if-nez v0, :cond_39

    #@4
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string v1, "Illegal state for operation ("

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string v1, "): IAB helper is not set up."

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logError(Ljava/lang/String;)V

    #@20
    new-instance v0, Ljava/lang/IllegalStateException;

    #@22
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@38
    throw v0

    #@39
    :cond_39
    return-void
.end method

.method public consume(Lcom/apportable/iab/Purchase;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apportable/iab/IabException;
        }
    .end annotation

    #@0
    const-string v0, "consume"

    #@2
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    #@5
    iget-object v0, p1, Lcom/apportable/iab/Purchase;->mItemType:Ljava/lang/String;

    #@7
    const-string v1, "inapp"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_32

    #@f
    new-instance v0, Lcom/apportable/iab/IabException;

    #@11
    const/16 v1, -0x3f2

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string v3, "Items of type \'"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    iget-object v3, p1, Lcom/apportable/iab/Purchase;->mItemType:Ljava/lang/String;

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    const-string v3, "\' can\'t be consumed."

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-direct {v0, v1, v2}, Lcom/apportable/iab/IabException;-><init>(ILjava/lang/String;)V

    #@31
    throw v0

    #@32
    :cond_32
    :try_start_32
    invoke-virtual {p1}, Lcom/apportable/iab/Purchase;->getToken()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {p1}, Lcom/apportable/iab/Purchase;->getSku()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    if-eqz v0, :cond_44

    #@3c
    const-string v2, ""

    #@3e
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v2

    #@42
    if-eqz v2, :cond_a1

    #@44
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string v2, "Can\'t consume "

    #@4b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    const-string v2, ". No token."

    #@55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logError(Ljava/lang/String;)V

    #@60
    new-instance v0, Lcom/apportable/iab/IabException;

    #@62
    new-instance v2, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const/16 v3, -0x3ef

    #@69
    const-string v4, "PurchaseInfo is missing token for sku: "

    #@6b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    const-string v2, " "

    #@75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v1

    #@81
    invoke-direct {v0, v3, v1}, Lcom/apportable/iab/IabException;-><init>(ILjava/lang/String;)V

    #@84
    throw v0
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_85} :catch_85

    #@85
    :catch_85
    move-exception v0

    #@86
    new-instance v1, Lcom/apportable/iab/IabException;

    #@88
    const/16 v2, -0x3e9

    #@8a
    new-instance v3, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string v4, "Remote exception while consuming. PurchaseInfo: "

    #@91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v3

    #@95
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v3

    #@99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v3

    #@9d
    invoke-direct {v1, v2, v3, v0}, Lcom/apportable/iab/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    #@a0
    throw v1

    #@a1
    :cond_a1
    :try_start_a1
    iget-object v2, p0, Lcom/apportable/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    #@a3
    if-nez v2, :cond_ca

    #@a5
    const-string v0, "Billing service unavailable, try again later"

    #@a7
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@aa
    new-instance v0, Lcom/apportable/iab/IabException;

    #@ac
    new-instance v2, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const/4 v3, 0x3

    #@b2
    const-string v4, "Error consuming sku "

    #@b4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v2

    #@b8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v1

    #@bc
    const-string v2, " billing service unavailable, try again later"

    #@be
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v1

    #@c2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v1

    #@c6
    invoke-direct {v0, v3, v1}, Lcom/apportable/iab/IabException;-><init>(ILjava/lang/String;)V

    #@c9
    throw v0

    #@ca
    :cond_ca
    new-instance v2, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string v3, "Consuming sku: "

    #@d1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v2

    #@d5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v2

    #@d9
    const-string v3, ", token: "

    #@db
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v2

    #@df
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v2

    #@e3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v2

    #@e7
    invoke-virtual {p0, v2}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@ea
    iget-object v2, p0, Lcom/apportable/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    #@ec
    const/4 v3, 0x3

    #@ed
    iget-object v4, p0, Lcom/apportable/iab/IabHelper;->mContext:Landroid/content/Context;

    #@ef
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@f2
    move-result-object v4

    #@f3
    invoke-interface {v2, v3, v4, v0}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    #@f6
    move-result v0

    #@f7
    if-nez v0, :cond_110

    #@f9
    new-instance v0, Ljava/lang/StringBuilder;

    #@fb
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@fe
    const-string v2, "Successfully consumed sku: "

    #@100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v0

    #@104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v0

    #@108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v0

    #@10c
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@10f
    return-void

    #@110
    :cond_110
    new-instance v2, Ljava/lang/StringBuilder;

    #@112
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@115
    const-string v3, "Error consuming consuming sku "

    #@117
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v2

    #@11b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v2

    #@11f
    const-string v3, ". "

    #@121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v2

    #@125
    invoke-static {v0}, Lcom/apportable/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    #@128
    move-result-object v3

    #@129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v2

    #@12d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@130
    move-result-object v2

    #@131
    invoke-virtual {p0, v2}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@134
    new-instance v2, Lcom/apportable/iab/IabException;

    #@136
    new-instance v3, Ljava/lang/StringBuilder;

    #@138
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13b
    const-string v4, "Error consuming sku "

    #@13d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v3

    #@141
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v1

    #@145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@148
    move-result-object v1

    #@149
    invoke-direct {v2, v0, v1}, Lcom/apportable/iab/IabException;-><init>(ILjava/lang/String;)V

    #@14c
    throw v2
    :try_end_14d
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_14d} :catch_85
.end method

.method public consume(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apportable/iab/IabException;
        }
    .end annotation

    #@0
    const-string v0, "consume"

    #@2
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    #@5
    if-eqz p1, :cond_f

    #@7
    :try_start_7
    const-string v0, ""

    #@9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_3a

    #@f
    :cond_f
    const-string v0, "Can\'t consume. No token."

    #@11
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logError(Ljava/lang/String;)V

    #@14
    new-instance v0, Lcom/apportable/iab/IabException;

    #@16
    const/16 v1, -0x3ef

    #@18
    const-string v2, "Token missing"

    #@1a
    invoke-direct {v0, v1, v2}, Lcom/apportable/iab/IabException;-><init>(ILjava/lang/String;)V

    #@1d
    throw v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1e} :catch_1e

    #@1e
    :catch_1e
    move-exception v0

    #@1f
    new-instance v1, Lcom/apportable/iab/IabException;

    #@21
    const/16 v2, -0x3e9

    #@23
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string v4, "Remote exception while consuming. PurchaseInfo token: "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-direct {v1, v2, v3, v0}, Lcom/apportable/iab/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    #@39
    throw v1

    #@3a
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/apportable/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    #@3c
    if-nez v0, :cond_63

    #@3e
    const-string v0, "Billing service unavailable, try again later"

    #@40
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@43
    new-instance v0, Lcom/apportable/iab/IabException;

    #@45
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const/4 v2, 0x3

    #@4b
    const-string v3, "Error consuming sku "

    #@4d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    const-string v3, " billing service unavailable, try again later"

    #@57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-direct {v0, v2, v1}, Lcom/apportable/iab/IabException;-><init>(ILjava/lang/String;)V

    #@62
    throw v0

    #@63
    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string v1, "Consuming token: "

    #@6a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@79
    iget-object v0, p0, Lcom/apportable/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    #@7b
    const/4 v1, 0x3

    #@7c
    iget-object v2, p0, Lcom/apportable/iab/IabHelper;->mContext:Landroid/content/Context;

    #@7e
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@81
    move-result-object v2

    #@82
    invoke-interface {v0, v1, v2, p1}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    #@85
    move-result v0

    #@86
    if-nez v0, :cond_9f

    #@88
    new-instance v0, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string v1, "Successfully consumed token: "

    #@8f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v0

    #@93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v0

    #@97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v0

    #@9b
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@9e
    return-void

    #@9f
    :cond_9f
    new-instance v1, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string v2, "Error consuming consuming "

    #@a6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v1

    #@aa
    invoke-static {v0}, Lcom/apportable/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    #@ad
    move-result-object v2

    #@ae
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v1

    #@b2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v1

    #@b6
    invoke-virtual {p0, v1}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@b9
    new-instance v1, Lcom/apportable/iab/IabException;

    #@bb
    new-instance v2, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string v3, "Error consuming "

    #@c2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v2

    #@c6
    invoke-static {v0}, Lcom/apportable/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    #@c9
    move-result-object v3

    #@ca
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v2

    #@ce
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v2

    #@d2
    invoke-direct {v1, v0, v2}, Lcom/apportable/iab/IabException;-><init>(ILjava/lang/String;)V

    #@d5
    throw v1
    :try_end_d6
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_d6} :catch_1e
.end method

.method public consumeAsync(Lcom/apportable/iab/Purchase;Lcom/apportable/iab/IabHelper$OnConsumeFinishedListener;)V
    .registers 5

    #@0
    const-string v0, "consume"

    #@2
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    #@5
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    const/4 v1, 0x0

    #@e
    invoke-virtual {p0, v0, p2, v1}, Lcom/apportable/iab/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/apportable/iab/IabHelper$OnConsumeFinishedListener;Lcom/apportable/iab/IabHelper$OnConsumeMultiFinishedListener;)V

    #@11
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/apportable/iab/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/apportable/iab/Purchase;",
            ">;",
            "Lcom/apportable/iab/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    #@0
    const-string v0, "consume"

    #@2
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    #@5
    const/4 v0, 0x0

    #@6
    invoke-virtual {p0, p1, v0, p2}, Lcom/apportable/iab/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/apportable/iab/IabHelper$OnConsumeFinishedListener;Lcom/apportable/iab/IabHelper$OnConsumeMultiFinishedListener;)V

    #@9
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/apportable/iab/IabHelper$OnConsumeFinishedListener;Lcom/apportable/iab/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/apportable/iab/Purchase;",
            ">;",
            "Lcom/apportable/iab/IabHelper$OnConsumeFinishedListener;",
            "Lcom/apportable/iab/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    #@0
    new-instance v4, Landroid/os/Handler;

    #@2
    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    #@5
    const-string v0, "consume"

    #@7
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    #@a
    new-instance v6, Ljava/lang/Thread;

    #@c
    new-instance v0, Lcom/apportable/iab/IabHelper$4;

    #@e
    move-object v1, p0

    #@f
    move-object v2, p1

    #@10
    move-object v3, p2

    #@11
    move-object v5, p3

    #@12
    invoke-direct/range {v0 .. v5}, Lcom/apportable/iab/IabHelper$4;-><init>(Lcom/apportable/iab/IabHelper;Ljava/util/List;Lcom/apportable/iab/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/apportable/iab/IabHelper$OnConsumeMultiFinishedListener;)V

    #@15
    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@18
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    #@1b
    return-void
.end method

.method public dispose()V
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    const-string v0, "Disposing."

    #@3
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@6
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lcom/apportable/iab/IabHelper;->mSetupDone:Z

    #@9
    iget-object v0, p0, Lcom/apportable/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    #@b
    if-eqz v0, :cond_23

    #@d
    const-string v0, "Unbinding from service."

    #@f
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@12
    iget-object v0, p0, Lcom/apportable/iab/IabHelper;->mContext:Landroid/content/Context;

    #@14
    if-eqz v0, :cond_1d

    #@16
    iget-object v0, p0, Lcom/apportable/iab/IabHelper;->mContext:Landroid/content/Context;

    #@18
    iget-object v1, p0, Lcom/apportable/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    #@1a
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@1d
    :cond_1d
    iput-object v2, p0, Lcom/apportable/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    #@1f
    iput-object v2, p0, Lcom/apportable/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    #@21
    iput-object v2, p0, Lcom/apportable/iab/IabHelper;->mPurchaseListener:Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;

    #@23
    :cond_23
    return-void
.end method

.method public enableDebugLogging(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/apportable/iab/IabHelper;->mDebugLog:Z

    #@2
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .registers 3

    #@0
    iput-boolean p1, p0, Lcom/apportable/iab/IabHelper;->mDebugLog:Z

    #@2
    iput-object p2, p0, Lcom/apportable/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    #@4
    return-void
.end method

.method flagEndAsync()V
    .registers 1

    #@0
    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .registers 2

    #@0
    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .registers 6

    #@0
    const-string v0, "RESPONSE_CODE"

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_f

    #@8
    const-string v0, "Bundle with null response code, assuming OK (known issue)"

    #@a
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@d
    const/4 v0, 0x0

    #@e
    :goto_e
    return v0

    #@f
    :cond_f
    instance-of v1, v0, Ljava/lang/Integer;

    #@11
    if-eqz v1, :cond_1a

    #@13
    check-cast v0, Ljava/lang/Integer;

    #@15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@18
    move-result v0

    #@19
    goto :goto_e

    #@1a
    :cond_1a
    instance-of v1, v0, Ljava/lang/Long;

    #@1c
    if-eqz v1, :cond_26

    #@1e
    check-cast v0, Ljava/lang/Long;

    #@20
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@23
    move-result-wide v0

    #@24
    long-to-int v0, v0

    #@25
    goto :goto_e

    #@26
    :cond_26
    const-string v1, "Unexpected type for bundle response code."

    #@28
    invoke-virtual {p0, v1}, Lcom/apportable/iab/IabHelper;->logError(Ljava/lang/String;)V

    #@2b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {p0, v1}, Lcom/apportable/iab/IabHelper;->logError(Ljava/lang/String;)V

    #@36
    new-instance v1, Ljava/lang/RuntimeException;

    #@38
    new-instance v2, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string v3, "Unexpected type for bundle response code: "

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@56
    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .registers 6

    #@0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string v1, "RESPONSE_CODE"

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_13

    #@c
    const-string v0, "Intent with no response code, assuming OK (known issue)"

    #@e
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logError(Ljava/lang/String;)V

    #@11
    const/4 v0, 0x0

    #@12
    :goto_12
    return v0

    #@13
    :cond_13
    instance-of v1, v0, Ljava/lang/Integer;

    #@15
    if-eqz v1, :cond_1e

    #@17
    check-cast v0, Ljava/lang/Integer;

    #@19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1c
    move-result v0

    #@1d
    goto :goto_12

    #@1e
    :cond_1e
    instance-of v1, v0, Ljava/lang/Long;

    #@20
    if-eqz v1, :cond_2a

    #@22
    check-cast v0, Ljava/lang/Long;

    #@24
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@27
    move-result-wide v0

    #@28
    long-to-int v0, v0

    #@29
    goto :goto_12

    #@2a
    :cond_2a
    const-string v1, "Unexpected type for intent response code."

    #@2c
    invoke-virtual {p0, v1}, Lcom/apportable/iab/IabHelper;->logError(Ljava/lang/String;)V

    #@2f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {p0, v1}, Lcom/apportable/iab/IabHelper;->logError(Ljava/lang/String;)V

    #@3a
    new-instance v1, Ljava/lang/RuntimeException;

    #@3c
    new-instance v2, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string v3, "Unexpected type for intent response code: "

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .registers 13

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    const/16 v8, -0x3ea

    #@4
    const/4 v0, 0x1

    #@5
    const/4 v7, 0x0

    #@6
    iget v2, p0, Lcom/apportable/iab/IabHelper;->mRequestCode:I

    #@8
    if-eq p1, v2, :cond_c

    #@a
    move v0, v1

    #@b
    :cond_b
    :goto_b
    return v0

    #@c
    :cond_c
    const-string v2, "handleActivityResult"

    #@e
    invoke-virtual {p0, v2}, Lcom/apportable/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    #@11
    invoke-virtual {p0}, Lcom/apportable/iab/IabHelper;->flagEndAsync()V

    #@14
    if-nez p3, :cond_2c

    #@16
    const-string v1, "Null data in IAB activity result."

    #@18
    invoke-virtual {p0, v1}, Lcom/apportable/iab/IabHelper;->logError(Ljava/lang/String;)V

    #@1b
    new-instance v1, Lcom/apportable/iab/IabResult;

    #@1d
    const-string v2, "Null data in IAB result"

    #@1f
    invoke-direct {v1, v8, v2}, Lcom/apportable/iab/IabResult;-><init>(ILjava/lang/String;)V

    #@22
    iget-object v2, p0, Lcom/apportable/iab/IabHelper;->mPurchaseListener:Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;

    #@24
    if-eqz v2, :cond_b

    #@26
    iget-object v2, p0, Lcom/apportable/iab/IabHelper;->mPurchaseListener:Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;

    #@28
    invoke-interface {v2, v1, v7}, Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/apportable/iab/IabResult;Lcom/apportable/iab/Purchase;)V

    #@2b
    goto :goto_b

    #@2c
    :cond_2c
    invoke-virtual {p0, p3}, Lcom/apportable/iab/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    #@2f
    move-result v2

    #@30
    const-string v3, "INAPP_PURCHASE_DATA"

    #@32
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    const-string v4, "INAPP_DATA_SIGNATURE"

    #@38
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    if-ne p2, v5, :cond_15e

    #@3e
    if-nez v2, :cond_15e

    #@40
    const-string v2, "Successful resultcode from purchase activity."

    #@42
    invoke-virtual {p0, v2}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@45
    new-instance v2, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string v5, "Purchase data: "

    #@4c
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {p0, v2}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@5b
    new-instance v2, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string v5, "Data signature: "

    #@62
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {p0, v2}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@71
    new-instance v2, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string v5, "Extras: "

    #@78
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@7f
    move-result-object v5

    #@80
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v2

    #@88
    invoke-virtual {p0, v2}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@8b
    new-instance v2, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string v5, "Expected item type: "

    #@92
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v2

    #@96
    iget-object v5, p0, Lcom/apportable/iab/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    #@98
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v2

    #@9c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v2

    #@a0
    invoke-virtual {p0, v2}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@a3
    if-eqz v3, :cond_a7

    #@a5
    if-nez v4, :cond_de

    #@a7
    :cond_a7
    const-string v1, "BUG: either purchaseData or dataSignature is null."

    #@a9
    invoke-virtual {p0, v1}, Lcom/apportable/iab/IabHelper;->logError(Ljava/lang/String;)V

    #@ac
    new-instance v1, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string v2, "Extras: "

    #@b3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v1

    #@b7
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@ba
    move-result-object v2

    #@bb
    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    #@be
    move-result-object v2

    #@bf
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v1

    #@c3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v1

    #@c7
    invoke-virtual {p0, v1}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@ca
    new-instance v1, Lcom/apportable/iab/IabResult;

    #@cc
    const/16 v2, -0x3f0

    #@ce
    const-string v3, "IAB returned null purchaseData or dataSignature"

    #@d0
    invoke-direct {v1, v2, v3}, Lcom/apportable/iab/IabResult;-><init>(ILjava/lang/String;)V

    #@d3
    iget-object v2, p0, Lcom/apportable/iab/IabHelper;->mPurchaseListener:Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;

    #@d5
    if-eqz v2, :cond_b

    #@d7
    iget-object v2, p0, Lcom/apportable/iab/IabHelper;->mPurchaseListener:Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;

    #@d9
    invoke-interface {v2, v1, v7}, Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/apportable/iab/IabResult;Lcom/apportable/iab/Purchase;)V

    #@dc
    goto/16 :goto_b

    #@de
    :cond_de
    :try_start_de
    new-instance v2, Lcom/apportable/iab/Purchase;

    #@e0
    iget-object v5, p0, Lcom/apportable/iab/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    #@e2
    invoke-direct {v2, v5, v3, v4}, Lcom/apportable/iab/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@e5
    invoke-virtual {v2}, Lcom/apportable/iab/Purchase;->getSku()Ljava/lang/String;

    #@e8
    move-result-object v5

    #@e9
    iget-object v6, p0, Lcom/apportable/iab/IabHelper;->mSignatureBase64:Ljava/lang/String;

    #@eb
    invoke-static {v6, v3, v4}, Lcom/apportable/iab/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@ee
    move-result v3

    #@ef
    if-nez v3, :cond_147

    #@f1
    new-instance v1, Ljava/lang/StringBuilder;

    #@f3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f6
    const-string v3, "Purchase signature verification FAILED for sku "

    #@f8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v1

    #@fc
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v1

    #@100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v1

    #@104
    invoke-virtual {p0, v1}, Lcom/apportable/iab/IabHelper;->logError(Ljava/lang/String;)V

    #@107
    new-instance v1, Lcom/apportable/iab/IabResult;

    #@109
    new-instance v3, Ljava/lang/StringBuilder;

    #@10b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10e
    const/16 v4, -0x3eb

    #@110
    const-string v6, "Signature verification failed for sku "

    #@112
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v3

    #@116
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v3

    #@11a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v3

    #@11e
    invoke-direct {v1, v4, v3}, Lcom/apportable/iab/IabResult;-><init>(ILjava/lang/String;)V

    #@121
    iget-object v3, p0, Lcom/apportable/iab/IabHelper;->mPurchaseListener:Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;

    #@123
    if-eqz v3, :cond_b

    #@125
    iget-object v3, p0, Lcom/apportable/iab/IabHelper;->mPurchaseListener:Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;

    #@127
    invoke-interface {v3, v1, v2}, Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/apportable/iab/IabResult;Lcom/apportable/iab/Purchase;)V
    :try_end_12a
    .catch Lorg/json/JSONException; {:try_start_de .. :try_end_12a} :catch_12c

    #@12a
    goto/16 :goto_b

    #@12c
    :catch_12c
    move-exception v1

    #@12d
    const-string v2, "Failed to parse purchase data."

    #@12f
    invoke-virtual {p0, v2}, Lcom/apportable/iab/IabHelper;->logError(Ljava/lang/String;)V

    #@132
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    #@135
    new-instance v1, Lcom/apportable/iab/IabResult;

    #@137
    const-string v2, "Failed to parse purchase data."

    #@139
    invoke-direct {v1, v8, v2}, Lcom/apportable/iab/IabResult;-><init>(ILjava/lang/String;)V

    #@13c
    iget-object v2, p0, Lcom/apportable/iab/IabHelper;->mPurchaseListener:Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;

    #@13e
    if-eqz v2, :cond_b

    #@140
    iget-object v2, p0, Lcom/apportable/iab/IabHelper;->mPurchaseListener:Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;

    #@142
    invoke-interface {v2, v1, v7}, Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/apportable/iab/IabResult;Lcom/apportable/iab/Purchase;)V

    #@145
    goto/16 :goto_b

    #@147
    :cond_147
    :try_start_147
    const-string v3, "Purchase signature successfully verified."

    #@149
    invoke-virtual {p0, v3}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_14c
    .catch Lorg/json/JSONException; {:try_start_147 .. :try_end_14c} :catch_12c

    #@14c
    iget-object v3, p0, Lcom/apportable/iab/IabHelper;->mPurchaseListener:Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;

    #@14e
    if-eqz v3, :cond_b

    #@150
    iget-object v3, p0, Lcom/apportable/iab/IabHelper;->mPurchaseListener:Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;

    #@152
    new-instance v4, Lcom/apportable/iab/IabResult;

    #@154
    const-string v5, "Success"

    #@156
    invoke-direct {v4, v1, v5}, Lcom/apportable/iab/IabResult;-><init>(ILjava/lang/String;)V

    #@159
    invoke-interface {v3, v4, v2}, Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/apportable/iab/IabResult;Lcom/apportable/iab/Purchase;)V

    #@15c
    goto/16 :goto_b

    #@15e
    :cond_15e
    if-ne p2, v5, :cond_18c

    #@160
    new-instance v1, Ljava/lang/StringBuilder;

    #@162
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@165
    const-string v3, "Result code was OK but in-app billing response was not OK: "

    #@167
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v1

    #@16b
    invoke-static {v2}, Lcom/apportable/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    #@16e
    move-result-object v3

    #@16f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@172
    move-result-object v1

    #@173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@176
    move-result-object v1

    #@177
    invoke-virtual {p0, v1}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@17a
    iget-object v1, p0, Lcom/apportable/iab/IabHelper;->mPurchaseListener:Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;

    #@17c
    if-eqz v1, :cond_b

    #@17e
    new-instance v1, Lcom/apportable/iab/IabResult;

    #@180
    const-string v3, "Problem purchashing item."

    #@182
    invoke-direct {v1, v2, v3}, Lcom/apportable/iab/IabResult;-><init>(ILjava/lang/String;)V

    #@185
    iget-object v2, p0, Lcom/apportable/iab/IabHelper;->mPurchaseListener:Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;

    #@187
    invoke-interface {v2, v1, v7}, Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/apportable/iab/IabResult;Lcom/apportable/iab/Purchase;)V

    #@18a
    goto/16 :goto_b

    #@18c
    :cond_18c
    if-nez p2, :cond_1bc

    #@18e
    new-instance v1, Ljava/lang/StringBuilder;

    #@190
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@193
    const-string v3, "Purchase canceled - Response: "

    #@195
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@198
    move-result-object v1

    #@199
    invoke-static {v2}, Lcom/apportable/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    #@19c
    move-result-object v2

    #@19d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v1

    #@1a1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a4
    move-result-object v1

    #@1a5
    invoke-virtual {p0, v1}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@1a8
    new-instance v1, Lcom/apportable/iab/IabResult;

    #@1aa
    const/16 v2, -0x3ed

    #@1ac
    const-string v3, "User canceled."

    #@1ae
    invoke-direct {v1, v2, v3}, Lcom/apportable/iab/IabResult;-><init>(ILjava/lang/String;)V

    #@1b1
    iget-object v2, p0, Lcom/apportable/iab/IabHelper;->mPurchaseListener:Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;

    #@1b3
    if-eqz v2, :cond_b

    #@1b5
    iget-object v2, p0, Lcom/apportable/iab/IabHelper;->mPurchaseListener:Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;

    #@1b7
    invoke-interface {v2, v1, v7}, Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/apportable/iab/IabResult;Lcom/apportable/iab/Purchase;)V

    #@1ba
    goto/16 :goto_b

    #@1bc
    :cond_1bc
    new-instance v1, Ljava/lang/StringBuilder;

    #@1be
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c1
    const-string v3, "Purchase failed. Result code: "

    #@1c3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v1

    #@1c7
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1ca
    move-result-object v3

    #@1cb
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ce
    move-result-object v1

    #@1cf
    const-string v3, ". Response: "

    #@1d1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d4
    move-result-object v1

    #@1d5
    invoke-static {v2}, Lcom/apportable/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    #@1d8
    move-result-object v2

    #@1d9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v1

    #@1dd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e0
    move-result-object v1

    #@1e1
    invoke-virtual {p0, v1}, Lcom/apportable/iab/IabHelper;->logError(Ljava/lang/String;)V

    #@1e4
    new-instance v1, Lcom/apportable/iab/IabResult;

    #@1e6
    const/16 v2, -0x3ee

    #@1e8
    const-string v3, "Unknown purchase response."

    #@1ea
    invoke-direct {v1, v2, v3}, Lcom/apportable/iab/IabResult;-><init>(ILjava/lang/String;)V

    #@1ed
    iget-object v2, p0, Lcom/apportable/iab/IabHelper;->mPurchaseListener:Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;

    #@1ef
    if-eqz v2, :cond_b

    #@1f1
    iget-object v2, p0, Lcom/apportable/iab/IabHelper;->mPurchaseListener:Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;

    #@1f3
    invoke-interface {v2, v1, v7}, Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/apportable/iab/IabResult;Lcom/apportable/iab/Purchase;)V

    #@1f6
    goto/16 :goto_b
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 11

    #@0
    const-string v5, ""

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move-object v4, p4

    #@7
    invoke-virtual/range {v0 .. v5}, Lcom/apportable/iab/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    #@a
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 13

    #@0
    const-string v3, "inapp"

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move v4, p3

    #@6
    move-object v5, p4

    #@7
    move-object v6, p5

    #@8
    invoke-virtual/range {v0 .. v6}, Lcom/apportable/iab/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    #@b
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 15

    #@0
    const/4 v7, 0x0

    #@1
    const-string v0, "launchPurchaseFlow"

    #@3
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    #@6
    const-string v0, "launchPurchaseFlow"

    #@8
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    #@b
    const-string v0, "subs"

    #@d
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_26

    #@13
    iget-boolean v0, p0, Lcom/apportable/iab/IabHelper;->mSubscriptionsSupported:Z

    #@15
    if-nez v0, :cond_26

    #@17
    new-instance v0, Lcom/apportable/iab/IabResult;

    #@19
    const/16 v1, -0x3f1

    #@1b
    const-string v2, "Subscriptions are not available."

    #@1d
    invoke-direct {v0, v1, v2}, Lcom/apportable/iab/IabResult;-><init>(ILjava/lang/String;)V

    #@20
    if-eqz p5, :cond_25

    #@22
    invoke-interface {p5, v0, v7}, Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/apportable/iab/IabResult;Lcom/apportable/iab/Purchase;)V

    #@25
    :cond_25
    :goto_25
    return-void

    #@26
    :cond_26
    :try_start_26
    new-instance v0, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string v1, "Constructing buy intent for "

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    const-string v1, ", item type: "

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@46
    iget-object v0, p0, Lcom/apportable/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    #@48
    if-nez v0, :cond_87

    #@4a
    const-string v0, "Billing service unavailable, try again later"

    #@4c
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@4f
    new-instance v0, Lcom/apportable/iab/IabResult;

    #@51
    const/4 v1, 0x3

    #@52
    const-string v2, "Unable to buy item"

    #@54
    invoke-direct {v0, v1, v2}, Lcom/apportable/iab/IabResult;-><init>(ILjava/lang/String;)V

    #@57
    if-eqz p5, :cond_25

    #@59
    const/4 v1, 0x0

    #@5a
    invoke-interface {p5, v0, v1}, Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/apportable/iab/IabResult;Lcom/apportable/iab/Purchase;)V
    :try_end_5d
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_26 .. :try_end_5d} :catch_5e
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_5d} :catch_c6

    #@5d
    goto :goto_25

    #@5e
    :catch_5e
    move-exception v0

    #@5f
    new-instance v1, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string v2, "SendIntentException while launching purchase flow for sku "

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    invoke-virtual {p0, v1}, Lcom/apportable/iab/IabHelper;->logError(Ljava/lang/String;)V

    #@75
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    #@78
    new-instance v0, Lcom/apportable/iab/IabResult;

    #@7a
    const/16 v1, -0x3ec

    #@7c
    const-string v2, "Failed to send intent."

    #@7e
    invoke-direct {v0, v1, v2}, Lcom/apportable/iab/IabResult;-><init>(ILjava/lang/String;)V

    #@81
    if-eqz p5, :cond_25

    #@83
    invoke-interface {p5, v0, v7}, Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/apportable/iab/IabResult;Lcom/apportable/iab/Purchase;)V

    #@86
    goto :goto_25

    #@87
    :cond_87
    :try_start_87
    iget-object v0, p0, Lcom/apportable/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    #@89
    const/4 v1, 0x3

    #@8a
    iget-object v2, p0, Lcom/apportable/iab/IabHelper;->mContext:Landroid/content/Context;

    #@8c
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@8f
    move-result-object v2

    #@90
    move-object v3, p2

    #@91
    move-object v4, p3

    #@92
    move-object v5, p6

    #@93
    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    #@96
    move-result-object v0

    #@97
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    #@9a
    move-result v1

    #@9b
    if-eqz v1, :cond_f0

    #@9d
    new-instance v0, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string v2, "Unable to buy item, Error response: "

    #@a4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v0

    #@a8
    invoke-static {v1}, Lcom/apportable/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    #@ab
    move-result-object v2

    #@ac
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v0

    #@b0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v0

    #@b4
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logError(Ljava/lang/String;)V

    #@b7
    new-instance v0, Lcom/apportable/iab/IabResult;

    #@b9
    const-string v2, "Unable to buy item"

    #@bb
    invoke-direct {v0, v1, v2}, Lcom/apportable/iab/IabResult;-><init>(ILjava/lang/String;)V

    #@be
    if-eqz p5, :cond_25

    #@c0
    const/4 v1, 0x0

    #@c1
    invoke-interface {p5, v0, v1}, Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/apportable/iab/IabResult;Lcom/apportable/iab/Purchase;)V
    :try_end_c4
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_87 .. :try_end_c4} :catch_5e
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_c4} :catch_c6

    #@c4
    goto/16 :goto_25

    #@c6
    :catch_c6
    move-exception v0

    #@c7
    new-instance v1, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string v2, "RemoteException while launching purchase flow for sku "

    #@ce
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v1

    #@d2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v1

    #@d6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v1

    #@da
    invoke-virtual {p0, v1}, Lcom/apportable/iab/IabHelper;->logError(Ljava/lang/String;)V

    #@dd
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    #@e0
    new-instance v0, Lcom/apportable/iab/IabResult;

    #@e2
    const/16 v1, -0x3e9

    #@e4
    const-string v2, "Remote exception while starting purchase flow"

    #@e6
    invoke-direct {v0, v1, v2}, Lcom/apportable/iab/IabResult;-><init>(ILjava/lang/String;)V

    #@e9
    if-eqz p5, :cond_25

    #@eb
    invoke-interface {p5, v0, v7}, Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/apportable/iab/IabResult;Lcom/apportable/iab/Purchase;)V

    #@ee
    goto/16 :goto_25

    #@f0
    :cond_f0
    :try_start_f0
    const-string v1, "BUY_INTENT"

    #@f2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@f5
    move-result-object v0

    #@f6
    check-cast v0, Landroid/app/PendingIntent;

    #@f8
    new-instance v1, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string v2, "Launching buy intent for "

    #@ff
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v1

    #@103
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v1

    #@107
    const-string v2, ". Request code: "

    #@109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v1

    #@10d
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@110
    move-result-object v1

    #@111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@114
    move-result-object v1

    #@115
    invoke-virtual {p0, v1}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@118
    iput p4, p0, Lcom/apportable/iab/IabHelper;->mRequestCode:I

    #@11a
    iput-object p5, p0, Lcom/apportable/iab/IabHelper;->mPurchaseListener:Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;

    #@11c
    iput-object p3, p0, Lcom/apportable/iab/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    #@11e
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    #@121
    move-result-object v1

    #@122
    new-instance v3, Landroid/content/Intent;

    #@124
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    #@127
    const/4 v0, 0x0

    #@128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12b
    move-result-object v0

    #@12c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@12f
    move-result v4

    #@130
    const/4 v0, 0x0

    #@131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@134
    move-result-object v0

    #@135
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@138
    move-result v5

    #@139
    const/4 v0, 0x0

    #@13a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13d
    move-result-object v0

    #@13e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@141
    move-result v6

    #@142
    move-object v0, p1

    #@143
    move v2, p4

    #@144
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_147
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_f0 .. :try_end_147} :catch_5e
    .catch Landroid/os/RemoteException; {:try_start_f0 .. :try_end_147} :catch_c6

    #@147
    goto/16 :goto_25
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 11

    #@0
    const-string v5, ""

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move-object v4, p4

    #@7
    invoke-virtual/range {v0 .. v5}, Lcom/apportable/iab/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    #@a
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 13

    #@0
    const-string v3, "subs"

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move v4, p3

    #@6
    move-object v5, p4

    #@7
    move-object v6, p5

    #@8
    invoke-virtual/range {v0 .. v6}, Lcom/apportable/iab/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    #@b
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/apportable/iab/IabHelper;->mDebugLog:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/apportable/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    #@6
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    :cond_9
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/apportable/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string v2, "In-app billing error: "

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/apportable/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string v2, "In-app billing warning: "

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/apportable/iab/Inventory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/apportable/iab/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apportable/iab/IabException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/apportable/iab/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/apportable/iab/Inventory;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/apportable/iab/Inventory;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/apportable/iab/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apportable/iab/IabException;
        }
    .end annotation

    #@0
    const-string v0, "queryInventory"

    #@2
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    #@5
    :try_start_5
    new-instance v0, Lcom/apportable/iab/Inventory;

    #@7
    invoke-direct {v0}, Lcom/apportable/iab/Inventory;-><init>()V

    #@a
    const-string v1, "inapp"

    #@c
    invoke-virtual {p0, v0, v1}, Lcom/apportable/iab/IabHelper;->queryPurchases(Lcom/apportable/iab/Inventory;Ljava/lang/String;)I

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_25

    #@12
    new-instance v0, Lcom/apportable/iab/IabException;

    #@14
    const-string v2, "Error refreshing inventory (querying owned items)."

    #@16
    invoke-direct {v0, v1, v2}, Lcom/apportable/iab/IabException;-><init>(ILjava/lang/String;)V

    #@19
    throw v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1a} :catch_1a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1a} :catch_37

    #@1a
    :catch_1a
    move-exception v0

    #@1b
    new-instance v1, Lcom/apportable/iab/IabException;

    #@1d
    const/16 v2, -0x3e9

    #@1f
    const-string v3, "Remote exception while refreshing inventory."

    #@21
    invoke-direct {v1, v2, v3, v0}, Lcom/apportable/iab/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    #@24
    throw v1

    #@25
    :cond_25
    if-eqz p1, :cond_42

    #@27
    :try_start_27
    const-string v1, "inapp"

    #@29
    invoke-virtual {p0, v1, v0, p2}, Lcom/apportable/iab/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/apportable/iab/Inventory;Ljava/util/List;)I

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_42

    #@2f
    new-instance v0, Lcom/apportable/iab/IabException;

    #@31
    const-string v2, "Error refreshing inventory (querying prices of items)."

    #@33
    invoke-direct {v0, v1, v2}, Lcom/apportable/iab/IabException;-><init>(ILjava/lang/String;)V

    #@36
    throw v0
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_37} :catch_1a
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_37} :catch_37

    #@37
    :catch_37
    move-exception v0

    #@38
    new-instance v1, Lcom/apportable/iab/IabException;

    #@3a
    const/16 v2, -0x3ea

    #@3c
    const-string v3, "Error parsing JSON response while refreshing inventory."

    #@3e
    invoke-direct {v1, v2, v3, v0}, Lcom/apportable/iab/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    #@41
    throw v1

    #@42
    :cond_42
    :try_start_42
    iget-boolean v1, p0, Lcom/apportable/iab/IabHelper;->mSubscriptionsSupported:Z

    #@44
    if-eqz v1, :cond_68

    #@46
    const-string v1, "subs"

    #@48
    invoke-virtual {p0, v0, v1}, Lcom/apportable/iab/IabHelper;->queryPurchases(Lcom/apportable/iab/Inventory;Ljava/lang/String;)I

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_56

    #@4e
    new-instance v0, Lcom/apportable/iab/IabException;

    #@50
    const-string v2, "Error refreshing inventory (querying owned subscriptions)."

    #@52
    invoke-direct {v0, v1, v2}, Lcom/apportable/iab/IabException;-><init>(ILjava/lang/String;)V

    #@55
    throw v0

    #@56
    :cond_56
    if-eqz p1, :cond_68

    #@58
    const-string v1, "subs"

    #@5a
    invoke-virtual {p0, v1, v0, p3}, Lcom/apportable/iab/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/apportable/iab/Inventory;Ljava/util/List;)I

    #@5d
    move-result v1

    #@5e
    if-eqz v1, :cond_68

    #@60
    new-instance v0, Lcom/apportable/iab/IabException;

    #@62
    const-string v2, "Error refreshing inventory (querying prices of subscriptions)."

    #@64
    invoke-direct {v0, v1, v2}, Lcom/apportable/iab/IabException;-><init>(ILjava/lang/String;)V

    #@67
    throw v0
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_68} :catch_1a
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_68} :catch_37

    #@68
    :cond_68
    return-object v0
.end method

.method public queryInventoryAsync(Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1, p1}, Lcom/apportable/iab/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;)V

    #@5
    return-void
.end method

.method public queryInventoryAsync(ZLcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Lcom/apportable/iab/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;)V

    #@4
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    #@0
    new-instance v4, Landroid/os/Handler;

    #@2
    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    #@5
    const-string v0, "queryInventory"

    #@7
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    #@a
    const-string v0, "refresh inventory"

    #@c
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    #@f
    new-instance v6, Ljava/lang/Thread;

    #@11
    new-instance v0, Lcom/apportable/iab/IabHelper$2;

    #@13
    move-object v1, p0

    #@14
    move v2, p1

    #@15
    move-object v3, p2

    #@16
    move-object v5, p3

    #@17
    invoke-direct/range {v0 .. v5}, Lcom/apportable/iab/IabHelper$2;-><init>(Lcom/apportable/iab/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;)V

    #@1a
    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@1d
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    #@20
    return-void
.end method

.method queryPurchases(Lcom/apportable/iab/Inventory;Ljava/lang/String;)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v3, 0x3

    #@1
    const/4 v4, 0x0

    #@2
    iget-object v0, p0, Lcom/apportable/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    #@4
    if-nez v0, :cond_d

    #@6
    const-string v0, "Billing service unavailable, try again later"

    #@8
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@b
    move v0, v3

    #@c
    :goto_c
    return v0

    #@d
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string v1, "Querying owned items, item type: "

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@23
    new-instance v0, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string v1, "Package name: "

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    iget-object v1, p0, Lcom/apportable/iab/IabHelper;->mContext:Landroid/content/Context;

    #@30
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@3f
    const/4 v0, 0x0

    #@40
    move v1, v4

    #@41
    :goto_41
    new-instance v2, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string v5, "Calling getPurchases with continuation token: "

    #@48
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {p0, v2}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@57
    iget-object v2, p0, Lcom/apportable/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    #@59
    iget-object v5, p0, Lcom/apportable/iab/IabHelper;->mContext:Landroid/content/Context;

    #@5b
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@5e
    move-result-object v5

    #@5f
    invoke-interface {v2, v3, v5, p2, v0}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    #@62
    move-result-object v7

    #@63
    invoke-virtual {p0, v7}, Lcom/apportable/iab/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    #@66
    move-result v0

    #@67
    new-instance v2, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string v5, "Owned items response: "

    #@6e
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v2

    #@7e
    invoke-virtual {p0, v2}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@81
    if-eqz v0, :cond_9f

    #@83
    new-instance v1, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string v2, "getPurchases() failed: "

    #@8a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v1

    #@8e
    invoke-static {v0}, Lcom/apportable/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    #@91
    move-result-object v2

    #@92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v1

    #@9a
    invoke-virtual {p0, v1}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@9d
    goto/16 :goto_c

    #@9f
    :cond_9f
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    #@a1
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@a4
    move-result v0

    #@a5
    if-eqz v0, :cond_b7

    #@a7
    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    #@a9
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@ac
    move-result v0

    #@ad
    if-eqz v0, :cond_b7

    #@af
    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    #@b1
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@b4
    move-result v0

    #@b5
    if-nez v0, :cond_c0

    #@b7
    :cond_b7
    const-string v0, "Bundle returned from getPurchases() doesn\'t contain required fields."

    #@b9
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logError(Ljava/lang/String;)V

    #@bc
    const/16 v0, -0x3ea

    #@be
    goto/16 :goto_c

    #@c0
    :cond_c0
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    #@c2
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@c5
    move-result-object v8

    #@c6
    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    #@c8
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@cb
    move-result-object v9

    #@cc
    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    #@ce
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@d1
    move-result-object v10

    #@d2
    move v5, v1

    #@d3
    move v6, v4

    #@d4
    :goto_d4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@d7
    move-result v0

    #@d8
    if-ge v6, v0, :cond_170

    #@da
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@dd
    move-result-object v0

    #@de
    check-cast v0, Ljava/lang/String;

    #@e0
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e3
    move-result-object v1

    #@e4
    check-cast v1, Ljava/lang/String;

    #@e6
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e9
    move-result-object v2

    #@ea
    check-cast v2, Ljava/lang/String;

    #@ec
    iget-object v11, p0, Lcom/apportable/iab/IabHelper;->mSignatureBase64:Ljava/lang/String;

    #@ee
    invoke-static {v11, v0, v1}, Lcom/apportable/iab/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@f1
    move-result v11

    #@f2
    if-eqz v11, :cond_13d

    #@f4
    new-instance v11, Ljava/lang/StringBuilder;

    #@f6
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@f9
    const-string v12, "Sku is owned: "

    #@fb
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v11

    #@ff
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v2

    #@103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v2

    #@107
    invoke-virtual {p0, v2}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@10a
    new-instance v2, Lcom/apportable/iab/Purchase;

    #@10c
    invoke-direct {v2, p2, v0, v1}, Lcom/apportable/iab/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@10f
    invoke-virtual {v2}, Lcom/apportable/iab/Purchase;->getToken()Ljava/lang/String;

    #@112
    move-result-object v1

    #@113
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@116
    move-result v1

    #@117
    if-eqz v1, :cond_134

    #@119
    const-string v1, "BUG: empty/null token!"

    #@11b
    invoke-virtual {p0, v1}, Lcom/apportable/iab/IabHelper;->logWarn(Ljava/lang/String;)V

    #@11e
    new-instance v1, Ljava/lang/StringBuilder;

    #@120
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@123
    const-string v11, "Purchase data: "

    #@125
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v1

    #@129
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v0

    #@12d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@130
    move-result-object v0

    #@131
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@134
    :cond_134
    invoke-virtual {p1, v2}, Lcom/apportable/iab/Inventory;->addPurchase(Lcom/apportable/iab/Purchase;)V

    #@137
    move v0, v5

    #@138
    :goto_138
    add-int/lit8 v1, v6, 0x1

    #@13a
    move v5, v0

    #@13b
    move v6, v1

    #@13c
    goto :goto_d4

    #@13d
    :cond_13d
    const-string v2, "Purchase signature verification **FAILED**. Not adding item."

    #@13f
    invoke-virtual {p0, v2}, Lcom/apportable/iab/IabHelper;->logWarn(Ljava/lang/String;)V

    #@142
    new-instance v2, Ljava/lang/StringBuilder;

    #@144
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@147
    const-string v5, "   Purchase data: "

    #@149
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v2

    #@14d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v0

    #@151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@154
    move-result-object v0

    #@155
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@158
    new-instance v0, Ljava/lang/StringBuilder;

    #@15a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15d
    const-string v2, "   Signature: "

    #@15f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v0

    #@163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v0

    #@167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16a
    move-result-object v0

    #@16b
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@16e
    const/4 v0, 0x1

    #@16f
    goto :goto_138

    #@170
    :cond_170
    const-string v0, "INAPP_CONTINUATION_TOKEN"

    #@172
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@175
    move-result-object v0

    #@176
    new-instance v1, Ljava/lang/StringBuilder;

    #@178
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17b
    const-string v2, "Continuation token: "

    #@17d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v1

    #@181
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@184
    move-result-object v1

    #@185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@188
    move-result-object v1

    #@189
    invoke-virtual {p0, v1}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@18c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@18f
    move-result v1

    #@190
    if-eqz v1, :cond_198

    #@192
    if-eqz v5, :cond_19b

    #@194
    const/16 v0, -0x3eb

    #@196
    goto/16 :goto_c

    #@198
    :cond_198
    move v1, v5

    #@199
    goto/16 :goto_41

    #@19b
    :cond_19b
    move v0, v4

    #@19c
    goto/16 :goto_c
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/apportable/iab/Inventory;Ljava/util/List;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/apportable/iab/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    const/4 v2, 0x3

    #@1
    const/4 v1, 0x0

    #@2
    const-string v0, "Querying SKU details."

    #@4
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@7
    new-instance v3, Ljava/util/ArrayList;

    #@9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@c
    invoke-virtual {p2, p1}, Lcom/apportable/iab/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@13
    if-eqz p3, :cond_18

    #@15
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@18
    :cond_18
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_25

    #@1e
    const-string v0, "queryPrices: nothing to do because there are no SKUs."

    #@20
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@23
    move v0, v1

    #@24
    :goto_24
    return v0

    #@25
    :cond_25
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@28
    move-result v0

    #@29
    if-lez v0, :cond_c8

    #@2b
    new-instance v0, Ljava/util/ArrayList;

    #@2d
    const/16 v4, 0xc

    #@2f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@32
    move-result v5

    #@33
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@36
    move-result v4

    #@37
    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    #@3a
    move-result-object v4

    #@3b
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@3e
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    #@41
    new-instance v4, Landroid/os/Bundle;

    #@43
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@46
    const-string v5, "ITEM_ID_LIST"

    #@48
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@4b
    iget-object v0, p0, Lcom/apportable/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    #@4d
    if-nez v0, :cond_56

    #@4f
    const-string v0, "getSkuDetails() failed: Billing service unavailable, try again later"

    #@51
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@54
    move v0, v2

    #@55
    goto :goto_24

    #@56
    :cond_56
    iget-object v0, p0, Lcom/apportable/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    #@58
    iget-object v5, p0, Lcom/apportable/iab/IabHelper;->mContext:Landroid/content/Context;

    #@5a
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@5d
    move-result-object v5

    #@5e
    invoke-interface {v0, v2, v5, p1, v4}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@61
    move-result-object v0

    #@62
    const-string v4, "DETAILS_LIST"

    #@64
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@67
    move-result v4

    #@68
    if-nez v4, :cond_93

    #@6a
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    #@6d
    move-result v0

    #@6e
    if-eqz v0, :cond_8b

    #@70
    new-instance v1, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string v2, "getSkuDetails() failed: "

    #@77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    invoke-static {v0}, Lcom/apportable/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    #@7e
    move-result-object v2

    #@7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {p0, v1}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@8a
    goto :goto_24

    #@8b
    :cond_8b
    const-string v0, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    #@8d
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logError(Ljava/lang/String;)V

    #@90
    const/16 v0, -0x3ea

    #@92
    goto :goto_24

    #@93
    :cond_93
    const-string v4, "DETAILS_LIST"

    #@95
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@98
    move-result-object v0

    #@99
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@9c
    move-result-object v4

    #@9d
    :goto_9d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@a0
    move-result v0

    #@a1
    if-eqz v0, :cond_25

    #@a3
    new-instance v5, Lcom/apportable/iab/SkuDetails;

    #@a5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a8
    move-result-object v0

    #@a9
    check-cast v0, Ljava/lang/String;

    #@ab
    invoke-direct {v5, p1, v0}, Lcom/apportable/iab/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@ae
    new-instance v0, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string v6, "Got sku details: "

    #@b5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v0

    #@b9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v0

    #@bd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v0

    #@c1
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@c4
    invoke-virtual {p2, v5}, Lcom/apportable/iab/Inventory;->addSkuDetails(Lcom/apportable/iab/SkuDetails;)V

    #@c7
    goto :goto_9d

    #@c8
    :cond_c8
    move v0, v1

    #@c9
    goto/16 :goto_24
.end method

.method public querySkuDetailsAsync(Ljava/util/List;Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    #@0
    new-instance v0, Landroid/os/Handler;

    #@2
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@5
    const-string v1, "querySkuDetailsAsync"

    #@7
    invoke-virtual {p0, v1}, Lcom/apportable/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    #@a
    const-string v1, "query Skus"

    #@c
    invoke-virtual {p0, v1}, Lcom/apportable/iab/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    #@f
    new-instance v1, Ljava/lang/Thread;

    #@11
    new-instance v2, Lcom/apportable/iab/IabHelper$3;

    #@13
    invoke-direct {v2, p0, p1, v0, p2}, Lcom/apportable/iab/IabHelper$3;-><init>(Lcom/apportable/iab/IabHelper;Ljava/util/List;Landroid/os/Handler;Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;)V

    #@16
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@19
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@1c
    return-void
.end method

.method public startSetup(Lcom/apportable/iab/IabHelper$OnIabSetupFinishedListener;)V
    .registers 6

    #@0
    iget-boolean v0, p0, Lcom/apportable/iab/IabHelper;->mSetupDone:Z

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "IAB helper is already set up."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    const-string v0, "Starting in-app billing setup."

    #@e
    invoke-virtual {p0, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@11
    new-instance v0, Lcom/apportable/iab/IabHelper$1;

    #@13
    invoke-direct {v0, p0, p1}, Lcom/apportable/iab/IabHelper$1;-><init>(Lcom/apportable/iab/IabHelper;Lcom/apportable/iab/IabHelper$OnIabSetupFinishedListener;)V

    #@16
    iput-object v0, p0, Lcom/apportable/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    #@18
    new-instance v0, Landroid/content/Intent;

    #@1a
    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    #@1c
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1f
    iget-object v1, p0, Lcom/apportable/iab/IabHelper;->mContext:Landroid/content/Context;

    #@21
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@24
    move-result-object v1

    #@25
    const/4 v2, 0x0

    #@26
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    #@29
    move-result-object v1

    #@2a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@2d
    move-result v1

    #@2e
    if-nez v1, :cond_39

    #@30
    iget-object v1, p0, Lcom/apportable/iab/IabHelper;->mContext:Landroid/content/Context;

    #@32
    iget-object v2, p0, Lcom/apportable/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    #@34
    const/4 v3, 0x1

    #@35
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@38
    :cond_38
    :goto_38
    return-void

    #@39
    :cond_39
    if-eqz p1, :cond_38

    #@3b
    new-instance v0, Lcom/apportable/iab/IabResult;

    #@3d
    const/4 v1, 0x3

    #@3e
    const-string v2, "Billing service unavailable on device."

    #@40
    invoke-direct {v0, v1, v2}, Lcom/apportable/iab/IabResult;-><init>(ILjava/lang/String;)V

    #@43
    invoke-interface {p1, v0}, Lcom/apportable/iab/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/apportable/iab/IabResult;)V

    #@46
    goto :goto_38
.end method

.method public subscriptionsSupported()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/iab/IabHelper;->mSubscriptionsSupported:Z

    #@2
    return v0
.end method
