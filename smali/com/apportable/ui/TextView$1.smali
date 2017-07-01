.class Lcom/apportable/ui/TextView$1;
.super Lcom/apportable/ui/TextView$EditText;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/TextView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/TextView;


# direct methods
.method constructor <init>(Lcom/apportable/ui/TextView;Landroid/content/Context;Lcom/apportable/ui/TextView;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/apportable/ui/TextView$1;->this$0:Lcom/apportable/ui/TextView;

    #@2
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/TextView$EditText;-><init>(Lcom/apportable/ui/TextView;Landroid/content/Context;Lcom/apportable/ui/TextView;)V

    #@5
    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 3

    #@0
    invoke-super {p0, p1, p2}, Lcom/apportable/ui/TextView$EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@3
    return-void
.end method
