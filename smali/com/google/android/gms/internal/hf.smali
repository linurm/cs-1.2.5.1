.class public final Lcom/google/android/gms/internal/hf;
.super Ljava/lang/Object;


# instance fields
.field private final GI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/String;

    #@9
    iput-object v0, p0, Lcom/google/android/gms/internal/hf;->GI:Ljava/lang/String;

    #@b
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    #@0
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hf;->ap(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_a

    #@7
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a
    :cond_a
    return-void
.end method

.method public ap(I)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hf;->GI:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    #@0
    const/4 v0, 0x6

    #@1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hf;->ap(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_a

    #@7
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a
    :cond_a
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hf;->ap(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_a

    #@7
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    :cond_a
    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    const/4 v0, 0x5

    #@1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hf;->ap(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_a

    #@7
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    :cond_a
    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    const/4 v0, 0x6

    #@1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hf;->ap(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_a

    #@7
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    :cond_a
    return-void
.end method
