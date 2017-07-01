.class Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/TextField$TextFieldLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollectionFilter"
.end annotation


# instance fields
.field private mLayer:Lcom/apportable/ui/TextField$TextFieldLayer;

.field final synthetic this$1:Lcom/apportable/ui/TextField$TextFieldLayer;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/TextField$TextFieldLayer;Lcom/apportable/ui/TextField$TextFieldLayer;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput-object p2, p0, Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;->mLayer:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@7
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 13

    #@0
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;->mLayer:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@2
    # getter for: Lcom/apportable/ui/TextField$TextFieldLayer;->mTextChanging:Z
    invoke-static {v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->access$000(Lcom/apportable/ui/TextField$TextFieldLayer;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_4c

    #@8
    sub-int v1, p6, p5

    #@a
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    if-nez p2, :cond_4d

    #@14
    if-nez p3, :cond_4d

    #@16
    if-nez p5, :cond_4d

    #@18
    if-nez p6, :cond_4d

    #@1a
    const/4 v0, -0x1

    #@1b
    :goto_1b
    iget-object v3, p0, Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;->mLayer:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@1d
    # getter for: Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;
    invoke-static {v3}, Lcom/apportable/ui/TextField$TextFieldLayer;->access$100(Lcom/apportable/ui/TextField$TextFieldLayer;)Lcom/apportable/ui/TextField;

    #@20
    move-result-object v3

    #@21
    iget-object v4, p0, Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;->mLayer:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@23
    # getter for: Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;
    invoke-static {v4}, Lcom/apportable/ui/TextField$TextFieldLayer;->access$100(Lcom/apportable/ui/TextField$TextFieldLayer;)Lcom/apportable/ui/TextField;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Lcom/apportable/ui/TextField;->object()I

    #@2a
    move-result v4

    #@2b
    iget-object v5, p0, Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;->mLayer:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@2d
    invoke-virtual {v5}, Lcom/apportable/ui/TextField$TextFieldLayer;->getSelectionStart()I

    #@30
    move-result v5

    #@31
    sub-int v1, v5, v1

    #@33
    # invokes: Lcom/apportable/ui/TextField;->shouldChangeCharactersInRange(IIILjava/lang/String;)Z
    invoke-static {v3, v4, v1, v0, v2}, Lcom/apportable/ui/TextField;->access$200(Lcom/apportable/ui/TextField;IIILjava/lang/String;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_4f

    #@39
    iget-object v0, p0, Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;->mLayer:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@3b
    # getter for: Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;
    invoke-static {v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->access$100(Lcom/apportable/ui/TextField$TextFieldLayer;)Lcom/apportable/ui/TextField;

    #@3e
    move-result-object v0

    #@3f
    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer$CollectionFilter;->mLayer:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@41
    # getter for: Lcom/apportable/ui/TextField$TextFieldLayer;->mField:Lcom/apportable/ui/TextField;
    invoke-static {v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->access$100(Lcom/apportable/ui/TextField$TextFieldLayer;)Lcom/apportable/ui/TextField;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Lcom/apportable/ui/TextField;->object()I

    #@48
    move-result v1

    #@49
    # invokes: Lcom/apportable/ui/TextField;->textWillChange(I)V
    invoke-static {v0, v1}, Lcom/apportable/ui/TextField;->access$300(Lcom/apportable/ui/TextField;I)V

    #@4c
    :cond_4c
    :goto_4c
    return-object p1

    #@4d
    :cond_4d
    move v0, v1

    #@4e
    goto :goto_1b

    #@4f
    :cond_4f
    const-string p1, ""

    #@51
    goto :goto_4c
.end method
