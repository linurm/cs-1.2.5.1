.class public abstract Lcom/google/android/gms/dynamic/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamic/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final Ml:Ljava/lang/String;

.field private Mm:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/dynamic/g;->Ml:Ljava/lang/String;

    #@5
    return-void
.end method


# virtual methods
.method protected final G(Landroid/content/Context;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamic/g$a;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/g;->Mm:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_2b

    #@4
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    #@a
    move-result-object v0

    #@b
    if-nez v0, :cond_15

    #@d
    new-instance v0, Lcom/google/android/gms/dynamic/g$a;

    #@f
    const-string v1, "Could not get remote context."

    #@11
    invoke-direct {v0, v1}, Lcom/google/android/gms/dynamic/g$a;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    :cond_15
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@18
    move-result-object v0

    #@19
    :try_start_19
    iget-object v1, p0, Lcom/google/android/gms/dynamic/g;->Ml:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/os/IBinder;

    #@25
    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamic/g;->d(Landroid/os/IBinder;)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/google/android/gms/dynamic/g;->Mm:Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_2b} :catch_2e
    .catch Ljava/lang/InstantiationException; {:try_start_19 .. :try_end_2b} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_2b} :catch_40

    #@2b
    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/dynamic/g;->Mm:Ljava/lang/Object;

    #@2d
    return-object v0

    #@2e
    :catch_2e
    move-exception v0

    #@2f
    new-instance v0, Lcom/google/android/gms/dynamic/g$a;

    #@31
    const-string v1, "Could not load creator class."

    #@33
    invoke-direct {v0, v1}, Lcom/google/android/gms/dynamic/g$a;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    :catch_37
    move-exception v0

    #@38
    new-instance v0, Lcom/google/android/gms/dynamic/g$a;

    #@3a
    const-string v1, "Could not instantiate creator."

    #@3c
    invoke-direct {v0, v1}, Lcom/google/android/gms/dynamic/g$a;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    :catch_40
    move-exception v0

    #@41
    new-instance v0, Lcom/google/android/gms/dynamic/g$a;

    #@43
    const-string v1, "Could not access creator."

    #@45
    invoke-direct {v0, v1}, Lcom/google/android/gms/dynamic/g$a;-><init>(Ljava/lang/String;)V

    #@48
    throw v0
.end method

.method protected abstract d(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method
