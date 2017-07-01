.class final Lcom/google/android/gms/internal/bb$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/internal/ex;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ex;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const-string v0, "urls"

    #@4
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_16

    #@10
    const-string v0, "URLs missing in canOpenURLs GMSG."

    #@12
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@15
    :goto_15
    return-void

    #@16
    :cond_16
    const-string v3, ","

    #@18
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    new-instance v5, Ljava/util/HashMap;

    #@1e
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ex;->getContext()Landroid/content/Context;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@28
    move-result-object v6

    #@29
    array-length v7, v4

    #@2a
    move v3, v2

    #@2b
    :goto_2b
    if-ge v3, v7, :cond_67

    #@2d
    aget-object v8, v4, v3

    #@2f
    const-string v0, ";"

    #@31
    const/4 v9, 0x2

    #@32
    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    aget-object v9, v0, v2

    #@38
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3b
    move-result-object v9

    #@3c
    array-length v10, v0

    #@3d
    if-le v10, v1, :cond_62

    #@3f
    aget-object v0, v0, v1

    #@41
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    :goto_45
    new-instance v10, Landroid/content/Intent;

    #@47
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@4a
    move-result-object v9

    #@4b
    invoke-direct {v10, v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@4e
    const/high16 v0, 0x10000

    #@50
    invoke-virtual {v6, v10, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@53
    move-result-object v0

    #@54
    if-eqz v0, :cond_65

    #@56
    move v0, v1

    #@57
    :goto_57
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    add-int/lit8 v0, v3, 0x1

    #@60
    move v3, v0

    #@61
    goto :goto_2b

    #@62
    :cond_62
    const-string v0, "android.intent.action.VIEW"

    #@64
    goto :goto_45

    #@65
    :cond_65
    move v0, v2

    #@66
    goto :goto_57

    #@67
    :cond_67
    const-string v0, "openableURLs"

    #@69
    invoke-virtual {p1, v0, v5}, Lcom/google/android/gms/internal/ex;->a(Ljava/lang/String;Ljava/util/Map;)V

    #@6c
    goto :goto_15
.end method
