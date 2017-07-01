.class public Lcom/google/android/gms/analytics/StandardExceptionParser;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/ExceptionParser;


# instance fields
.field private final xd:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/TreeSet;

    #@5
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/analytics/StandardExceptionParser;->xd:Ljava/util/TreeSet;

    #@a
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/analytics/StandardExceptionParser;->setIncludedPackages(Landroid/content/Context;Ljava/util/Collection;)V

    #@d
    return-void
.end method


# virtual methods
.method protected getBestStackTraceElement(Ljava/lang/Throwable;)Ljava/lang/StackTraceElement;
    .registers 10

    #@0
    const/4 v3, 0x0

    #@1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@4
    move-result-object v4

    #@5
    if-eqz v4, :cond_a

    #@7
    array-length v0, v4

    #@8
    if-nez v0, :cond_c

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    array-length v5, v4

    #@d
    move v2, v3

    #@e
    :goto_e
    if-ge v2, v5, :cond_34

    #@10
    aget-object v1, v4, v2

    #@12
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@15
    move-result-object v6

    #@16
    iget-object v0, p0, Lcom/google/android/gms/analytics/StandardExceptionParser;->xd:Ljava/util/TreeSet;

    #@18
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v7

    #@1c
    :cond_1c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_30

    #@22
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Ljava/lang/String;

    #@28
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_1c

    #@2e
    move-object v0, v1

    #@2f
    goto :goto_b

    #@30
    :cond_30
    add-int/lit8 v0, v2, 0x1

    #@32
    move v2, v0

    #@33
    goto :goto_e

    #@34
    :cond_34
    aget-object v0, v4, v3

    #@36
    goto :goto_b
.end method

.method protected getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3

    #@0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_b

    #@6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@9
    move-result-object p1

    #@a
    goto :goto_0

    #@b
    :cond_b
    return-object p1
.end method

.method public getDescription(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5

    #@0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/analytics/StandardExceptionParser;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/analytics/StandardExceptionParser;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/StandardExceptionParser;->getBestStackTraceElement(Ljava/lang/Throwable;)Ljava/lang/StackTraceElement;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/analytics/StandardExceptionParser;->getDescription(Ljava/lang/Throwable;Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method protected getDescription(Ljava/lang/Throwable;Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    #@0
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    if-eqz p2, :cond_49

    #@14
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    const-string v2, "\\."

    #@1a
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    const-string v0, "unknown"

    #@20
    if-eqz v2, :cond_2a

    #@22
    array-length v3, v2

    #@23
    if-lez v3, :cond_2a

    #@25
    array-length v0, v2

    #@26
    add-int/lit8 v0, v0, -0x1

    #@28
    aget-object v0, v2, v0

    #@2a
    :cond_2a
    const-string v2, " (@%s:%s:%s)"

    #@2c
    const/4 v3, 0x3

    #@2d
    new-array v3, v3, [Ljava/lang/Object;

    #@2f
    aput-object v0, v3, v5

    #@31
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    aput-object v0, v3, v6

    #@37
    const/4 v0, 0x2

    #@38
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@3b
    move-result v4

    #@3c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3f
    move-result-object v4

    #@40
    aput-object v4, v3, v0

    #@42
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    :cond_49
    if-eqz p3, :cond_58

    #@4b
    const-string v0, " {%s}"

    #@4d
    new-array v2, v6, [Ljava/lang/Object;

    #@4f
    aput-object p3, v2, v5

    #@51
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    :cond_58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    return-object v0
.end method

.method public setIncludedPackages(Landroid/content/Context;Ljava/util/Collection;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v3, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/analytics/StandardExceptionParser;->xd:Ljava/util/TreeSet;

    #@3
    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    #@6
    new-instance v1, Ljava/util/HashSet;

    #@8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@b
    if-eqz p2, :cond_10

    #@d
    invoke-interface {v1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@10
    :cond_10
    if-eqz p1, :cond_45

    #@12
    :try_start_12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    iget-object v2, p0, Lcom/google/android/gms/analytics/StandardExceptionParser;->xd:Ljava/util/TreeSet;

    #@1c
    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@1f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@26
    move-result-object v2

    #@27
    const/16 v4, 0xf

    #@29
    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@2c
    move-result-object v0

    #@2d
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    #@2f
    if-eqz v2, :cond_45

    #@31
    array-length v4, v2

    #@32
    move v0, v3

    #@33
    :goto_33
    if-ge v0, v4, :cond_45

    #@35
    aget-object v5, v2, v0

    #@37
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@39
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_3c} :catch_3f

    #@3c
    add-int/lit8 v0, v0, 0x1

    #@3e
    goto :goto_33

    #@3f
    :catch_3f
    move-exception v0

    #@40
    const-string v0, "No package found"

    #@42
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->B(Ljava/lang/String;)V

    #@45
    :cond_45
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@48
    move-result-object v4

    #@49
    :cond_49
    :goto_49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@4c
    move-result v0

    #@4d
    if-eqz v0, :cond_84

    #@4f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@52
    move-result-object v0

    #@53
    check-cast v0, Ljava/lang/String;

    #@55
    iget-object v1, p0, Lcom/google/android/gms/analytics/StandardExceptionParser;->xd:Ljava/util/TreeSet;

    #@57
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    #@5a
    move-result-object v5

    #@5b
    const/4 v1, 0x1

    #@5c
    move v2, v1

    #@5d
    :goto_5d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@60
    move-result v1

    #@61
    if-eqz v1, :cond_7a

    #@63
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@66
    move-result-object v1

    #@67
    check-cast v1, Ljava/lang/String;

    #@69
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6c
    move-result v6

    #@6d
    if-nez v6, :cond_82

    #@6f
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@72
    move-result v5

    #@73
    if-eqz v5, :cond_7a

    #@75
    iget-object v5, p0, Lcom/google/android/gms/analytics/StandardExceptionParser;->xd:Ljava/util/TreeSet;

    #@77
    invoke-virtual {v5, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    #@7a
    :cond_7a
    if-eqz v2, :cond_49

    #@7c
    iget-object v1, p0, Lcom/google/android/gms/analytics/StandardExceptionParser;->xd:Ljava/util/TreeSet;

    #@7e
    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@81
    goto :goto_49

    #@82
    :cond_82
    move v2, v3

    #@83
    goto :goto_5d

    #@84
    :cond_84
    return-void
.end method
