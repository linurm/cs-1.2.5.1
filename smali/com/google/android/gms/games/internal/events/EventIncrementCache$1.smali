.class Lcom/google/android/gms/games/internal/events/EventIncrementCache$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/events/EventIncrementCache;->u(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Rr:Lcom/google/android/gms/games/internal/events/EventIncrementCache;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/events/EventIncrementCache;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache$1;->Rr:Lcom/google/android/gms/games/internal/events/EventIncrementCache;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/events/EventIncrementCache$1;->Rr:Lcom/google/android/gms/games/internal/events/EventIncrementCache;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementCache;->a(Lcom/google/android/gms/games/internal/events/EventIncrementCache;)V

    #@5
    return-void
.end method
