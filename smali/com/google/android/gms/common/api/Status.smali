.class public final Lcom/google/android/gms/common/api/Status;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/api/StatusCreator;

.field public static final En:Lcom/google/android/gms/common/api/Status;

.field public static final Eo:Lcom/google/android/gms/common/api/Status;

.field public static final Ep:Lcom/google/android/gms/common/api/Status;

.field public static final Eq:Lcom/google/android/gms/common/api/Status;

.field public static final Er:Lcom/google/android/gms/common/api/Status;


# instance fields
.field private final CT:I

.field private final Es:Ljava/lang/String;

.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@6
    sput-object v0, Lcom/google/android/gms/common/api/Status;->En:Lcom/google/android/gms/common/api/Status;

    #@8
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@a
    const/16 v1, 0xe

    #@c
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@f
    sput-object v0, Lcom/google/android/gms/common/api/Status;->Eo:Lcom/google/android/gms/common/api/Status;

    #@11
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@13
    const/16 v1, 0x8

    #@15
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@18
    sput-object v0, Lcom/google/android/gms/common/api/Status;->Ep:Lcom/google/android/gms/common/api/Status;

    #@1a
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@1c
    const/16 v1, 0xf

    #@1e
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@21
    sput-object v0, Lcom/google/android/gms/common/api/Status;->Eq:Lcom/google/android/gms/common/api/Status;

    #@23
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@25
    const/16 v1, 0x10

    #@27
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@2a
    sput-object v0, Lcom/google/android/gms/common/api/Status;->Er:Lcom/google/android/gms/common/api/Status;

    #@2c
    new-instance v0, Lcom/google/android/gms/common/api/StatusCreator;

    #@2e
    invoke-direct {v0}, Lcom/google/android/gms/common/api/StatusCreator;-><init>()V

    #@31
    sput-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/StatusCreator;

    #@33
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    invoke-direct {p0, v0, p1, v1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V

    #@5
    return-void
.end method

.method constructor <init>(IILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/common/api/Status;->xM:I

    #@5
    iput p2, p0, Lcom/google/android/gms/common/api/Status;->CT:I

    #@7
    iput-object p3, p0, Lcom/google/android/gms/common/api/Status;->Es:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/common/api/Status;->mPendingIntent:Landroid/app/PendingIntent;

    #@b
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V

    #@4
    return-void
.end method

.method private ex()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->Es:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_7

    #@4
    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->Es:Ljava/lang/String;

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    iget v0, p0, Lcom/google/android/gms/common/api/Status;->CT:I

    #@9
    invoke-static {v0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    goto :goto_6
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method eQ()Landroid/app/PendingIntent;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->mPendingIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method public eR()Lcom/google/android/gms/common/ConnectionResult;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    #@2
    iget v1, p0, Lcom/google/android/gms/common/api/Status;->CT:I

    #@4
    iget-object v2, p0, Lcom/google/android/gms/common/api/Status;->mPendingIntent:Landroid/app/PendingIntent;

    #@6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    #@9
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    instance-of v1, p1, Lcom/google/android/gms/common/api/Status;

    #@3
    if-nez v1, :cond_6

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    #@8
    iget v1, p0, Lcom/google/android/gms/common/api/Status;->xM:I

    #@a
    iget v2, p1, Lcom/google/android/gms/common/api/Status;->xM:I

    #@c
    if-ne v1, v2, :cond_5

    #@e
    iget v1, p0, Lcom/google/android/gms/common/api/Status;->CT:I

    #@10
    iget v2, p1, Lcom/google/android/gms/common/api/Status;->CT:I

    #@12
    if-ne v1, v2, :cond_5

    #@14
    iget-object v1, p0, Lcom/google/android/gms/common/api/Status;->Es:Ljava/lang/String;

    #@16
    iget-object v2, p1, Lcom/google/android/gms/common/api/Status;->Es:Ljava/lang/String;

    #@18
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_5

    #@1e
    iget-object v1, p0, Lcom/google/android/gms/common/api/Status;->mPendingIntent:Landroid/app/PendingIntent;

    #@20
    iget-object v2, p1, Lcom/google/android/gms/common/api/Status;->mPendingIntent:Landroid/app/PendingIntent;

    #@22
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_5

    #@28
    const/4 v0, 0x1

    #@29
    goto :goto_5
.end method

.method public getResolution()Landroid/app/PendingIntent;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->mPendingIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 1

    #@0
    return-object p0
.end method

.method public getStatusCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/common/api/Status;->CT:I

    #@2
    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->Es:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/common/api/Status;->xM:I

    #@2
    return v0
.end method

.method public hasResolution()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->mPendingIntent:Landroid/app/PendingIntent;

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    iget v2, p0, Lcom/google/android/gms/common/api/Status;->xM:I

    #@6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v2

    #@a
    aput-object v2, v0, v1

    #@c
    const/4 v1, 0x1

    #@d
    iget v2, p0, Lcom/google/android/gms/common/api/Status;->CT:I

    #@f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v2

    #@13
    aput-object v2, v0, v1

    #@15
    const/4 v1, 0x2

    #@16
    iget-object v2, p0, Lcom/google/android/gms/common/api/Status;->Es:Ljava/lang/String;

    #@18
    aput-object v2, v0, v1

    #@1a
    const/4 v1, 0x3

    #@1b
    iget-object v2, p0, Lcom/google/android/gms/common/api/Status;->mPendingIntent:Landroid/app/PendingIntent;

    #@1d
    aput-object v2, v0, v1

    #@1f
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@22
    move-result v0

    #@23
    return v0
.end method

.method public isCanceled()Z
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/common/api/Status;->CT:I

    #@2
    const/16 v1, 0x10

    #@4
    if-ne v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public isInterrupted()Z
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/common/api/Status;->CT:I

    #@2
    const/16 v1, 0xe

    #@4
    if-ne v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public isSuccess()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/common/api/Status;->CT:I

    #@2
    if-gtz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public startResolutionForResult(Landroid/app/Activity;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    #@0
    const/4 v4, 0x0

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->hasResolution()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_8

    #@7
    :goto_7
    return-void

    #@8
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->mPendingIntent:Landroid/app/PendingIntent;

    #@a
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    #@d
    move-result-object v1

    #@e
    const/4 v3, 0x0

    #@f
    move-object v0, p1

    #@10
    move v2, p2

    #@11
    move v5, v4

    #@12
    move v6, v4

    #@13
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    #@16
    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "statusCode"

    #@6
    invoke-direct {p0}, Lcom/google/android/gms/common/api/Status;->ex()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@d
    move-result-object v0

    #@e
    const-string v1, "resolution"

    #@10
    iget-object v2, p0, Lcom/google/android/gms/common/api/Status;->mPendingIntent:Landroid/app/PendingIntent;

    #@12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/api/StatusCreator;->a(Lcom/google/android/gms/common/api/Status;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
