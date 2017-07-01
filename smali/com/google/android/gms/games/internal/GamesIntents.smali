.class public final Lcom/google/android/gms/games/internal/GamesIntents;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/lang/AssertionError;

    #@5
    const-string v1, "OneUpIntents should never be instantiated!"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@a
    throw v0
.end method
