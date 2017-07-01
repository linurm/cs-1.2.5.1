.class Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyGraphObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;

.field final synthetic val$expectedType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;Ljava/lang/Class;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy$1;->this$0:Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;

    #@2
    iput-object p2, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy$1;->val$expectedType:Ljava/lang/Class;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/reflect/Type;

    #@3
    const/4 v1, 0x0

    #@4
    iget-object v2, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy$1;->val$expectedType:Ljava/lang/Class;

    #@6
    aput-object v2, v0, v1

    #@8
    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/model/GraphObjectList;

    #@2
    return-object v0
.end method
