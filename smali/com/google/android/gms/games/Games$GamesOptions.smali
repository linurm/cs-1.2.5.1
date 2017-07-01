.class public final Lcom/google/android/gms/games/Games$GamesOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GamesOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    }
.end annotation


# instance fields
.field final MM:Z

.field final MN:Z

.field final MO:I

.field final MP:Z

.field final MQ:I

.field final MR:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->MM:Z

    #@6
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->MN:Z

    #@9
    const/16 v0, 0x11

    #@b
    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->MO:I

    #@d
    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->MP:Z

    #@f
    const/16 v0, 0x1110

    #@11
    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->MQ:I

    #@13
    const/4 v0, 0x0

    #@14
    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->MR:Ljava/lang/String;

    #@16
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$1;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/games/Games$GamesOptions$Builder;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->MM:Z

    #@5
    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->MM:Z

    #@7
    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->MN:Z

    #@9
    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->MN:Z

    #@b
    iget v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->MO:I

    #@d
    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->MO:I

    #@f
    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->MP:Z

    #@11
    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->MP:Z

    #@13
    iget v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->MQ:I

    #@15
    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->MQ:I

    #@17
    iget-object v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->MR:Ljava/lang/String;

    #@19
    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->MR:Ljava/lang/String;

    #@1b
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$GamesOptions$Builder;Lcom/google/android/gms/games/Games$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(Lcom/google/android/gms/games/Games$GamesOptions$Builder;)V

    #@3
    return-void
.end method

.method public static builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>(Lcom/google/android/gms/games/Games$1;)V

    #@6
    return-object v0
.end method
