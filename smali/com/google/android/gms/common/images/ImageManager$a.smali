.class final Lcom/google/android/gms/common/images/ImageManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method static a(Landroid/app/ActivityManager;)I
    .registers 2

    #@0
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    #@3
    move-result v0

    #@4
    return v0
.end method
