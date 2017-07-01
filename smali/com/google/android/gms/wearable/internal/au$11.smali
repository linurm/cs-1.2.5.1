.class Lcom/google/android/gms/wearable/internal/au$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/au;->a(Landroid/os/ParcelFileDescriptor;[B)Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic amh:Lcom/google/android/gms/wearable/internal/au;

.field final synthetic amj:Landroid/os/ParcelFileDescriptor;

.field final synthetic yL:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/au;Landroid/os/ParcelFileDescriptor;[B)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/au$11;->amh:Lcom/google/android/gms/wearable/internal/au;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/au$11;->amj:Landroid/os/ParcelFileDescriptor;

    #@4
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/au$11;->yL:[B

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/au$11;->nt()Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nt()Ljava/lang/Boolean;
    .registers 6

    #@0
    const/4 v1, 0x3

    #@1
    const-string v0, "WearableClient"

    #@3
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_23

    #@9
    const-string v0, "WearableClient"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v2, "processAssets: writing data to FD : "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/au$11;->amj:Landroid/os/ParcelFileDescriptor;

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    :cond_23
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    #@25
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$11;->amj:Landroid/os/ParcelFileDescriptor;

    #@27
    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    #@2a
    :try_start_2a
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$11;->yL:[B

    #@2c
    invoke-virtual {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([B)V

    #@2f
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->flush()V

    #@32
    const-string v0, "WearableClient"

    #@34
    const/4 v2, 0x3

    #@35
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_55

    #@3b
    new-instance v0, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string v2, "WearableClient"

    #@42
    const-string v3, "processAssets: wrote data: "

    #@44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/au$11;->amj:Landroid/os/ParcelFileDescriptor;

    #@4a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_55} :catch_81
    .catchall {:try_start_2a .. :try_end_55} :catchall_c8

    #@55
    :cond_55
    const/4 v0, 0x1

    #@56
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@59
    move-result-object v0

    #@5a
    :try_start_5a
    const-string v2, "WearableClient"

    #@5c
    const/4 v3, 0x3

    #@5d
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@60
    move-result v2

    #@61
    if-eqz v2, :cond_7d

    #@63
    new-instance v2, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string v3, "WearableClient"

    #@6a
    const-string v4, "processAssets: closing: "

    #@6c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    iget-object v4, p0, Lcom/google/android/gms/wearable/internal/au$11;->amj:Landroid/os/ParcelFileDescriptor;

    #@72
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    :cond_7d
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_80} :catch_f0

    #@80
    :goto_80
    return-object v0

    #@81
    :catch_81
    move-exception v0

    #@82
    :try_start_82
    new-instance v0, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string v2, "WearableClient"

    #@89
    const-string v3, "processAssets: writing data failed: "

    #@8b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/au$11;->amj:Landroid/os/ParcelFileDescriptor;

    #@91
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v0

    #@95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v0

    #@99
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catchall {:try_start_82 .. :try_end_9c} :catchall_c8

    #@9c
    :try_start_9c
    const-string v0, "WearableClient"

    #@9e
    const/4 v2, 0x3

    #@9f
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@a2
    move-result v0

    #@a3
    if-eqz v0, :cond_bf

    #@a5
    new-instance v0, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string v2, "WearableClient"

    #@ac
    const-string v3, "processAssets: closing: "

    #@ae
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v0

    #@b2
    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/au$11;->amj:Landroid/os/ParcelFileDescriptor;

    #@b4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v0

    #@b8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v0

    #@bc
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@bf
    :cond_bf
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_c2} :catch_f2

    #@c2
    :goto_c2
    const/4 v0, 0x0

    #@c3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@c6
    move-result-object v0

    #@c7
    goto :goto_80

    #@c8
    :catchall_c8
    move-exception v0

    #@c9
    :try_start_c9
    const-string v2, "WearableClient"

    #@cb
    const/4 v3, 0x3

    #@cc
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@cf
    move-result v2

    #@d0
    if-eqz v2, :cond_ec

    #@d2
    new-instance v2, Ljava/lang/StringBuilder;

    #@d4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d7
    const-string v3, "WearableClient"

    #@d9
    const-string v4, "processAssets: closing: "

    #@db
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v2

    #@df
    iget-object v4, p0, Lcom/google/android/gms/wearable/internal/au$11;->amj:Landroid/os/ParcelFileDescriptor;

    #@e1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v2

    #@e5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e8
    move-result-object v2

    #@e9
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ec
    :cond_ec
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_ef} :catch_f4

    #@ef
    :goto_ef
    throw v0

    #@f0
    :catch_f0
    move-exception v1

    #@f1
    goto :goto_80

    #@f2
    :catch_f2
    move-exception v0

    #@f3
    goto :goto_c2

    #@f4
    :catch_f4
    move-exception v1

    #@f5
    goto :goto_ef
.end method
