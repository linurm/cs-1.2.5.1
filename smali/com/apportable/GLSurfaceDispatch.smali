.class public Lcom/apportable/GLSurfaceDispatch;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private context:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-wide p1, p0, Lcom/apportable/GLSurfaceDispatch;->context:J

    #@5
    return-void
.end method

.method private static native AndroidGLSurfaceBindThread(J)V
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/apportable/GLSurfaceDispatch;->context:J

    #@2
    invoke-static {v0, v1}, Lcom/apportable/GLSurfaceDispatch;->AndroidGLSurfaceBindThread(J)V

    #@5
    return-void
.end method
