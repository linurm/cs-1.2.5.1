.class Lcom/google/android/gms/cast/RemoteMediaPlayer$1;
.super Lcom/google/android/gms/internal/go;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/RemoteMediaPlayer;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$1;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@2
    invoke-direct {p0}, Lcom/google/android/gms/internal/go;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected onMetadataUpdated()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$1;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->b(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V

    #@5
    return-void
.end method

.method protected onStatusUpdated()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$1;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->a(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V

    #@5
    return-void
.end method
