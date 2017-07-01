.class public final Lcom/google/android/gms/games/internal/JingleLog;
.super Ljava/lang/Object;


# static fields
.field private static final OV:Lcom/google/android/gms/internal/hf;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/internal/hf;

    #@2
    const-string v1, "GamesJingle"

    #@4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/hf;-><init>(Ljava/lang/String;)V

    #@7
    sput-object v0, Lcom/google/android/gms/games/internal/JingleLog;->OV:Lcom/google/android/gms/internal/hf;

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
