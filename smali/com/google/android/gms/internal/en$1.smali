.class final Lcom/google/android/gms/internal/en$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/en;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic sj:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/en$1;->sj:Ljava/lang/Runnable;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    #@0
    const/16 v0, 0xa

    #@2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/en$1;->sj:Ljava/lang/Runnable;

    #@7
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@a
    return-void
.end method
