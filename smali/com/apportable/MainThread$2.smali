.class final Lcom/apportable/MainThread$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/MainThread;->goNative()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    #@0
    # invokes: Lcom/apportable/MainThread;->nativeRun()V
    invoke-static {}, Lcom/apportable/MainThread;->access$100()V

    #@3
    return-void
.end method
