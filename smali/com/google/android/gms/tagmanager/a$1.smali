.class Lcom/google/android/gms/tagmanager/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aei:Lcom/google/android/gms/tagmanager/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/a;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/a$1;->aei:Lcom/google/android/gms/tagmanager/a;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public lg()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/a$1;->aei:Lcom/google/android/gms/tagmanager/a;

    #@3
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/a;->a(Lcom/google/android/gms/tagmanager/a;)Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_a} :catch_c
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_1 .. :try_end_a} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_1a
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1 .. :try_end_a} :catch_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_28

    #@a
    move-result-object v0

    #@b
    :goto_b
    return-object v0

    #@c
    :catch_c
    move-exception v1

    #@d
    const-string v1, "IllegalStateException getting Advertising Id Info"

    #@f
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@12
    goto :goto_b

    #@13
    :catch_13
    move-exception v1

    #@14
    const-string v1, "GooglePlayServicesRepairableException getting Advertising Id Info"

    #@16
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@19
    goto :goto_b

    #@1a
    :catch_1a
    move-exception v1

    #@1b
    const-string v1, "IOException getting Ad Id Info"

    #@1d
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@20
    goto :goto_b

    #@21
    :catch_21
    move-exception v1

    #@22
    const-string v1, "GooglePlayServicesNotAvailableException getting Advertising Id Info"

    #@24
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@27
    goto :goto_b

    #@28
    :catch_28
    move-exception v1

    #@29
    const-string v1, "Unknown exception. Could not get the Advertising Id Info."

    #@2b
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@2e
    goto :goto_b
.end method
