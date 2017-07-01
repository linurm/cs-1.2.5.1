.class public Lcom/google/android/gms/internal/ey;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ey$a;
    }
.end annotation


# instance fields
.field protected final lN:Lcom/google/android/gms/internal/ex;

.field private final ls:Ljava/lang/Object;

.field private mS:Lcom/google/android/gms/internal/ba;

.field private nc:Lcom/google/android/gms/internal/bf;

.field private nd:Lcom/google/android/gms/internal/bd;

.field private pN:Lcom/google/android/gms/internal/ey$a;

.field private final sH:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bc;",
            ">;"
        }
    .end annotation
.end field

.field private sI:Lcom/google/android/gms/internal/t;

.field private sJ:Lcom/google/android/gms/internal/ci;

.field private sK:Z

.field private sL:Z

.field private sM:Lcom/google/android/gms/internal/cl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ex;Z)V
    .registers 4

    #@0
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/ey;->sH:Ljava/util/HashMap;

    #@a
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/internal/ey;->ls:Ljava/lang/Object;

    #@11
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ey;->sK:Z

    #@14
    iput-object p1, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@16
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ey;->sL:Z

    #@18
    return-void
.end method

.method private static d(Landroid/net/Uri;)Z
    .registers 3

    #@0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string v1, "http"

    #@6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_14

    #@c
    const-string v1, "https"

    #@e
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_16

    #@14
    :cond_14
    const/4 v0, 0x1

    #@15
    :goto_15
    return v0

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    goto :goto_15
.end method

.method private e(Landroid/net/Uri;)V
    .registers 8

    #@0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->sH:Ljava/util/HashMap;

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/google/android/gms/internal/bc;

    #@c
    if-eqz v0, :cond_70

    #@e
    invoke-static {p1}, Lcom/google/android/gms/internal/eo;->c(Landroid/net/Uri;)Ljava/util/Map;

    #@11
    move-result-object v2

    #@12
    const/4 v3, 0x2

    #@13
    invoke-static {v3}, Lcom/google/android/gms/internal/eu;->p(I)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_6a

    #@19
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string v4, "Received GMSG: "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@2f
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@32
    move-result-object v1

    #@33
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v3

    #@37
    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_6a

    #@3d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v1

    #@41
    check-cast v1, Ljava/lang/String;

    #@43
    new-instance v4, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string v5, "  "

    #@4a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    const-string v5, ": "

    #@54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    move-result-object v1

    #@5c
    check-cast v1, Ljava/lang/String;

    #@5e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@69
    goto :goto_37

    #@6a
    :cond_6a
    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@6c
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/bc;->b(Lcom/google/android/gms/internal/ex;Ljava/util/Map;)V

    #@6f
    :goto_6f
    return-void

    #@70
    :cond_70
    new-instance v0, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string v1, "No GMSG handler found for GMSG: "

    #@77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v0

    #@83
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@86
    goto :goto_6f
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ce;)V
    .registers 8

    #@0
    const/4 v3, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->ce()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_28

    #@9
    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ex;->V()Lcom/google/android/gms/internal/al;

    #@e
    move-result-object v1

    #@f
    iget-boolean v1, v1, Lcom/google/android/gms/internal/al;->mf:Z

    #@11
    if-nez v1, :cond_28

    #@13
    move-object v2, v3

    #@14
    :goto_14
    if-eqz v0, :cond_2b

    #@16
    :goto_16
    new-instance v0, Lcom/google/android/gms/internal/ch;

    #@18
    iget-object v4, p0, Lcom/google/android/gms/internal/ey;->sM:Lcom/google/android/gms/internal/cl;

    #@1a
    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@1c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ex;->cd()Lcom/google/android/gms/internal/ev;

    #@1f
    move-result-object v5

    #@20
    move-object v1, p1

    #@21
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ch;-><init>(Lcom/google/android/gms/internal/ce;Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/internal/cl;Lcom/google/android/gms/internal/ev;)V

    #@24
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->a(Lcom/google/android/gms/internal/ch;)V

    #@27
    return-void

    #@28
    :cond_28
    iget-object v2, p0, Lcom/google/android/gms/internal/ey;->sI:Lcom/google/android/gms/internal/t;

    #@2a
    goto :goto_14

    #@2b
    :cond_2b
    iget-object v3, p0, Lcom/google/android/gms/internal/ey;->sJ:Lcom/google/android/gms/internal/ci;

    #@2d
    goto :goto_16
