.class final Lcom/google/android/gms/common/images/ImageManager$b;
.super Lcom/google/android/gms/internal/hq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hq",
        "<",
        "Lcom/google/android/gms/common/images/a$a;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/images/ImageManager$b;->D(Landroid/content/Context;)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hq;-><init>(I)V

    #@7
    return-void
.end method

.method private static D(Landroid/content/Context;)I
    .registers 4

    #@0
    const/high16 v2, 0x100000

    #@2
    const-string v0, "activity"

    #@4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/app/ActivityManager;

    #@a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@d
    move-result-object v1

    #@e
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@10
    and-int/2addr v1, v2

    #@11
    if-eqz v1, :cond_28

    #@13
    const/4 v1, 0x1

    #@14
    :goto_14
    if-eqz v1, :cond_2a

    #@16
    invoke-static {}, Lcom/google/android/gms/internal/ip;->gc()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_2a

    #@1c
    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager$a;->a(Landroid/app/ActivityManager;)I

    #@1f
    move-result v0

    #@20
    :goto_20
    mul-int/2addr v0, v2

    #@21
    int-to-float v0, v0

    #@22
    const v1, 0x3ea8f5c3    # 0.33f

    #@25
    mul-float/2addr v0, v1

    #@26
    float-to-int v0, v0

    #@27
    return v0

    #@28
    :cond_28
    const/4 v1, 0x0

    #@29
    goto :goto_14

    #@2a
    :cond_2a
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    #@2d
    move-result v0

    #@2e
    goto :goto_20
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/images/a$a;Landroid/graphics/Bitmap;)I
    .registers 5

    #@0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    #@7
    move-result v1

    #@8
    mul-int/2addr v0, v1

    #@9
    return v0
.end method

.method protected a(ZLcom/google/android/gms/common/images/a$a;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 5

    #@0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/hq;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method protected synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    #@0
    check-cast p2, Lcom/google/android/gms/common/images/a$a;

    #@2
    check-cast p3, Landroid/graphics/Bitmap;

    #@4
    check-cast p4, Landroid/graphics/Bitmap;

    #@6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/images/ImageManager$b;->a(ZLcom/google/android/gms/common/images/a$a;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    #@9
    return-void
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    #@0
    check-cast p1, Lcom/google/android/gms/common/images/a$a;

    #@2
    check-cast p2, Landroid/graphics/Bitmap;

    #@4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/images/ImageManager$b;->a(Lcom/google/android/gms/common/images/a$a;Landroid/graphics/Bitmap;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
