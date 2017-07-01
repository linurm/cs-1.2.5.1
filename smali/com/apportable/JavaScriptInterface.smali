.class public Lcom/apportable/JavaScriptInterface;
.super Ljava/lang/Object;


# instance fields
.field context:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-wide p1, p0, Lcom/apportable/JavaScriptInterface;->context:J

    #@5
    return-void
.end method

.method private static native nativeOnJavaScriptResult(JLjava/lang/String;)V
.end method


# virtual methods
.method public ReturnValue(Ljava/lang/String;)V
    .registers 4

    #@0
    iget-wide v0, p0, Lcom/apportable/JavaScriptInterface;->context:J

    #@2
    invoke-static {v0, v1, p1}, Lcom/apportable/JavaScriptInterface;->nativeOnJavaScriptResult(JLjava/lang/String;)V

    #@5
    return-void
.end method
