.class abstract Lcom/google/android/gms/drive/internal/v$f;
.super Lcom/google/android/gms/drive/internal/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/internal/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/internal/q",
        "<",
        "Lcom/google/android/gms/drive/DriveResource$MetadataResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Jl:Lcom/google/android/gms/drive/internal/v;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/drive/internal/v;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/drive/internal/v$f;->Jl:Lcom/google/android/gms/drive/internal/v;

    #@2
    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/q;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/drive/internal/v;Lcom/google/android/gms/drive/internal/v$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/v$f;-><init>(Lcom/google/android/gms/drive/internal/v;)V

    #@3
    return-void
.end method


# virtual methods
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/v$f;->u(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveResource$MetadataResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public u(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveResource$MetadataResult;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/drive/internal/v$e;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/drive/internal/v$e;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Metadata;)V

    #@6
    return-object v0
.end method
