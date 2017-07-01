.class Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/dexmaker/stock/ProxyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodSetEntry"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final originalMethod:Ljava/lang/reflect/Method;

.field private final paramTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final returnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->originalMethod:Ljava/lang/reflect/Method;

    #@5
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->name:Ljava/lang/String;

    #@b
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->paramTypes:[Ljava/lang/Class;

    #@11
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->returnType:Ljava/lang/Class;

    #@17
    return-void
.end method

.method static synthetic access$000(Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;)Ljava/lang/reflect/Method;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->originalMethod:Ljava/lang/reflect/Method;

    #@2
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    instance-of v1, p1, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;

    #@3
    if-eqz v1, :cond_26

    #@5
    check-cast p1, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;

    #@7
    iget-object v1, p0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->name:Ljava/lang/String;

    #@9
    iget-object v2, p1, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->name:Ljava/lang/String;

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_26

    #@11
    iget-object v1, p0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->returnType:Ljava/lang/Class;

    #@13
    iget-object v2, p1, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->returnType:Ljava/lang/Class;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_26

    #@1b
    iget-object v1, p0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->paramTypes:[Ljava/lang/Class;

    #@1d
    iget-object v2, p1, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->paramTypes:[Ljava/lang/Class;

    #@1f
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_26

    #@25
    const/4 v0, 0x1

    #@26
    :cond_26
    return v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->name:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    add-int/lit16 v0, v0, 0x20f

    #@8
    add-int/lit8 v0, v0, 0x11

    #@a
    mul-int/lit8 v1, v0, 0x1f

    #@c
    iget-object v2, p0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->returnType:Ljava/lang/Class;

    #@e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@11
    move-result v2

    #@12
    add-int/2addr v1, v2

    #@13
    add-int/2addr v0, v1

    #@14
    mul-int/lit8 v1, v0, 0x1f

    #@16
    iget-object v2, p0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->paramTypes:[Ljava/lang/Class;

    #@18
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@1b
    move-result v2

    #@1c
    add-int/2addr v1, v2

    #@1d
    add-int/2addr v0, v1

    #@1e
    return v0
.end method
