.class final Lcom/google/android/gms/games/internal/RealTimeSocketImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;


# instance fields
.field private Fj:Landroid/os/ParcelFileDescriptor;

.field private final Oq:Ljava/lang/String;

.field private final Pd:Landroid/net/LocalSocket;


# direct methods
.method constructor <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/games/internal/RealTimeSocketImpl;->Pd:Landroid/net/LocalSocket;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/games/internal/RealTimeSocketImpl;->Oq:Ljava/lang/String;

    #@7
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/RealTimeSocketImpl;->Pd:Landroid/net/LocalSocket;

    #@2
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    #@5
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/RealTimeSocketImpl;->Pd:Landroid/net/LocalSocket;

    #@2
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/RealTimeSocketImpl;->Pd:Landroid/net/LocalSocket;

    #@2
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/RealTimeSocketImpl;->Fj:Landroid/os/ParcelFileDescriptor;

    #@2
    if-nez v0, :cond_21

    #@4
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/RealTimeSocketImpl;->isClosed()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_21

    #@a
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/google/android/gms/games/internal/RealTimeSocketImpl;->Pd:Landroid/net/LocalSocket;

    #@10
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    #@17
    const/4 v1, 0x0

    #@18
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@1b
    invoke-virtual {v0}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/google/android/gms/games/internal/RealTimeSocketImpl;->Fj:Landroid/os/ParcelFileDescriptor;

    #@21
    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/games/internal/RealTimeSocketImpl;->Fj:Landroid/os/ParcelFileDescriptor;

    #@23
    return-object v0
.end method

.method public isClosed()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/RealTimeSocketImpl;->Pd:Landroid/net/LocalSocket;

    #@2
    invoke-virtual {v0}, Landroid/net/LocalSocket;->isConnected()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_12

    #@8
    iget-object v0, p0, Lcom/google/android/gms/games/internal/RealTimeSocketImpl;->Pd:Landroid/net/LocalSocket;

    #@a
    invoke-virtual {v0}, Landroid/net/LocalSocket;->isBound()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    :goto_11
    return v0

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    goto :goto_11
.end method
