.class final Lcom/google/android/gms/internal/dx$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dx;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/bi;Lcom/google/android/gms/internal/ed;Lcom/google/android/gms/internal/ds;)Lcom/google/android/gms/internal/du;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic qu:Landroid/content/Context;

.field final synthetic qv:Lcom/google/android/gms/internal/ds;

.field final synthetic qw:Lcom/google/android/gms/internal/dz;

.field final synthetic qx:Lcom/google/android/gms/internal/ey$a;

.field final synthetic qy:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/internal/ey$a;Ljava/lang/String;)V
    .registers 6

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/dx$1;->qu:Landroid/content/Context;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/dx$1;->qv:Lcom/google/android/gms/internal/ds;

    #@4
    iput-object p3, p0, Lcom/google/android/gms/internal/dx$1;->qw:Lcom/google/android/gms/internal/dz;

    #@6
    iput-object p4, p0, Lcom/google/android/gms/internal/dx$1;->qx:Lcom/google/android/gms/internal/ey$a;

    #@8
    iput-object p5, p0, Lcom/google/android/gms/internal/dx$1;->qy:Ljava/lang/String;

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    #@0
    const/4 v2, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/internal/dx$1;->qu:Landroid/content/Context;

    #@3
    new-instance v1, Lcom/google/android/gms/internal/al;

    #@5
    invoke-direct {v1}, Lcom/google/android/gms/internal/al;-><init>()V

    #@8
    const/4 v4, 0x0

    #@9
    iget-object v3, p0, Lcom/google/android/gms/internal/dx$1;->qv:Lcom/google/android/gms/internal/ds;

    #@b
    iget-object v5, v3, Lcom/google/android/gms/internal/ds;->kQ:Lcom/google/android/gms/internal/ev;

    #@d
    move v3, v2

    #@e
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ex;->a(Landroid/content/Context;Lcom/google/android/gms/internal/al;ZZLcom/google/android/gms/internal/k;Lcom/google/android/gms/internal/ev;)Lcom/google/android/gms/internal/ex;

    #@11
    move-result-object v0

    #@12
    const/4 v1, 0x1

    #@13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ex;->setWillNotDraw(Z)V

    #@16
    iget-object v1, p0, Lcom/google/android/gms/internal/dx$1;->qw:Lcom/google/android/gms/internal/dz;

    #@18
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/dz;->b(Lcom/google/android/gms/internal/ex;)V

    #@1b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->cb()Lcom/google/android/gms/internal/ey;

    #@1e
    move-result-object v1

    #@1f
    const-string v2, "/invalidRequest"

    #@21
    iget-object v3, p0, Lcom/google/android/gms/internal/dx$1;->qw:Lcom/google/android/gms/internal/dz;

    #@23
    iget-object v3, v3, Lcom/google/android/gms/internal/dz;->qD:Lcom/google/android/gms/internal/bc;

    #@25
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bc;)V

    #@28
    const-string v2, "/loadAdURL"

    #@2a
    iget-object v3, p0, Lcom/google/android/gms/internal/dx$1;->qw:Lcom/google/android/gms/internal/dz;

    #@2c
    iget-object v3, v3, Lcom/google/android/gms/internal/dz;->qE:Lcom/google/android/gms/internal/bc;

    #@2e
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bc;)V

    #@31
    const-string v2, "/log"

    #@33
    sget-object v3, Lcom/google/android/gms/internal/bb;->mZ:Lcom/google/android/gms/internal/bc;

    #@35
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bc;)V

    #@38
    iget-object v2, p0, Lcom/google/android/gms/internal/dx$1;->qx:Lcom/google/android/gms/internal/ey$a;

    #@3a
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ey;->a(Lcom/google/android/gms/internal/ey$a;)V

    #@3d
    const-string v1, "Loading the JS library."

    #@3f
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@42
    iget-object v1, p0, Lcom/google/android/gms/internal/dx$1;->qy:Ljava/lang/String;

    #@44
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ex;->loadUrl(Ljava/lang/String;)V

    #@47
    return-void
.end method
