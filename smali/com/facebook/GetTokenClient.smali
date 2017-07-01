.class final Lcom/facebook/GetTokenClient;
.super Lcom/facebook/internal/PlatformServiceClient;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    #@0
    const/high16 v2, 0x10000

    #@2
    const v3, 0x10001

    #@5
    const v4, 0x133060d

    #@8
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    move-object v5, p2

    #@b
    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/PlatformServiceClient;-><init>(Landroid/content/Context;IIILjava/lang/String;)V

    #@e
    return-void
.end method


# virtual methods
.method protected populateRequestBundle(Landroid/os/Bundle;)V
    .registers 2

    #@0
    return-void
.end method
