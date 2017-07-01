.class Lcom/google/android/gms/tagmanager/al;
.super Lcom/google/android/gms/tagmanager/bx;


# static fields
.field private static final ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/a;->ao:Lcom/google/android/gms/internal/a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/tagmanager/al;->ID:Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/al;->ID:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/bx;-><init>(Ljava/lang/String;)V

    #@5
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/tagmanager/dg;Lcom/google/android/gms/tagmanager/dg;Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/dg;",
            "Lcom/google/android/gms/tagmanager/dg;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)Z"
        }
    .end annotation

    #@0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tagmanager/dg;->a(Lcom/google/android/gms/tagmanager/dg;)I

    #@3
    move-result v0

    #@4
    if-ltz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method
