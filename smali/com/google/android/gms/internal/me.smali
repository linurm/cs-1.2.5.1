.class public abstract Lcom/google/android/gms/internal/me;
.super Ljava/lang/Object;


# instance fields
.field protected volatile anb:I


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/internal/me;->anb:I

    #@6
    return-void
.end method

.method public static final a(Lcom/google/android/gms/internal/me;[B)Lcom/google/android/gms/internal/me;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/me;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/md;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    array-length v1, p1

    #@2
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/me;->b(Lcom/google/android/gms/internal/me;[BII)Lcom/google/android/gms/internal/me;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static final a(Lcom/google/android/gms/internal/me;[BII)V
    .registers 7

    #@0
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/lz;->b([BII)Lcom/google/android/gms/internal/lz;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/me;->a(Lcom/google/android/gms/internal/lz;)V

    #@7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/lz;->nR()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    #@a
    return-void

    #@b
    :catch_b
    move-exception v0

    #@c
    new-instance v1, Ljava/lang/RuntimeException;

    #@e
    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    #@10
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    throw v1
.end method

.method public static final b(Lcom/google/android/gms/internal/me;[BII)Lcom/google/android/gms/internal/me;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/me;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/md;
        }
    .end annotation

    #@0
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ly;->a([BII)Lcom/google/android/gms/internal/ly;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/me;->b(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/me;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ly;->eu(I)V
    :try_end_b
    .catch Lcom/google/android/gms/internal/md; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_e

    #@b
    return-object p0

    #@c
    :catch_c
    move-exception v0

    #@d
    throw v0

    #@e
    :catch_e
    move-exception v0

    #@f
    new-instance v0, Ljava/lang/RuntimeException;

    #@11
    const-string v1, "Reading from a byte array threw an IOException (should never happen)."

    #@13
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0
.end method

.method public static final d(Lcom/google/android/gms/internal/me;)[B
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/me;->oa()I

    #@3
    move-result v0

    #@4
    new-array v0, v0, [B

    #@6
    const/4 v1, 0x0

    #@7
    array-length v2, v0

    #@8
    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/internal/me;->a(Lcom/google/android/gms/internal/me;[BII)V

    #@b
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/lz;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    return-void
.end method

.method public abstract b(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/me;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected c()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public nZ()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/me;->anb:I

    #@2
    if-gez v0, :cond_7

    #@4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/me;->oa()I

    #@7
    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/me;->anb:I

    #@9
    return v0
.end method

.method public oa()I
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/me;->c()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Lcom/google/android/gms/internal/me;->anb:I

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/mf;->e(Lcom/google/android/gms/internal/me;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
