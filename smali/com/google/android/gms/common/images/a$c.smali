.class public final Lcom/google/android/gms/common/images/a$c;
.super Lcom/google/android/gms/common/images/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private Ft:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/images/a;-><init>(Landroid/net/Uri;I)V

    #@4
    invoke-static {p1}, Lcom/google/android/gms/internal/gx;->c(Ljava/lang/Object;)V

    #@7
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@9
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@c
    iput-object v0, p0, Lcom/google/android/gms/common/images/a$c;->Ft:Ljava/lang/ref/WeakReference;

    #@e
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/drawable/Drawable;ZZZ)V
    .registers 7

    #@0
    if-nez p3, :cond_13

    #@2
    iget-object v0, p0, Lcom/google/android/gms/common/images/a$c;->Ft:Ljava/lang/ref/WeakReference;

    #@4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    #@a
    if-eqz v0, :cond_13

    #@c
    iget-object v1, p0, Lcom/google/android/gms/common/images/a$c;->Fm:Lcom/google/android/gms/common/images/a$a;

    #@e
    iget-object v1, v1, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    #@10
    invoke-interface {v0, v1, p1, p4}, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;->onImageLoaded(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V

    #@13
    :cond_13
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    instance-of v0, p1, Lcom/google/android/gms/common/images/a$c;

    #@4
    if-nez v0, :cond_8

    #@6
    move v0, v3

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    if-ne p0, p1, :cond_c

    #@a
    move v0, v2

    #@b
    goto :goto_7

    #@c
    :cond_c
    check-cast p1, Lcom/google/android/gms/common/images/a$c;

    #@e
    iget-object v0, p0, Lcom/google/android/gms/common/images/a$c;->Ft:Ljava/lang/ref/WeakReference;

    #@10
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    #@16
    iget-object v1, p1, Lcom/google/android/gms/common/images/a$c;->Ft:Ljava/lang/ref/WeakReference;

    #@18
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    #@1e
    if-eqz v1, :cond_34

    #@20
    if-eqz v0, :cond_34

    #@22
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_34

    #@28
    iget-object v0, p1, Lcom/google/android/gms/common/images/a$c;->Fm:Lcom/google/android/gms/common/images/a$a;

    #@2a
    iget-object v1, p0, Lcom/google/android/gms/common/images/a$c;->Fm:Lcom/google/android/gms/common/images/a$a;

    #@2c
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_34

    #@32
    move v0, v2

    #@33
    goto :goto_7

    #@34
    :cond_34
    move v0, v3

    #@35
    goto :goto_7
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    iget-object v2, p0, Lcom/google/android/gms/common/images/a$c;->Fm:Lcom/google/android/gms/common/images/a$a;

    #@6
    aput-object v2, v0, v1

    #@8
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@b
    move-result v0

    #@c
    return v0
.end method
