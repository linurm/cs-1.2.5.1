.class public final Lcom/google/android/gms/games/internal/GamesLog;
.super Ljava/lang/Object;


# static fields
.field private static final OV:Lcom/google/android/gms/internal/hf;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/internal/hf;

    #@2
    const-string v1, "Games"

    #@4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/hf;-><init>(Ljava/lang/String;)V

    #@7
    sput-object v0, Lcom/google/android/gms/games/internal/GamesLog;->OV:Lcom/google/android/gms/internal/hf;

    #@9
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/games/internal/GamesLog;->OV:Lcom/google/android/gms/internal/hf;

    #@2
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/hf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/games/internal/GamesLog;->OV:Lcom/google/android/gms/internal/hf;

    #@2
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/hf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    #@0
    sget-object v0, Lcom/google/android/gms/games/internal/GamesLog;->OV:Lcom/google/android/gms/internal/hf;

    #@2
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/hf;->i(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    #@0
    sget-object v0, Lcom/google/android/gms/games/internal/GamesLog;->OV:Lcom/google/android/gms/internal/hf;

    #@2
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/hf;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    #@0
    sget-object v0, Lcom/google/android/gms/games/internal/GamesLog;->OV:Lcom/google/android/gms/internal/hf;

    #@2
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/hf;->k(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method
