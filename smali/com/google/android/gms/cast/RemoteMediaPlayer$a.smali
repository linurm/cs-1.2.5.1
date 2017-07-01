.class Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/gp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/RemoteMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/RemoteMediaPlayer$a$a;
    }
.end annotation


# instance fields
.field final synthetic Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

.field private Bm:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private Bn:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const-wide/16 v0, 0x0

    #@7
    iput-wide v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->Bn:J

    #@9
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->Bm:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@2
    if-nez v0, :cond_c

    #@4
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string v1, "No GoogleApiClient available"

    #@8
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    #@e
    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->Bm:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@10
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/cast/Cast$CastApi;->sendMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    #@13
    move-result-object v0

    #@14
    new-instance v1, Lcom/google/android/gms/cast/RemoteMediaPlayer$a$a;

    #@16
    invoke-direct {v1, p0, p3, p4}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a$a;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer$a;J)V

    #@19
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    #@1c
    return-void
.end method

.method public b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->Bm:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@2
    return-void
.end method

.method public eb()J
    .registers 5

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->Bn:J

    #@2
    const-wide/16 v2, 0x1

    #@4
    add-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->Bn:J

    #@7
    return-wide v0
.end method
