.class public final Lcom/google/android/gms/maps/internal/t;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V
    .registers 5

    #@0
    const-class v0, Lcom/google/android/gms/maps/internal/t;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@9
    const-string v0, "map_state"

    #@b
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@e
    move-result-object v0

    #@f
    if-nez v0, :cond_16

    #@11
    new-instance v0, Landroid/os/Bundle;

    #@13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@16
    :cond_16
    const-class v1, Lcom/google/android/gms/maps/internal/t;

    #@18
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@1f
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@22
    const-string v1, "map_state"

    #@24
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@27
    return-void
.end method
