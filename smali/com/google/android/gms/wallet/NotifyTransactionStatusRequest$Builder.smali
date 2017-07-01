.class public final Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic ajS:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->ajS:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;-><init>(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V

    #@3
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->ajS:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    #@4
    iget-object v0, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->aiQ:Ljava/lang/String;

    #@6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_28

    #@c
    move v0, v1

    #@d
    :goto_d
    const-string v3, "googleTransactionId is required"

    #@f
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@12
    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->ajS:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    #@14
    iget v0, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->status:I

    #@16
    if-lt v0, v1, :cond_2a

    #@18
    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->ajS:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    #@1a
    iget v0, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->status:I

    #@1c
    const/16 v3, 0x8

    #@1e
    if-gt v0, v3, :cond_2a

    #@20
    :goto_20
    const-string v0, "status is an unrecognized value"

    #@22
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@25
    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->ajS:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    #@27
    return-object v0

    #@28
    :cond_28
    move v0, v2

    #@29
    goto :goto_d

    #@2a
    :cond_2a
    move v1, v2

    #@2b
    goto :goto_20
.end method

.method public setDetailedReason(Ljava/lang/String;)Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->ajS:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->ajR:Ljava/lang/String;

    #@4
    return-object p0
.end method

.method public setGoogleTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->ajS:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->aiQ:Ljava/lang/String;

    #@4
    return-object p0
.end method

.method public setStatus(I)Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->ajS:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    #@2
    iput p1, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->status:I

    #@4
    return-object p0
.end method
