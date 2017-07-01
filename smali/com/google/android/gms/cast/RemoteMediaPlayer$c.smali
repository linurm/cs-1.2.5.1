.class final Lcom/google/android/gms/cast/RemoteMediaPlayer$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/RemoteMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final AA:Lorg/json/JSONObject;

.field private final yz:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Lorg/json/JSONObject;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$c;->yz:Lcom/google/android/gms/common/api/Status;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$c;->AA:Lorg/json/JSONObject;

    #@7
    return-void
.end method


# virtual methods
.method public getCustomData()Lorg/json/JSONObject;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$c;->AA:Lorg/json/JSONObject;

    #@2
    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$c;->yz:Lcom/google/android/gms/common/api/Status;

    #@2
    return-object v0
.end method
