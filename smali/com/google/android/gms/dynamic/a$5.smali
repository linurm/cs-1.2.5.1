.class final Lcom/google/android/gms/dynamic/a$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/dynamic/a;->b(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic Mi:I

.field final synthetic qu:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/dynamic/a$5;->qu:Landroid/content/Context;

    #@2
    iput p2, p0, Lcom/google/android/gms/dynamic/a$5;->Mi:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a$5;->qu:Landroid/content/Context;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/dynamic/a$5;->qu:Landroid/content/Context;

    #@4
    iget v2, p0, Lcom/google/android/gms/dynamic/a$5;->Mi:I

    #@6
    invoke-static {v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->c(Landroid/content/Context;I)Landroid/content/Intent;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@d
    return-void
.end method
