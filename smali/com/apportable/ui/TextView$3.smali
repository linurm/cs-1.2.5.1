.class Lcom/apportable/ui/TextView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/TextView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/TextView;


# direct methods
.method constructor <init>(Lcom/apportable/ui/TextView;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/TextView$3;->this$0:Lcom/apportable/ui/TextView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 11

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextView$3;->this$0:Lcom/apportable/ui/TextView;

    #@2
    iget-object v1, p0, Lcom/apportable/ui/TextView$3;->this$0:Lcom/apportable/ui/TextView;

    #@4
    iget v1, v1, Lcom/apportable/ui/TextView;->mObject:I

    #@6
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    sub-int v3, p3, p2

    #@c
    # invokes: Lcom/apportable/ui/TextView;->textShouldChange(ILjava/lang/String;II)Z
    invoke-static {v0, v1, v2, p2, v3}, Lcom/apportable/ui/TextView;->access$300(Lcom/apportable/ui/TextView;ILjava/lang/String;II)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_13

    #@12
    :goto_12
    return-object p1

    #@13
    :cond_13
    const-string p1, ""

    #@15
    goto :goto_12
.end method
