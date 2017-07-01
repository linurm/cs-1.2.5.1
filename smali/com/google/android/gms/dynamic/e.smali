.class public final Lcom/google/android/gms/dynamic/e;
.super Lcom/google/android/gms/dynamic/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/dynamic/d$a;"
    }
.end annotation


# instance fields
.field private final Mk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/dynamic/d$a;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/dynamic/e;->Mk:Ljava/lang/Object;

    #@5
    return-void
.end method

.method public static e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/dynamic/d;",
            ")TT;"
        }
    .end annotation

    #@0
    const/4 v3, 0x1

    #@1
    instance-of v0, p0, Lcom/google/android/gms/dynamic/e;

    #@3
    if-eqz v0, :cond_a

    #@5
    check-cast p0, Lcom/google/android/gms/dynamic/e;

    #@7
    iget-object v0, p0, Lcom/google/android/gms/dynamic/e;->Mk:Ljava/lang/Object;

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@15
    move-result-object v1

    #@16
    array-length v2, v1

    #@17
    if-ne v2, v3, :cond_4d

    #@19
    const/4 v2, 0x0

    #@1a
    aget-object v1, v1, v2

    #@1c
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_45

    #@22
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@25
    :try_start_25
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_28} :catch_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_28} :catch_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_28} :catch_3c

    #@28
    move-result-object v0

    #@29
    goto :goto_9

    #@2a
    :catch_2a
    move-exception v0

    #@2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2d
    const-string v2, "Binder object is null."

    #@2f
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@32
    throw v1

    #@33
    :catch_33
    move-exception v0

    #@34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@36
    const-string v2, "remoteBinder is the wrong class."

    #@38
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3b
    throw v1

    #@3c
    :catch_3c
    move-exception v0

    #@3d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@3f
    const-string v2, "Could not access the field in remoteBinder."

    #@41
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@44
    throw v1

    #@45
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@47
    const-string v1, "The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class."

    #@49
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v0

    #@4d
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4f
    const-string v1, "The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class."

    #@51
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@54
    throw v0
.end method

.method public static h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/dynamic/d;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/dynamic/e;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/e;-><init>(Ljava/lang/Object;)V

    #@5
    return-object v0
.end method
