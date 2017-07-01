.class public final Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;


# instance fields
.field private final Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILcom/google/android/gms/games/internal/player/PlayerColumnNames;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    iput-object p3, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@5
    return-void
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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->a(Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->iv()Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->a(Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public ip()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sg:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public iq()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sh:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public ir()J
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Si:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->getLong(Ljava/lang/String;)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public is()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sj:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->aw(Ljava/lang/String;)Landroid/net/Uri;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public it()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sk:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->aw(Ljava/lang/String;)Landroid/net/Uri;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public iu()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->Ng:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Sl:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->aw(Ljava/lang/String;)Landroid/net/Uri;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public iv()Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;-><init>(Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;)V

    #@5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->b(Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->iv()Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->writeToParcel(Landroid/os/Parcel;I)V

    #@9
    return-void
.end method
