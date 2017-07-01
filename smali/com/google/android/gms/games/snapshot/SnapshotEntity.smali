.class public final Lcom/google/android/gms/games/snapshot/SnapshotEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/games/snapshot/Snapshot;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/snapshot/SnapshotEntityCreator;

.field private static final Ue:Ljava/lang/Object;


# instance fields
.field private HG:Lcom/google/android/gms/drive/Contents;

.field private final Uf:Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->Ue:Ljava/lang/Object;

    #@7
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotEntityCreator;

    #@9
    invoke-direct {v0}, Lcom/google/android/gms/games/snapshot/SnapshotEntityCreator;-><init>()V

    #@c
    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->CREATOR:Lcom/google/android/gms/games/snapshot/SnapshotEntityCreator;

    #@e
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/drive/Contents;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->xM:I

    #@5
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    #@7
    invoke-direct {v0, p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    #@a
    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->Uf:Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    #@c
    iput-object p3, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->HG:Lcom/google/android/gms/drive/Contents;

    #@e
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/drive/Contents;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(ILcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/drive/Contents;)V

    #@4
    return-void
.end method

.method private a(I[BIIZ)Z
    .registers 12

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->HG:Lcom/google/android/gms/drive/Contents;

    #@2
    const-string v1, "Must provide a previously opened Snapshot"

    #@4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    sget-object v1, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->Ue:Ljava/lang/Object;

    #@9
    monitor-enter v1

    #@a
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->HG:Lcom/google/android/gms/drive/Contents;

    #@c
    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@f
    move-result-object v0

    #@10
    new-instance v2, Ljava/io/FileOutputStream;

    #@12
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@15
    move-result-object v0

    #@16
    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@19
    new-instance v0, Ljava/io/BufferedOutputStream;

    #@1b
    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_41

    #@1e
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    #@21
    move-result-object v2

    #@22
    int-to-long v4, p1

    #@23
    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    #@26
    invoke-virtual {v0, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V

    #@29
    if-eqz p5, :cond_30

    #@2b
    array-length v3, p2

    #@2c
    int-to-long v4, v3

    #@2d
    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    #@30
    :cond_30
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_33} :catch_36
    .catchall {:try_start_1e .. :try_end_33} :catchall_41

    #@33
    const/4 v0, 0x1

    #@34
    :try_start_34
    monitor-exit v1

    #@35
    :goto_35
    return v0

    #@36
    :catch_36
    move-exception v0

    #@37
    const-string v2, "Snapshot"

    #@39
    const-string v3, "Failed to write snapshot data"

    #@3b
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/games/internal/GamesLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3e
    const/4 v0, 0x0

    #@3f
    monitor-exit v1

    #@40
    goto :goto_35

    #@41
    :catchall_41
    move-exception v0

    #@42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_41

    #@43
    throw v0
.end method

.method static a(Lcom/google/android/gms/games/snapshot/Snapshot;Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    instance-of v2, p1, Lcom/google/android/gms/games/snapshot/Snapshot;

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    if-eq p0, p1, :cond_27

    #@9
    check-cast p1, Lcom/google/android/gms/games/snapshot/Snapshot;

    #@b
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    #@e
    move-result-object v2

    #@f
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    #@12
    move-result-object v3

    #@13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_6

    #@19
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshot;->getContents()Lcom/google/android/gms/drive/Contents;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getContents()Lcom/google/android/gms/drive/Contents;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_6

    #@27
    :cond_27
    move v0, v1

    #@28
    goto :goto_6
.end method

.method static b(Lcom/google/android/gms/games/snapshot/Snapshot;)I
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    #@7
    move-result-object v2

    #@8
    aput-object v2, v0, v1

    #@a
    const/4 v1, 0x1

    #@b
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getContents()Lcom/google/android/gms/drive/Contents;

    #@e
    move-result-object v2

    #@f
    aput-object v2, v0, v1

    #@11
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method static c(Lcom/google/android/gms/games/snapshot/Snapshot;)Ljava/lang/String;
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "Metadata"

    #@6
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@d
    move-result-object v1

    #@e
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getContents()Lcom/google/android/gms/drive/Contents;

    #@11
    move-result-object v0

    #@12
    if-eqz v0, :cond_24

    #@14
    const/4 v0, 0x1

    #@15
    :goto_15
    const-string v2, "HasContents"

    #@17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0

    #@24
    :cond_24
    const/4 v0, 0x0

    #@25
    goto :goto_15
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->a(Lcom/google/android/gms/games/snapshot/Snapshot;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/snapshot/Snapshot;
    .registers 1

    #@0
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->freeze()Lcom/google/android/gms/games/snapshot/Snapshot;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getContents()Lcom/google/android/gms/drive/Contents;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->HG:Lcom/google/android/gms/drive/Contents;

    #@2
    return-object v0
.end method

.method public getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->Uf:Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    #@2
    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->b(Lcom/google/android/gms/games/snapshot/Snapshot;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public iM()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->HG:Lcom/google/android/gms/drive/Contents;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->close()V

    #@5
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->HG:Lcom/google/android/gms/drive/Contents;

    #@8
    return-void
.end method

.method public isDataValid()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public modifyBytes(I[BII)Z
    .registers 11

    #@0
    array-length v4, p2

    #@1
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->a(I[BIIZ)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public readFully()[B
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->HG:Lcom/google/android/gms/drive/Contents;

    #@2
    const-string v1, "Must provide a previously opened Snapshot"

    #@4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    sget-object v1, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->Ue:Ljava/lang/Object;

    #@9
    monitor-enter v1

    #@a
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->HG:Lcom/google/android/gms/drive/Contents;

    #@c
    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@f
    move-result-object v0

    #@10
    new-instance v2, Ljava/io/FileInputStream;

    #@12
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@15
    move-result-object v0

    #@16
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@19
    new-instance v3, Ljava/io/BufferedInputStream;

    #@1b
    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_40

    #@1e
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    #@21
    move-result-object v0

    #@22
    const-wide/16 v4, 0x0

    #@24
    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_27} :catch_37
    .catchall {:try_start_1e .. :try_end_27} :catchall_40

    #@27
    :goto_27
    const/4 v0, 0x0

    #@28
    :try_start_28
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ik;->a(Ljava/io/InputStream;Z)[B

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    #@2f
    move-result-object v2

    #@30
    const-wide/16 v4, 0x0

    #@32
    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_35} :catch_43
    .catchall {:try_start_28 .. :try_end_35} :catchall_40

    #@35
    :try_start_35
    monitor-exit v1

    #@36
    return-object v0

    #@37
    :catch_37
    move-exception v0

    #@38
    const-string v4, "Snapshot"

    #@3a
    const-string v5, "Failed to read snapshot data"

    #@3c
    invoke-static {v4, v5, v0}, Lcom/google/android/gms/games/internal/GamesLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3f
    goto :goto_27

    #@40
    :catchall_40
    move-exception v0

    #@41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_40

    #@42
    throw v0

    #@43
    :catch_43
    move-exception v0

    #@44
    :try_start_44
    new-instance v2, Ljava/lang/RuntimeException;

    #@46
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@49
    throw v2
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_40
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->c(Lcom/google/android/gms/games/snapshot/Snapshot;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeBytes([B)Z
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    array-length v4, p1

    #@2
    const/4 v5, 0x1

    #@3
    move-object v0, p0

    #@4
    move-object v2, p1

    #@5
    move v3, v1

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->a(I[BIIZ)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/snapshot/SnapshotEntityCreator;->a(Lcom/google/android/gms/games/snapshot/SnapshotEntity;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
