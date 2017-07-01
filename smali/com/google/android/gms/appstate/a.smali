.class public final Lcom/google/android/gms/appstate/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/appstate/AppState;


# instance fields
.field private final yB:I

.field private final yC:Ljava/lang/String;

.field private final yD:[B

.field private final yE:Z

.field private final yF:Ljava/lang/String;

.field private final yG:[B


# direct methods
.method public constructor <init>(Lcom/google/android/gms/appstate/AppState;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getKey()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/google/android/gms/appstate/a;->yB:I

    #@9
    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getLocalVersion()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/google/android/gms/appstate/a;->yC:Ljava/lang/String;

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getLocalData()[B

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/google/android/gms/appstate/a;->yD:[B

    #@15
    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->hasConflict()Z

    #@18
    move-result v0

    #@19
    iput-boolean v0, p0, Lcom/google/android/gms/appstate/a;->yE:Z

    #@1b
    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getConflictVersion()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/google/android/gms/appstate/a;->yF:Ljava/lang/String;

    #@21
    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getConflictData()[B

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/google/android/gms/appstate/a;->yG:[B

    #@27
    return-void
.end method

.method static a(Lcom/google/android/gms/appstate/AppState;)I
    .registers 4

    #@0
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getKey()I

    #@7
    move-result v2

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    aput-object v2, v0, v1

    #@e
    const/4 v1, 0x1

    #@f
    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getLocalVersion()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    aput-object v2, v0, v1

    #@15
    const/4 v1, 0x2

    #@16
    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getLocalData()[B

    #@19
    move-result-object v2

    #@1a
    aput-object v2, v0, v1

    #@1c
    const/4 v1, 0x3

    #@1d
    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->hasConflict()Z

    #@20
    move-result v2

    #@21
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@24
    move-result-object v2

    #@25
    aput-object v2, v0, v1

    #@27
    const/4 v1, 0x4

    #@28
    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getConflictVersion()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    aput-object v2, v0, v1

    #@2e
    const/4 v1, 0x5

    #@2f
    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getConflictData()[B

    #@32
    move-result-object v2

    #@33
    aput-object v2, v0, v1

    #@35
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@38
    move-result v0

    #@39
    return v0
.end method

.method static a(Lcom/google/android/gms/appstate/AppState;Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    instance-of v2, p1, Lcom/google/android/gms/appstate/AppState;

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    if-eq p0, p1, :cond_6f

    #@9
    check-cast p1, Lcom/google/android/gms/appstate/AppState;

    #@b
    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getKey()I

    #@e
    move-result v2

    #@f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v2

    #@13
    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getKey()I

    #@16
    move-result v3

    #@17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_6

    #@21
    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getLocalVersion()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getLocalVersion()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_6

    #@2f
    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getLocalData()[B

    #@32
    move-result-object v2

    #@33
    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getLocalData()[B

    #@36
    move-result-object v3

    #@37
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_6

    #@3d
    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->hasConflict()Z

    #@40
    move-result v2

    #@41
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@44
    move-result-object v2

    #@45
    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->hasConflict()Z

    #@48
    move-result v3

    #@49
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4c
    move-result-object v3

    #@4d
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@50
    move-result v2

    #@51
    if-eqz v2, :cond_6

    #@53
    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getConflictVersion()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getConflictVersion()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5e
    move-result v2

    #@5f
    if-eqz v2, :cond_6

    #@61
    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getConflictData()[B

    #@64
    move-result-object v2

    #@65
    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getConflictData()[B

    #@68
    move-result-object v3

    #@69
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6c
    move-result v2

    #@6d
    if-eqz v2, :cond_6

    #@6f
    :cond_6f
    move v0, v1

    #@70
    goto :goto_6
.end method

.method static b(Lcom/google/android/gms/appstate/AppState;)Ljava/lang/String;
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "Key"

    #@6
    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getKey()I

    #@9
    move-result v2

    #@a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@11
    move-result-object v0

    #@12
    const-string v1, "LocalVersion"

    #@14
    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getLocalVersion()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@1b
    move-result-object v0

    #@1c
    const-string v1, "LocalData"

    #@1e
    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getLocalData()[B

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@25
    move-result-object v0

    #@26
    const-string v1, "HasConflict"

    #@28
    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->hasConflict()Z

    #@2b
    move-result v2

    #@2c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@33
    move-result-object v0

    #@34
    const-string v1, "ConflictVersion"

    #@36
    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getConflictVersion()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3d
    move-result-object v0

    #@3e
    const-string v1, "ConflictData"

    #@40
    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getConflictData()[B

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    return-object v0
.end method


# virtual methods
.method public dS()Lcom/google/android/gms/appstate/AppState;
    .registers 1

    #@0
    return-object p0
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
    invoke-virtual {p0}, Lcom/google/android/gms/appstate/a;->dS()Lcom/google/android/gms/appstate/AppState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getConflictData()[B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/appstate/a;->yG:[B

    #@2
    return-object v0
.end method

.method public getConflictVersion()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/appstate/a;->yF:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getKey()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/appstate/a;->yB:I

    #@2
    return v0
.end method

.method public getLocalData()[B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/appstate/a;->yD:[B

    #@2
    return-object v0
.end method

.method public getLocalVersion()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/appstate/a;->yC:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasConflict()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/appstate/a;->yE:Z

    #@2
    return v0
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

.method public isDataValid()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
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
