.class Lcom/facebook/Request$Attachment;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Attachment"
.end annotation


# instance fields
.field private final request:Lcom/facebook/Request;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/Request;Ljava/lang/Object;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/facebook/Request$Attachment;->request:Lcom/facebook/Request;

    #@5
    iput-object p2, p0, Lcom/facebook/Request$Attachment;->value:Ljava/lang/Object;

    #@7
    return-void
.end method


# virtual methods
.method public getRequest()Lcom/facebook/Request;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Request$Attachment;->request:Lcom/facebook/Request;

    #@2
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/Request$Attachment;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method
