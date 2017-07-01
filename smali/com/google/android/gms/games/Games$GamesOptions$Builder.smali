.class public final Lcom/google/android/gms/games/Games$GamesOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games$GamesOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field MM:Z

.field MN:Z

.field MO:I

.field MP:Z

.field MQ:I

.field MR:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->MM:Z

    #@6
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->MN:Z

    #@9
    const/16 v0, 0x11

    #@b
    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->MO:I

    #@d
    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->MP:Z

    #@f
    const/16 v0, 0x1110

    #@11
    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->MQ:I

    #@13
    const/4 v0, 0x0

    #@14
    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->MR:Ljava/lang/String;

    #@16
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$1;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/games/Games$GamesOptions;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/games/Games$GamesOptions;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(Lcom/google/android/gms/games/Games$GamesOptions$Builder;Lcom/google/android/gms/games/Games$1;)V

    #@6
    return-object v0
.end method

.method public setSdkVariant(I)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->MQ:I

    #@2
    return-object p0
.end method

.method public setShowConnectingPopup(Z)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .registers 3

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->MN:Z

    #@2
    const/16 v0, 0x11

    #@4
    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->MO:I

    #@6
    return-object p0
.end method

.method public setShowConnectingPopup(ZI)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .registers 3

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->MN:Z

    #@2
    iput p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->MO:I

    #@4
    return-object p0
.end method
