.class Lcom/google/android/gms/tagmanager/co$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/co$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/co;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;Lcom/google/android/gms/tagmanager/co$b;Lcom/google/android/gms/tagmanager/co$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic agT:Lcom/google/android/gms/tagmanager/co;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/co;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/co$1;->agT:Lcom/google/android/gms/tagmanager/co;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public mk()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    #@0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
