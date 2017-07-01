.class final Lcom/google/android/gms/internal/gh$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final Ci:Lcom/google/android/gms/cast/ApplicationMetadata;

.field private final Cj:Ljava/lang/String;

.field private final Ck:Z

.field private final rR:Ljava/lang/String;

.field private final yz:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .registers 8

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v3, v2

    #@5
    move-object v4, v2

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gh$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V

    #@9
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/gh$a;->yz:Lcom/google/android/gms/common/api/Status;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/gh$a;->Ci:Lcom/google/android/gms/cast/ApplicationMetadata;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/internal/gh$a;->Cj:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/internal/gh$a;->rR:Ljava/lang/String;

    #@b
    iput-boolean p5, p0, Lcom/google/android/gms/internal/gh$a;->Ck:Z

    #@d
    return-void
.end method


# virtual methods
.method public getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$a;->Ci:Lcom/google/android/gms/cast/ApplicationMetadata;

    #@2
    return-object v0
.end method

.method public getApplicationStatus()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$a;->Cj:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$a;->rR:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$a;->yz:Lcom/google/android/gms/common/api/Status;

    #@2
    return-object v0
.end method

.method public getWasLaunched()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gh$a;->Ck:Z

    #@2
    return v0
.end method
