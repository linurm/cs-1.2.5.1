.class public final Lcom/google/android/gms/appstate/b;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/appstate/AppState;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    return-void
.end method


# virtual methods
.method public dS()Lcom/google/android/gms/appstate/AppState;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/appstate/a;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/appstate/a;-><init>(Lcom/google/android/gms/appstate/AppState;)V

    #@5
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/appstate/a;->a(Lcom/google/android/gms/appstate/AppState;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/appstate/b;->dS()Lcom/google/android/gms/appstate/AppState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getConflictData()[B
    .registers 2

    #@0
    const-string v0, "conflict_data"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/appstate/b;->getByteArray(Ljava/lang/String;)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getConflictVersion()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "conflict_version"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/appstate/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getKey()I
    .registers 2

    #@0
    const-string v0, "key"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/appstate/b;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLocalData()[B
    .registers 2

    #@0
    const-string v0, "local_data"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/appstate/b;->getByteArray(Ljava/lang/String;)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLocalVersion()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "local_version"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/appstate/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hasConflict()Z
    .registers 2

    #@0
    const-string v0, "conflict_version"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/appstate/b;->ax(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/appstate/a;->a(Lcom/google/android/gms/appstate/AppState;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/appstate/a;->b(Lcom/google/android/gms/appstate/AppState;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
