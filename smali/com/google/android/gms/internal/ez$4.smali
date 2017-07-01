.class final Lcom/google/android/gms/internal/ez$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ez;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic sQ:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Landroid/webkit/JsPromptResult;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/ez$4;->sQ:Landroid/webkit/JsPromptResult;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ez$4;->sQ:Landroid/webkit/JsPromptResult;

    #@2
    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    #@5
    return-void
.end method
