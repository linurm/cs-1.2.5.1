.class Lcom/google/android/gms/tagmanager/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/DataLayer$b;


# instance fields
.field private final kO:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/d;->kO:Landroid/content/Context;

    #@5
    return-void
.end method


# virtual methods
.method public x(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, "gtm.url"

    #@2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    if-nez v1, :cond_37

    #@8
    const-string v0, "gtm"

    #@a
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    if-eqz v0, :cond_37

    #@10
    instance-of v2, v0, Ljava/util/Map;

    #@12
    if-eqz v2, :cond_37

    #@14
    check-cast v0, Ljava/util/Map;

    #@16
    const-string v1, "url"

    #@18
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    :goto_1c
    if-eqz v0, :cond_22

    #@1e
    instance-of v1, v0, Ljava/lang/String;

    #@20
    if-nez v1, :cond_23

    #@22
    :cond_22
    :goto_22
    return-void

    #@23
    :cond_23
    check-cast v0, Ljava/lang/String;

    #@25
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@28
    move-result-object v0

    #@29
    const-string v1, "referrer"

    #@2b
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    if-eqz v0, :cond_22

    #@31
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/d;->kO:Landroid/content/Context;

    #@33
    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/ay;->f(Landroid/content/Context;Ljava/lang/String;)V

    #@36
    goto :goto_22

    #@37
    :cond_37
    move-object v0, v1

    #@38
    goto :goto_1c
.end method
