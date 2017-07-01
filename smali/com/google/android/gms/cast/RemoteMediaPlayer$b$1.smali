.class Lcom/google/android/gms/cast/RemoteMediaPlayer$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/gq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/RemoteMediaPlayer$b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Br:Lcom/google/android/gms/cast/RemoteMediaPlayer$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer$b;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$1;->Br:Lcom/google/android/gms/cast/RemoteMediaPlayer$b;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public a(JILorg/json/JSONObject;)V
    .registers 8

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$1;->Br:Lcom/google/android/gms/cast/RemoteMediaPlayer$b;

    #@2
    new-instance v1, Lcom/google/android/gms/cast/RemoteMediaPlayer$c;

    #@4
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    #@6
    invoke-direct {v2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@9
    invoke-direct {v1, v2, p4}, Lcom/google/android/gms/cast/RemoteMediaPlayer$c;-><init>(Lcom/google/android/gms/common/api/Status;Lorg/json/JSONObject;)V

    #@c
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b;->b(Lcom/google/android/gms/common/api/Result;)V

    #@f
    return-void
.end method

.method public n(J)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$1;->Br:Lcom/google/android/gms/cast/RemoteMediaPlayer$b;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$1;->Br:Lcom/google/android/gms/cast/RemoteMediaPlayer$b;

    #@4
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    #@6
    const/4 v3, 0x4

    #@7
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@a
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b;->l(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b;->b(Lcom/google/android/gms/common/api/Result;)V

    #@11
    return-void
.end method
