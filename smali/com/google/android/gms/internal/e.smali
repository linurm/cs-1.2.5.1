.class Lcom/google/android/gms/internal/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/m;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public a([BZ)Ljava/lang/String;
    .registers 4

    #@0
    if-eqz p2, :cond_9

    #@2
    const/16 v0, 0xb

    #@4
    :goto_4
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    :cond_9
    const/4 v0, 0x2

    #@a
    goto :goto_4
.end method

.method public a(Ljava/lang/String;Z)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    if-eqz p2, :cond_9

    #@2
    const/16 v0, 0xb

    #@4
    :goto_4
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    :cond_9
    const/4 v0, 0x2

    #@a
    goto :goto_4
.end method
