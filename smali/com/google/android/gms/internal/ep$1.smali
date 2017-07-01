.class Lcom/google/android/gms/internal/ep$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ep;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic st:Ljava/lang/String;

.field final synthetic su:Lcom/google/android/gms/internal/ep;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ep;Ljava/lang/String;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/ep$1;->su:Lcom/google/android/gms/internal/ep;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/ep$1;->st:Ljava/lang/String;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ep$1;->su:Lcom/google/android/gms/internal/ep;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Lcom/google/android/gms/internal/ep;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Landroid/content/Intent;

    #@8
    const-string v2, "android.intent.action.SEND"

    #@a
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@d
    const-string v2, "text/plain"

    #@f
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@12
    move-result-object v1

    #@13
    const-string v2, "android.intent.extra.TEXT"

    #@15
    iget-object v3, p0, Lcom/google/android/gms/internal/ep$1;->st:Ljava/lang/String;

    #@17
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1a
    move-result-object v1

    #@1b
    const-string v2, "Share via"

    #@1d
    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@24
    return-void
.end method
