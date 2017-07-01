.class Lcom/google/android/gms/tagmanager/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/bi;


# instance fields
.field private tN:I


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x5

    #@4
    iput v0, p0, Lcom/google/android/gms/tagmanager/x;->tN:I

    #@6
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .registers 4

    #@0
    iget v0, p0, Lcom/google/android/gms/tagmanager/x;->tN:I

    #@2
    const/4 v1, 0x6

    #@3
    if-gt v0, v1, :cond_a

    #@5
    const-string v0, "GoogleTagManager"

    #@7
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    :cond_a
    return-void
.end method

.method public B(Ljava/lang/String;)V
    .registers 4

    #@0
    iget v0, p0, Lcom/google/android/gms/tagmanager/x;->tN:I

    #@2
    const/4 v1, 0x4

    #@3
    if-gt v0, v1, :cond_a

    #@5
    const-string v0, "GoogleTagManager"

    #@7
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    :cond_a
    return-void
.end method

.method public C(Ljava/lang/String;)V
    .registers 4

    #@0
    iget v0, p0, Lcom/google/android/gms/tagmanager/x;->tN:I

    #@2
    const/4 v1, 0x2

    #@3
    if-gt v0, v1, :cond_a

    #@5
    const-string v0, "GoogleTagManager"

    #@7
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    :cond_a
    return-void
.end method

.method public D(Ljava/lang/String;)V
    .registers 4

    #@0
    iget v0, p0, Lcom/google/android/gms/tagmanager/x;->tN:I

    #@2
    const/4 v1, 0x5

    #@3
    if-gt v0, v1, :cond_a

    #@5
    const-string v0, "GoogleTagManager"

    #@7
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    :cond_a
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    #@0
    iget v0, p0, Lcom/google/android/gms/tagmanager/x;->tN:I

    #@2
    const/4 v1, 0x6

    #@3
    if-gt v0, v1, :cond_a

    #@5
    const-string v0, "GoogleTagManager"

    #@7
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a
    :cond_a
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    #@0
    iget v0, p0, Lcom/google/android/gms/tagmanager/x;->tN:I

    #@2
    const/4 v1, 0x5

    #@3
    if-gt v0, v1, :cond_a

    #@5
    const-string v0, "GoogleTagManager"

    #@7
    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a
    :cond_a
    return-void
.end method

.method public setLogLevel(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/tagmanager/x;->tN:I

    #@2
    return-void
.end method

.method public z(Ljava/lang/String;)V
    .registers 4

    #@0
    iget v0, p0, Lcom/google/android/gms/tagmanager/x;->tN:I

    #@2
    const/4 v1, 0x3

    #@3
    if-gt v0, v1, :cond_a

    #@5
    const-string v0, "GoogleTagManager"

    #@7
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    :cond_a
    return-void
.end method
