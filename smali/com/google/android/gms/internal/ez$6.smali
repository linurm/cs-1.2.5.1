.class final Lcom/google/android/gms/internal/ez$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic sR:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/ez$6;->sQ:Landroid/webkit/JsPromptResult;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/ez$6;->sR:Landroid/widget/EditText;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ez$6;->sQ:Landroid/webkit/JsPromptResult;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/internal/ez$6;->sR:Landroid/widget/EditText;

    #@4
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    #@f
    return-void
.end method