.end method

.method protected a(Lcom/google/android/gms/internal/ch;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cf;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ch;)V

    #@9
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ey$a;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/ey;->pN:Lcom/google/android/gms/internal/ey$a;

    #@2
    return-void
.end method

.method public a(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/internal/ba;Lcom/google/android/gms/internal/cl;ZLcom/google/android/gms/internal/bd;)V
    .registers 9

    #@0
    const-string v0, "/appEvent"

    #@2
    new-instance v1, Lcom/google/android/gms/internal/az;

    #@4
    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/az;-><init>(Lcom/google/android/gms/internal/ba;)V

    #@7
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bc;)V

    #@a
    const-string v0, "/canOpenURLs"

    #@c
    sget-object v1, Lcom/google/android/gms/internal/bb;->mU:Lcom/google/android/gms/internal/bc;

    #@e
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bc;)V

    #@11
    const-string v0, "/click"

    #@13
    sget-object v1, Lcom/google/android/gms/internal/bb;->mV:Lcom/google/android/gms/internal/bc;

    #@15
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bc;)V

    #@18
    const-string v0, "/close"

    #@1a
    sget-object v1, Lcom/google/android/gms/internal/bb;->mW:Lcom/google/android/gms/internal/bc;

    #@1c
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bc;)V

    #@1f
    const-string v0, "/customClose"

    #@21
    sget-object v1, Lcom/google/android/gms/internal/bb;->mX:Lcom/google/android/gms/internal/bc;

    #@23
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bc;)V

    #@26
    const-string v0, "/httpTrack"

    #@28
    sget-object v1, Lcom/google/android/gms/internal/bb;->mY:Lcom/google/android/gms/internal/bc;

    #@2a
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bc;)V

    #@2d
    const-string v0, "/log"

    #@2f
    sget-object v1, Lcom/google/android/gms/internal/bb;->mZ:Lcom/google/android/gms/internal/bc;

    #@31
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bc;)V

    #@34
    const-string v0, "/open"

    #@36
    new-instance v1, Lcom/google/android/gms/internal/bg;

    #@38
    invoke-direct {v1, p6}, Lcom/google/android/gms/internal/bg;-><init>(Lcom/google/android/gms/internal/bd;)V

    #@3b
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bc;)V

    #@3e
    const-string v0, "/touch"

    #@40
    sget-object v1, Lcom/google/android/gms/internal/bb;->na:Lcom/google/android/gms/internal/bc;

    #@42
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bc;)V

    #@45
    const-string v0, "/video"

    #@47
    sget-object v1, Lcom/google/android/gms/internal/bb;->nb:Lcom/google/android/gms/internal/bc;

    #@49
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bc;)V

    #@4c
    iput-object p1, p0, Lcom/google/android/gms/internal/ey;->sI:Lcom/google/android/gms/internal/t;

    #@4e
    iput-object p2, p0, Lcom/google/android/gms/internal/ey;->sJ:Lcom/google/android/gms/internal/ci;

    #@50
    iput-object p3, p0, Lcom/google/android/gms/internal/ey;->mS:Lcom/google/android/gms/internal/ba;

    #@52
    iput-object p6, p0, Lcom/google/android/gms/internal/ey;->nd:Lcom/google/android/gms/internal/bd;

    #@54
    iput-object p4, p0, Lcom/google/android/gms/internal/ey;->sM:Lcom/google/android/gms/internal/cl;

    #@56
    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/ey;->r(Z)V

    #@59
    return-void
.end method

