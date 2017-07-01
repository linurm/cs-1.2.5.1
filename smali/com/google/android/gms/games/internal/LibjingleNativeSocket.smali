.class public final Lcom/google/android/gms/games/internal/LibjingleNativeSocket;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final Fj:Landroid/os/ParcelFileDescriptor;

.field private final OW:Ljava/io/InputStream;

.field private final OX:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;->TAG:Ljava/lang/String;

    #@8
    return-void
.end method

.method constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;->Fj:Landroid/os/ParcelFileDescriptor;

    #@5
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    #@7
    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    #@a
    iput-object v0, p0, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;->OW:Ljava/io/InputStream;

    #@c
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    #@e
    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    #@11
    iput-object v0, p0, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;->OX:Ljava/io/OutputStream;

    #@13
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
    iget-object v0, p0, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;->Fj:Landroid/os/ParcelFileDescriptor;

    #@2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

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
    iget-object v0, p0, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;->OW:Ljava/io/InputStream;

    #@2
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
    iget-object v0, p0, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;->OX:Ljava/io/OutputStream;

    #@2
    return-object v0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;->Fj:Landroid/os/ParcelFileDescriptor;

    #@2
    return-object v0
.end method

.method public isClosed()Z
    .registers 2

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;->OW:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    #@5
    const/4 v0, 0x0

    #@6
    :goto_6
    return v0

    #@7
    :catch_7
    move-exception v0

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_6
.end method
