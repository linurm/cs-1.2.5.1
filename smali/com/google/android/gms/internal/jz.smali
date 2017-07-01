.class public Lcom/google/android/gms/internal/jz;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final VJ:Lcom/google/android/gms/internal/jj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/jj",
            "<",
            "Lcom/google/android/gms/internal/je;",
            ">;"
        }
    .end annotation
.end field

.field private final YT:Lcom/google/android/gms/internal/ka;

.field private final YU:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/google/android/gms/internal/jz;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/internal/jz;->TAG:Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/jj;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/jj",
            "<",
            "Lcom/google/android/gms/internal/je;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p2, p0, Lcom/google/android/gms/internal/jz;->VJ:Lcom/google/android/gms/internal/jj;

    #@5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/google/android/gms/internal/jz;->YU:Ljava/util/Locale;

    #@b
    new-instance v0, Lcom/google/android/gms/internal/ka;

    #@d
    iget-object v1, p0, Lcom/google/android/gms/internal/jz;->YU:Ljava/util/Locale;

    #@f
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ka;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@12
    iput-object v0, p0, Lcom/google/android/gms/internal/jz;->YT:Lcom/google/android/gms/internal/ka;

    #@14
    return-void
.end method
