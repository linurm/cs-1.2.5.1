.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadOwnerCoverPhotoUrisResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Players$LoadOwnerCoverPhotoUrisResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadOwnerCoverPhotoUrisResultImpl"
.end annotation


# instance fields
.field private final HM:Landroid/os/Bundle;

.field private final yz:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(ILandroid/os/Bundle;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@5
    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadOwnerCoverPhotoUrisResultImpl;->yz:Lcom/google/android/gms/common/api/Status;

    #@a
    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadOwnerCoverPhotoUrisResultImpl;->HM:Landroid/os/Bundle;

    #@c
    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadOwnerCoverPhotoUrisResultImpl;->yz:Lcom/google/android/gms/common/api/Status;

    #@2
    return-object v0
.end method
