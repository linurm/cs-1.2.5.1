.class final Lcom/google/android/gms/common/images/ImageManager$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final Fc:Lcom/google/android/gms/common/images/ImageManager$b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager$b;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$e;->Fc:Lcom/google/android/gms/common/images/ImageManager$b;

    #@5
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    #@0
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$e;->Fc:Lcom/google/android/gms/common/images/ImageManager$b;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager$b;->evictAll()V

    #@5
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 4

    #@0
    const/16 v0, 0x3c

    #@2
    if-lt p1, v0, :cond_a

    #@4
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$e;->Fc:Lcom/google/android/gms/common/images/ImageManager$b;

    #@6
    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager$b;->evictAll()V

    #@9
    :cond_9
    :goto_9
    return-void

    #@a
    :cond_a
    const/16 v0, 0x14

    #@c
    if-lt p1, v0, :cond_9

    #@e
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$e;->Fc:Lcom/google/android/gms/common/images/ImageManager$b;

    #@10
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$e;->Fc:Lcom/google/android/gms/common/images/ImageManager$b;

    #@12
    invoke-virtual {v1}, Lcom/google/android/gms/common/images/ImageManager$b;->size()I

    #@15
    move-result v1

    #@16
    div-int/lit8 v1, v1, 0x2

    #@18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/images/ImageManager$b;->trimToSize(I)V

    #@1b
    goto :goto_9
.end method