.method public a(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/internal/ba;Lcom/google/android/gms/internal/cl;ZLcom/google/android/gms/internal/bd;Lcom/google/android/gms/internal/bf;)V
    .registers 10

    #@0
    invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/internal/ey;->a(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/internal/ba;Lcom/google/android/gms/internal/cl;ZLcom/google/android/gms/internal/bd;)V

    #@3
    const-string v0, "/setInterstitialProperties"

    #@5
    new-instance v1, Lcom/google/android/gms/internal/be;

    #@7
    invoke-direct {v1, p7}, Lcom/google/android/gms/internal/be;-><init>(Lcom/google/android/gms/internal/bf;)V

    #@a
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bc;)V

    #@d
    iput-object p7, p0, Lcom/google/android/gms/internal/ey;->nc:Lcom/google/android/gms/internal/bf;

    #@f
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/bc;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->sH:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method public final a(ZI)V
    .registers 11

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->ce()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_2a

    #@8
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->V()Lcom/google/android/gms/internal/al;

    #@d
    move-result-object v0

    #@e
    iget-boolean v0, v0, Lcom/google/android/gms/internal/al;->mf:Z

    #@10
    if-nez v0, :cond_2a

    #@12
    const/4 v1, 0x0

    #@13
    :goto_13
    new-instance v0, Lcom/google/android/gms/internal/ch;

    #@15
    iget-object v2, p0, Lcom/google/android/gms/internal/ey;->sJ:Lcom/google/android/gms/internal/ci;

    #@17
    iget-object v3, p0, Lcom/google/android/gms/internal/ey;->sM:Lcom/google/android/gms/internal/cl;

    #@19
    iget-object v4, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@1b
    iget-object v5, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@1d
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ex;->cd()Lcom/google/android/gms/internal/ev;

    #@20
    move-result-object v7

    #@21
    move v5, p1

    #@22
    move v6, p2

    #@23
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ch;-><init>(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/internal/cl;Lcom/google/android/gms/internal/ex;ZILcom/google/android/gms/internal/ev;)V

    #@26
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->a(Lcom/google/android/gms/internal/ch;)V

    #@29
    return-void

    #@2a
    :cond_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->sI:Lcom/google/android/gms/internal/t;

    #@2c
    goto :goto_13
.end method

.method public final a(ZILjava/lang/String;)V
    .registers 15

    #@0
    const/4 v2, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->ce()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_30

    #@9
    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ex;->V()Lcom/google/android/gms/internal/al;

    #@e
    move-result-object v1

    #@f
    iget-boolean v1, v1, Lcom/google/android/gms/internal/al;->mf:Z

    #@11
    if-nez v1, :cond_30

    #@13
    move-object v1, v2

    #@14
    :goto_14
    if-eqz v0, :cond_33

    #@16
    :goto_16
    new-instance v0, Lcom/google/android/gms/internal/ch;

    #@18
    iget-object v3, p0, Lcom/google/android/gms/internal/ey;->mS:Lcom/google/android/gms/internal/ba;

    #@1a
    iget-object v4, p0, Lcom/google/android/gms/internal/ey;->sM:Lcom/google/android/gms/internal/cl;

    #@1c
    iget-object v5, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@1e
    iget-object v6, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@20
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ex;->cd()Lcom/google/android/gms/internal/ev;

    #@23
    move-result-object v9

    #@24
    iget-object v10, p0, Lcom/google/android/gms/internal/ey;->nd:Lcom/google/android/gms/internal/bd;

    #@26
    move v6, p1

    #@27
    move v7, p2

    #@28
    move-object v8, p3

    #@29
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ch;-><init>(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/internal/ba;Lcom/google/android/gms/internal/cl;Lcom/google/android/gms/internal/ex;ZILjava/lang/String;Lcom/google/android/gms/internal/ev;Lcom/google/android/gms/internal/bd;)V

    #@2c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->a(Lcom/google/android/gms/internal/ch;)V

    #@2f
    return-void

    #@30
    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->sI:Lcom/google/android/gms/internal/t;

    #@32
    goto :goto_14

    #@33
    :cond_33
    iget-object v2, p0, Lcom/google/android/gms/internal/ey;->sJ:Lcom/google/android/gms/internal/ci;

    #@35
    goto :goto_16
.end method

