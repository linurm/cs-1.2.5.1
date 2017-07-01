.class public final Lcom/google/android/gms/internal/fy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/appindexing/AppIndexApi;
.implements Lcom/google/android/gms/internal/ft;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fy$a;,
        Lcom/google/android/gms/internal/fy$b;,
        Lcom/google/android/gms/internal/fy$c;,
        Lcom/google/android/gms/internal/fy$d;,
        Lcom/google/android/gms/internal/fy$e;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static a(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 7

    #@0
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const-string v0, "android-app"

    #@4
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_27

    #@e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string v2, "Uri scheme must be android-app: "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    :cond_27
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v0

    #@2f
    if-nez v0, :cond_4a

    #@31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@33
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string v2, "Uri host must match package name: "

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v0

    #@4a
    :cond_4a
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@4d
    move-result-object v2

    #@4e
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@51
    move-result v0

    #@52
    if-nez v0, :cond_60

    #@54
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@57
    move-result-object v0

    #@58
    check-cast v0, Ljava/lang/String;

    #@5a
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@5d
    move-result v0

    #@5e
    if-eqz v0, :cond_79

    #@60
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@62
    new-instance v1, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string v2, "Uri path must exist: "

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@78
    throw v0

    #@79
    :cond_79
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7c
    move-result-object v0

    #@7d
    check-cast v0, Ljava/lang/String;

    #@7f
    new-instance v3, Landroid/net/Uri$Builder;

    #@81
    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    #@84
    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@87
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@8a
    move-result v0

    #@8b
    if-le v0, v4, :cond_ab

    #@8d
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@90
    move-result-object v0

    #@91
    check-cast v0, Ljava/lang/String;

    #@93
    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@96
    const/4 v0, 0x2

    #@97
    move v1, v0

    #@98
    :goto_98
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@9b
    move-result v0

    #@9c
    if-ge v1, v0, :cond_ab

    #@9e
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a1
    move-result-object v0

    #@a2
    check-cast v0, Ljava/lang/String;

    #@a4
    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@a7
    add-int/lit8 v0, v1, 0x1

    #@a9
    move v1, v0

    #@aa
    goto :goto_98

    #@ab
    :cond_ab
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    #@ae
    move-result-object v0

    #@af
    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@b2
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    #@b5
    move-result-object v0

    #@b6
    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@b9
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@bc
    move-result-object v0

    #@bd
    return-object v0
.end method


# virtual methods
.method public varargs a(Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/internal/fr;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "[",
            "Lcom/google/android/gms/internal/fr;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v1, Lcom/google/android/gms/internal/fy$2;

    #@2
    sget-object v0, Lcom/google/android/gms/internal/ff;->xI:Lcom/google/android/gms/common/api/Api$c;

    #@4
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/google/android/gms/internal/fx;

    #@a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fx;->getContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/gms/internal/fy$2;-><init>(Lcom/google/android/gms/internal/fy;Ljava/lang/String;[Lcom/google/android/gms/internal/fr;)V

    #@15
    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public view(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    new-array v7, v0, [Lcom/google/android/gms/internal/fr;

    #@3
    const/4 v8, 0x0

    #@4
    new-instance v0, Lcom/google/android/gms/internal/fr;

    #@6
    sget-object v1, Lcom/google/android/gms/internal/ff;->xI:Lcom/google/android/gms/common/api/Api$c;

    #@8
    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Lcom/google/android/gms/internal/fx;

    #@e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fx;->getContext()Landroid/content/Context;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    const/4 v5, 0x0

    #@17
    move-object v2, p3

    #@18
    move-object v3, p4

    #@19
    move-object v4, p5

    #@1a
    move-object v6, p6

    #@1b
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/fr;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V

    #@1e
    aput-object v0, v7, v8

    #@20
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/fy;->a(Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/internal/fr;)Lcom/google/android/gms/common/api/PendingResult;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method public view(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/app/Activity;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v3, Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.action.VIEW"

    #@4
    sget-object v0, Lcom/google/android/gms/internal/ff;->xI:Lcom/google/android/gms/common/api/Api$c;

    #@6
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/google/android/gms/internal/fx;

    #@c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fx;->getContext()Landroid/content/Context;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/fy;->a(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    #@17
    move-result-object v0

    #@18
    invoke-direct {v3, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@1b
    move-object v0, p0

    #@1c
    move-object v1, p1

    #@1d
    move-object v2, p2

    #@1e
    move-object v4, p4

    #@1f
    move-object v5, p5

    #@20
    move-object v6, p6

    #@21
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/fy;->view(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method

.method public viewEnd(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Landroid/content/Intent;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    new-array v1, v0, [Lcom/google/android/gms/internal/fr;

    #@3
    const/4 v2, 0x0

    #@4
    new-instance v3, Lcom/google/android/gms/internal/fr;

    #@6
    sget-object v0, Lcom/google/android/gms/internal/ff;->xI:Lcom/google/android/gms/common/api/Api$c;

    #@8
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/google/android/gms/internal/fx;

    #@e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fx;->getContext()Landroid/content/Context;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/fr;->a(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/internal/fi;

    #@19
    move-result-object v0

    #@1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1d
    move-result-wide v4

    #@1e
    const/4 v6, 0x3

    #@1f
    invoke-direct {v3, v0, v4, v5, v6}, Lcom/google/android/gms/internal/fr;-><init>(Lcom/google/android/gms/internal/fi;JI)V

    #@22
    aput-object v3, v1, v2

    #@24
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/fy;->a(Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/internal/fr;)Lcom/google/android/gms/common/api/PendingResult;

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method

.method public viewEnd(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/app/Activity;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v1, Landroid/content/Intent;

    #@2
    const-string v2, "android.intent.action.VIEW"

    #@4
    sget-object v0, Lcom/google/android/gms/internal/ff;->xI:Lcom/google/android/gms/common/api/Api$c;

    #@6
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/google/android/gms/internal/fx;

    #@c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fx;->getContext()Landroid/content/Context;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/fy;->a(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    #@17
    move-result-object v0

    #@18
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@1b
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/fy;->viewEnd(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Landroid/content/Intent;)Lcom/google/android/gms/common/api/PendingResult;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method
