.class Lcom/google/android/gms/tagmanager/q;
.super Lcom/google/android/gms/tagmanager/dc;


# static fields
.field private static final ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/a;->aj:Lcom/google/android/gms/internal/a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/tagmanager/q;->ID:Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/q;->ID:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/dc;-><init>(Ljava/lang/String;)V

    #@5
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)Z"
        }
    .end annotation

    #@0
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method
