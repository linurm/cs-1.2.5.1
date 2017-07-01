.class Lcom/apportable/ReflectionProxy$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ReflectionProxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ReflectionProxy;


# direct methods
.method constructor <init>(Lcom/apportable/ReflectionProxy;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ReflectionProxy$1;->this$0:Lcom/apportable/ReflectionProxy;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    #@0
    iget-object v0, p0, Lcom/apportable/ReflectionProxy$1;->this$0:Lcom/apportable/ReflectionProxy;

    #@2
    iget-object v0, p0, Lcom/apportable/ReflectionProxy$1;->this$0:Lcom/apportable/ReflectionProxy;

    #@4
    # getter for: Lcom/apportable/ReflectionProxy;->mDelegate:J
    invoke-static {v0}, Lcom/apportable/ReflectionProxy;->access$000(Lcom/apportable/ReflectionProxy;)J

    #@7
    move-result-wide v0

    #@8
    iget-object v2, p0, Lcom/apportable/ReflectionProxy$1;->this$0:Lcom/apportable/ReflectionProxy;

    #@a
    # getter for: Lcom/apportable/ReflectionProxy;->mMethods:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/apportable/ReflectionProxy;->access$100(Lcom/apportable/ReflectionProxy;)Ljava/util/HashMap;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Ljava/lang/Long;

    #@14
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@17
    move-result-wide v2

    #@18
    move-object v4, p1

    #@19
    move-object v5, p3

    #@1a
    # invokes: Lcom/apportable/ReflectionProxy;->invoke(JJLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static/range {v0 .. v5}, Lcom/apportable/ReflectionProxy;->access$200(JJLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method