.method public final a(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 17

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->ce()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_32

    #@8
    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ex;->V()Lcom/google/android/gms/internal/al;

    #@d
    move-result-object v1

    #@e
    iget-boolean v1, v1, Lcom/google/android/gms/internal/al;->mf:Z

    #@10
    if-nez v1, :cond_32

    #@12
    const/4 v1, 0x0

    #@13
    :goto_13
    if-eqz v0, :cond_35

    #@15
    const/4 v2, 0x0

    #@16
    :goto_16
    new-instance v0, Lcom/google/android/gms/internal/ch;

    #@18
    iget-object v3, p0, Lcom/google/android/gms/internal/ey;->mS:Lcom/google/android/gms/internal/ba;

    #@1a
    iget-object v4, p0, Lcom/google/android/gms/internal/ey;->sM:Lcom/google/android/gms/internal/cl;

    #@1c
    iget-object v5, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@1e
    iget-object v6, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@20
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ex;->cd()Lcom/google/android/gms/internal/ev;

    #@23
    move-result-object v10

    #@24
    iget-object v11, p0, Lcom/google/android/gms/internal/ey;->nd:Lcom/google/android/gms/internal/bd;

    #@26
    move v6, p1

    #@27
    move v7, p2

    #@28
    move-object v8, p3

    #@29
    move-object/from16 v9, p4

    #@2b
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ch;-><init>(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/internal/ba;Lcom/google/android/gms/internal/cl;Lcom/google/android/gms/internal/ex;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ev;Lcom/google/android/gms/internal/bd;)V

    #@2e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->a(Lcom/google/android/gms/internal/ch;)V

    #@31
    return-void

    #@32
    :cond_32
    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->sI:Lcom/google/android/gms/internal/t;

    #@34
    goto :goto_13

    #@35
    :cond_35
    iget-object v2, p0, Lcom/google/android/gms/internal/ey;->sJ:Lcom/google/android/gms/internal/ci;

    #@37
    goto :goto_16
.end method

.method public final aS()V
    .registers 5

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    const/4 v0, 0x0

    #@4
    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ey;->sK:Z

    #@6
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ey;->sL:Z

    #@9
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->ca()Lcom/google/android/gms/internal/cf;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_21

    #@11
    invoke-static {}, Lcom/google/android/gms/internal/et;->bW()Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_23

    #@17
    sget-object v2, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@19
    new-instance v3, Lcom/google/android/gms/internal/ey$1;

    #@1b
    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ey$1;-><init>(Lcom/google/android/gms/internal/ey;Lcom/google/android/gms/internal/cf;)V

    #@1e
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@21
    :cond_21
    :goto_21
    monitor-exit v1

    #@22
    return-void

    #@23
    :cond_23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->aS()V

    #@26
    goto :goto_21

    #@27
    :catchall_27
    move-exception v0

    #@28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_27

    #@29
    throw v0
.end method

.method public cj()Z
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ey;->sL:Z

    #@5
    monitor-exit v1

    #@6
    return v0

    #@7
    :catchall_7
    move-exception v0

    #@8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v0
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "Loading resource: "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@16
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@19
    move-result-object v0

    #@1a
    const-string v1, "gmsg"

    #@1c
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_35

    #@26
    const-string v1, "mobileads.google.com"

    #@28
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_35

    #@32
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ey;->e(Landroid/net/Uri;)V

    #@35
    :cond_35
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->pN:Lcom/google/android/gms/internal/ey$a;

    #@2
    if-eqz v0, :cond_e

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->pN:Lcom/google/android/gms/internal/ey$a;

    #@6
    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@8
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ey$a;->a(Lcom/google/android/gms/internal/ex;)V

    #@b
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lcom/google/android/gms/internal/ey;->pN:Lcom/google/android/gms/internal/ey$a;

    #@e
    :cond_e
    return-void
.end method

.method public final r(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ey;->sK:Z

    #@2
    return-void
.end method

.method public final reset()V
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->sH:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@8
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Lcom/google/android/gms/internal/ey;->sI:Lcom/google/android/gms/internal/t;

    #@b
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lcom/google/android/gms/internal/ey;->sJ:Lcom/google/android/gms/internal/ci;

    #@e
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Lcom/google/android/gms/internal/ey;->pN:Lcom/google/android/gms/internal/ey$a;

    #@11
    const/4 v0, 0x0

    #@12
    iput-object v0, p0, Lcom/google/android/gms/internal/ey;->mS:Lcom/google/android/gms/internal/ba;

    #@14
    const/4 v0, 0x0

    #@15
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ey;->sK:Z

    #@17
    const/4 v0, 0x0

    #@18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ey;->sL:Z

    #@1a
    const/4 v0, 0x0

    #@1b
    iput-object v0, p0, Lcom/google/android/gms/internal/ey;->nd:Lcom/google/android/gms/internal/bd;

    #@1d
    const/4 v0, 0x0

    #@1e
    iput-object v0, p0, Lcom/google/android/gms/internal/ey;->sM:Lcom/google/android/gms/internal/cl;

    #@20
    monitor-exit v1

    #@21
    return-void

    #@22
    :catchall_22
    move-exception v0

    #@23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    #@24
    throw v0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 11

    #@0
    const/4 v3, 0x0

    #@1
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string v1, "AdWebView shouldOverrideUrlLoading: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@17
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@1a
    move-result-object v0

    #@1b
    const-string v1, "gmsg"

    #@1d
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_38

    #@27
    const-string v1, "mobileads.google.com"

    #@29
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_38

    #@33
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ey;->e(Landroid/net/Uri;)V

    #@36
    :goto_36
    const/4 v0, 0x1

    #@37
    :goto_37
    return v0

    #@38
    :cond_38
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ey;->sK:Z

    #@3a
    if-eqz v1, :cond_4b

    #@3c
    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@3e
    if-ne p1, v1, :cond_4b

    #@40
    invoke-static {v0}, Lcom/google/android/gms/internal/ey;->d(Landroid/net/Uri;)Z

    #@43
    move-result v1

    #@44
    if-eqz v1, :cond_4b

    #@46
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    #@49
    move-result v0

    #@4a
    goto :goto_37

    #@4b
    :cond_4b
    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@4d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ex;->willNotDraw()Z

    #@50
    move-result v1

    #@51
    if-nez v1, :cond_98

    #@53
    :try_start_53
    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@55
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ex;->cc()Lcom/google/android/gms/internal/k;

    #@58
    move-result-object v1

    #@59
    if-eqz v1, :cond_af

    #@5b
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/k;->b(Landroid/net/Uri;)Z

    #@5e
    move-result v2

    #@5f
    if-eqz v2, :cond_af

    #@61
    iget-object v2, p0, Lcom/google/android/gms/internal/ey;->lN:Lcom/google/android/gms/internal/ex;

    #@63
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ex;->getContext()Landroid/content/Context;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/k;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    :try_end_6a
    .catch Lcom/google/android/gms/internal/l; {:try_start_53 .. :try_end_6a} :catch_7f

    #@6a
    move-result-object v0

    #@6b
    move-object v2, v0

    #@6c
    :goto_6c
    new-instance v0, Lcom/google/android/gms/internal/ce;

    #@6e
    const-string v1, "android.intent.action.VIEW"

    #@70
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@73
    move-result-object v2

    #@74
    move-object v4, v3

    #@75
    move-object v5, v3

    #@76
    move-object v6, v3

    #@77
    move-object v7, v3

    #@78
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ce;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@7b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->a(Lcom/google/android/gms/internal/ce;)V

    #@7e
    goto :goto_36

    #@7f
    :catch_7f
    move-exception v1

    #@80
    new-instance v1, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string v2, "Unable to append parameter to URL: "

    #@87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v1

    #@8b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v1

    #@93
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@96
    move-object v2, v0

    #@97
    goto :goto_6c

    #@98
    :cond_98
    new-instance v0, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string v1, "AdWebView unable to handle URL: "

    #@9f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v0

    #@a3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v0

    #@a7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v0

    #@ab
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@ae
    goto :goto_36

    #@af
    :cond_af
    move-object v2, v0

    #@b0
    goto :goto_6c
.end method
