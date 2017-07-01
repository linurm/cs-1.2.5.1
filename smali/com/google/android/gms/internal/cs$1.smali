.class Lcom/google/android/gms/internal/cs$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cs;->a(Lcom/google/android/gms/internal/cv;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pc:Lcom/google/android/gms/internal/cv;

.field final synthetic pd:Landroid/content/Intent;

.field final synthetic pe:Lcom/google/android/gms/internal/cs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cs;Lcom/google/android/gms/internal/cv;Landroid/content/Intent;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/cs$1;->pe:Lcom/google/android/gms/internal/cs;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/cs$1;->pc:Lcom/google/android/gms/internal/cv;

    #@4
    iput-object p3, p0, Lcom/google/android/gms/internal/cs$1;->pd:Landroid/content/Intent;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cs$1;->pe:Lcom/google/android/gms/internal/cs;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/cs;->a(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/cz;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/google/android/gms/internal/cs$1;->pc:Lcom/google/android/gms/internal/cv;

    #@8
    iget-object v1, v1, Lcom/google/android/gms/internal/cv;->pm:Ljava/lang/String;

    #@a
    const/4 v2, -0x1

    #@b
    iget-object v3, p0, Lcom/google/android/gms/internal/cs$1;->pd:Landroid/content/Intent;

    #@d
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/cz;->a(Ljava/lang/String;ILandroid/content/Intent;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_32

    #@13
    iget-object v0, p0, Lcom/google/android/gms/internal/cs$1;->pe:Lcom/google/android/gms/internal/cs;

    #@15
    invoke-static {v0}, Lcom/google/android/gms/internal/cs;->c(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/dg;

    #@18
    move-result-object v7

    #@19
    new-instance v0, Lcom/google/android/gms/internal/cw;

    #@1b
    iget-object v1, p0, Lcom/google/android/gms/internal/cs$1;->pe:Lcom/google/android/gms/internal/cs;

    #@1d
    invoke-static {v1}, Lcom/google/android/gms/internal/cs;->b(Lcom/google/android/gms/internal/cs;)Landroid/content/Context;

    #@20
    move-result-object v1

    #@21
    iget-object v2, p0, Lcom/google/android/gms/internal/cs$1;->pc:Lcom/google/android/gms/internal/cv;

    #@23
    iget-object v2, v2, Lcom/google/android/gms/internal/cv;->pn:Ljava/lang/String;

    #@25
    const/4 v3, 0x1

    #@26
    const/4 v4, -0x1

    #@27
    iget-object v5, p0, Lcom/google/android/gms/internal/cs$1;->pd:Landroid/content/Intent;

    #@29
    iget-object v6, p0, Lcom/google/android/gms/internal/cs$1;->pc:Lcom/google/android/gms/internal/cv;

    #@2b
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/cw;-><init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/internal/cv;)V

    #@2e
    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/dg;->a(Lcom/google/android/gms/internal/df;)V

    #@31
    :goto_31
    return-void

    #@32
    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/internal/cs$1;->pe:Lcom/google/android/gms/internal/cs;

    #@34
    invoke-static {v0}, Lcom/google/android/gms/internal/cs;->c(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/dg;

    #@37
    move-result-object v7

    #@38
    new-instance v0, Lcom/google/android/gms/internal/cw;

    #@3a
    iget-object v1, p0, Lcom/google/android/gms/internal/cs$1;->pe:Lcom/google/android/gms/internal/cs;

    #@3c
    invoke-static {v1}, Lcom/google/android/gms/internal/cs;->b(Lcom/google/android/gms/internal/cs;)Landroid/content/Context;

    #@3f
    move-result-object v1

    #@40
    iget-object v2, p0, Lcom/google/android/gms/internal/cs$1;->pc:Lcom/google/android/gms/internal/cv;

    #@42
    iget-object v2, v2, Lcom/google/android/gms/internal/cv;->pn:Ljava/lang/String;

    #@44
    const/4 v3, 0x0

    #@45
    const/4 v4, -0x1

    #@46
    iget-object v5, p0, Lcom/google/android/gms/internal/cs$1;->pd:Landroid/content/Intent;

    #@48
    iget-object v6, p0, Lcom/google/android/gms/internal/cs$1;->pc:Lcom/google/android/gms/internal/cv;

    #@4a
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/cw;-><init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/internal/cv;)V

    #@4d
    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/dg;->a(Lcom/google/android/gms/internal/df;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_50} :catch_51

    #@50
    goto :goto_31

    #@51
    :catch_51
    move-exception v0

    #@52
    const-string v0, "Fail to verify and dispatch pending transaction"

    #@54
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@57
    goto :goto_31
.end method
