.class public Lcom/apportable/ReflectionProxy;
.super Ljava/lang/Object;


# instance fields
.field private mClass:Ljava/lang/Class;

.field private mDelegate:J

.field private mMethods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-wide p1, p0, Lcom/apportable/ReflectionProxy;->mDelegate:J

    #@5
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/ReflectionProxy;)J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/apportable/ReflectionProxy;->mDelegate:J

    #@2
    return-wide v0
.end method

.method static synthetic access$100(Lcom/apportable/ReflectionProxy;)Ljava/util/HashMap;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ReflectionProxy;->mMethods:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic access$200(JJLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    #@0
    invoke-static/range {p0 .. p5}, Lcom/apportable/ReflectionProxy;->invoke(JJLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static native invoke(JJLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end method


# virtual methods
.method public newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/ReflectionProxy$1;

    #@2
    invoke-direct {v0, p0}, Lcom/apportable/ReflectionProxy$1;-><init>(Lcom/apportable/ReflectionProxy;)V

    #@5
    invoke-static {p1, p2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public proxyMethod(JLjava/lang/reflect/Method;)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/apportable/ReflectionProxy;->mMethods:Ljava/util/HashMap;

    #@2
    new-instance v1, Ljava/lang/Long;

    #@4
    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    #@7
    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    return-void
.end method
