.class Lcom/google/android/gms/drive/internal/p$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/internal/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field private final IO:Lcom/google/android/gms/drive/MetadataBuffer;

.field private final IP:Z

.field private final yz:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/MetadataBuffer;Z)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/drive/internal/p$e;->yz:Lcom/google/android/gms/common/api/Status;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/drive/internal/p$e;->IO:Lcom/google/android/gms/drive/MetadataBuffer;

    #@7
    iput-boolean p3, p0, Lcom/google/android/gms/drive/internal/p$e;->IP:Z

    #@9
    return-void
.end method


# virtual methods
.method public getMetadataBuffer()Lcom/google/android/gms/drive/MetadataBuffer;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/p$e;->IO:Lcom/google/android/gms/drive/MetadataBuffer;

    #@2
    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/p$e;->yz:Lcom/google/android/gms/common/api/Status;

    #@2
    return-object v0
.end method
