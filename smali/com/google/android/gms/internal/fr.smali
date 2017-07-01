.class public Lcom/google/android/gms/internal/fr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/fs;


# instance fields
.field public final mP:Ljava/lang/String;

.field final xM:I

.field final yq:Lcom/google/android/gms/internal/fi;

.field final yr:J

.field final ys:I

.field final yt:Lcom/google/android/gms/internal/fg;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/fs;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/fs;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/fr;->CREATOR:Lcom/google/android/gms/internal/fs;

    #@7
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/fi;JILjava/lang/String;Lcom/google/android/gms/internal/fg;)V
    .registers 9

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/fr;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/fr;->yq:Lcom/google/android/gms/internal/fi;

    #@7
    iput-wide p3, p0, Lcom/google/android/gms/internal/fr;->yr:J

    #@9
    iput p5, p0, Lcom/google/android/gms/internal/fr;->ys:I

    #@b
    iput-object p6, p0, Lcom/google/android/gms/internal/fr;->mP:Ljava/lang/String;

    #@d
    iput-object p7, p0, Lcom/google/android/gms/internal/fr;->yt:Lcom/google/android/gms/internal/fg;

    #@f
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/fi;JI)V
    .registers 15

    #@0
    const/4 v7, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    move-object v1, p0

    #@3
    move-object v3, p1

    #@4
    move-wide v4, p2

    #@5
    move v6, p4

    #@6
    move-object v8, v7

    #@7
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/fr;-><init>(ILcom/google/android/gms/internal/fi;JILjava/lang/String;Lcom/google/android/gms/internal/fg;)V

    #@a
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v2, 0x1

    #@1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/fr;->a(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/internal/fi;

    #@4
    move-result-object v3

    #@5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@8
    move-result-wide v4

    #@9
    const/4 v6, 0x0

    #@a
    const/4 v7, 0x0

    #@b
    invoke-static {p2, p3, p4, p5, p6}, Lcom/google/android/gms/internal/fr;->a(Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/internal/fg;

    #@e
    move-result-object v8

    #@f
    move-object v1, p0

    #@10
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/fr;-><init>(ILcom/google/android/gms/internal/fi;JILjava/lang/String;Lcom/google/android/gms/internal/fg;)V

    #@13
    return-void
.end method

.method static a(Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/internal/fg;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;",
            ">;)",
            "Lcom/google/android/gms/internal/fg;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    invoke-static {p1}, Lcom/google/android/gms/internal/fr;->ab(Ljava/lang/String;)Lcom/google/android/gms/internal/fk;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@c
    if-eqz p2, :cond_15

    #@e
    invoke-static {p2}, Lcom/google/android/gms/internal/fr;->f(Landroid/net/Uri;)Lcom/google/android/gms/internal/fk;

    #@11
    move-result-object v1

    #@12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@15
    :cond_15
    if-eqz p4, :cond_1e

    #@17
    invoke-static {p4}, Lcom/google/android/gms/internal/fr;->a(Ljava/util/List;)Lcom/google/android/gms/internal/fk;

    #@1a
    move-result-object v1

    #@1b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1e
    :cond_1e
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    if-eqz v1, :cond_2d

    #@24
    const-string v2, "intent_action"

    #@26
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/fr;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/fk;

    #@29
    move-result-object v1

    #@2a
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2d
    :cond_2d
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    if-eqz v1, :cond_3c

    #@33
    const-string v2, "intent_data"

    #@35
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/fr;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/fk;

    #@38
    move-result-object v1

    #@39
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3c
    :cond_3c
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@3f
    move-result-object v1

    #@40
    if-eqz v1, :cond_4f

    #@42
    const-string v2, "intent_activity"

    #@44
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/fr;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/fk;

    #@4b
    move-result-object v1

    #@4c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4f
    :cond_4f
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@52
    move-result-object v1

    #@53
    if-eqz v1, :cond_66

    #@55
    const-string v2, "intent_extra_data_key"

    #@57
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    if-eqz v1, :cond_66

    #@5d
    const-string v2, "intent_extra_data"

    #@5f
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/fr;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/fk;

    #@62
    move-result-object v1

    #@63
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@66
    :cond_66
    new-instance v1, Lcom/google/android/gms/internal/fg;

    #@68
    const/4 v2, 0x1

    #@69
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@6c
    move-result v3

    #@6d
    new-array v3, v3, [Lcom/google/android/gms/internal/fk;

    #@6f
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@72
    move-result-object v0

    #@73
    check-cast v0, [Lcom/google/android/gms/internal/fk;

    #@75
    invoke-direct {v1, p3, v2, v0}, Lcom/google/android/gms/internal/fg;-><init>(Ljava/lang/String;Z[Lcom/google/android/gms/internal/fk;)V

    #@78
    return-object v1
.end method

.method public static a(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/internal/fi;
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/internal/fi;

    #@2
    const-string v1, ""

    #@4
    invoke-static {p1}, Lcom/google/android/gms/internal/fr;->f(Landroid/content/Intent;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/fi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@b
    return-object v0
.end method

.method private static a(Ljava/util/List;)Lcom/google/android/gms/internal/fk;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;",
            ">;)",
            "Lcom/google/android/gms/internal/fk;"
        }
    .end annotation

    #@0
    new-instance v2, Lcom/google/android/gms/internal/iv$a;

    #@2
    invoke-direct {v2}, Lcom/google/android/gms/internal/iv$a;-><init>()V

    #@5
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@8
    move-result v0

    #@9
    new-array v3, v0, [Lcom/google/android/gms/internal/iv$a$a;

    #@b
    const/4 v0, 0x0

    #@c
    move v1, v0

    #@d
    :goto_d
    array-length v0, v3

    #@e
    if-ge v1, v0, :cond_3b

    #@10
    new-instance v0, Lcom/google/android/gms/internal/iv$a$a;

    #@12
    invoke-direct {v0}, Lcom/google/android/gms/internal/iv$a$a;-><init>()V

    #@15
    aput-object v0, v3, v1

    #@17
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;

    #@1d
    aget-object v4, v3, v1

    #@1f
    iget-object v5, v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->appIndexingUrl:Landroid/net/Uri;

    #@21
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    iput-object v5, v4, Lcom/google/android/gms/internal/iv$a$a;->UA:Ljava/lang/String;

    #@27
    aget-object v4, v3, v1

    #@29
    iget-object v5, v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->webUrl:Landroid/net/Uri;

    #@2b
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    iput-object v5, v4, Lcom/google/android/gms/internal/iv$a$a;->UB:Ljava/lang/String;

    #@31
    aget-object v4, v3, v1

    #@33
    iget v0, v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->viewId:I

    #@35
    iput v0, v4, Lcom/google/android/gms/internal/iv$a$a;->viewId:I

    #@37
    add-int/lit8 v0, v1, 0x1

    #@39
    move v1, v0

    #@3a
    goto :goto_d

    #@3b
    :cond_3b
    iput-object v3, v2, Lcom/google/android/gms/internal/iv$a;->Uy:[Lcom/google/android/gms/internal/iv$a$a;

    #@3d
    new-instance v0, Lcom/google/android/gms/internal/fk;

    #@3f
    invoke-static {v2}, Lcom/google/android/gms/internal/me;->d(Lcom/google/android/gms/internal/me;)[B

    #@42
    move-result-object v1

    #@43
    new-instance v2, Lcom/google/android/gms/internal/fp$a;

    #@45
    const-string v3, "outlinks"

    #@47
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/fp$a;-><init>(Ljava/lang/String;)V

    #@4a
    const/4 v3, 0x1

    #@4b
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fp$a;->w(Z)Lcom/google/android/gms/internal/fp$a;

    #@4e
    move-result-object v2

    #@4f
    const-string v3, ".private:outLinks"

    #@51
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fp$a;->aa(Ljava/lang/String;)Lcom/google/android/gms/internal/fp$a;

    #@54
    move-result-object v2

    #@55
    const-string v3, "blob"

    #@57
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fp$a;->Z(Ljava/lang/String;)Lcom/google/android/gms/internal/fp$a;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/fp$a;->dQ()Lcom/google/android/gms/internal/fp;

    #@5e
    move-result-object v2

    #@5f
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fk;-><init>([BLcom/google/android/gms/internal/fp;)V

    #@62
    return-object v0
.end method

.method private static ab(Ljava/lang/String;)Lcom/google/android/gms/internal/fk;
    .registers 5

    #@0
    const/4 v3, 0x1

    #@1
    new-instance v0, Lcom/google/android/gms/internal/fk;

    #@3
    new-instance v1, Lcom/google/android/gms/internal/fp$a;

    #@5
    const-string v2, "title"

    #@7
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/fp$a;-><init>(Ljava/lang/String;)V

    #@a
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/fp$a;->I(I)Lcom/google/android/gms/internal/fp$a;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/fp$a;->x(Z)Lcom/google/android/gms/internal/fp$a;

    #@11
    move-result-object v1

    #@12
    const-string v2, "name"

    #@14
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/fp$a;->aa(Ljava/lang/String;)Lcom/google/android/gms/internal/fp$a;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fp$a;->dQ()Lcom/google/android/gms/internal/fp;

    #@1b
    move-result-object v1

    #@1c
    const-string v2, "text1"

    #@1e
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/fk;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/fp;Ljava/lang/String;)V

    #@21
    return-object v0
.end method

.method private static f(Landroid/net/Uri;)Lcom/google/android/gms/internal/fk;
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/internal/fk;

    #@2
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    new-instance v2, Lcom/google/android/gms/internal/fp$a;

    #@8
    const-string v3, "web_url"

    #@a
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/fp$a;-><init>(Ljava/lang/String;)V

    #@d
    const/4 v3, 0x4

    #@e
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fp$a;->I(I)Lcom/google/android/gms/internal/fp$a;

    #@11
    move-result-object v2

    #@12
    const/4 v3, 0x1

    #@13
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fp$a;->w(Z)Lcom/google/android/gms/internal/fp$a;

    #@16
    move-result-object v2

    #@17
    const-string v3, "url"

    #@19
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fp$a;->aa(Ljava/lang/String;)Lcom/google/android/gms/internal/fp$a;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/fp$a;->dQ()Lcom/google/android/gms/internal/fp;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fk;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/fp;)V

    #@24
    return-object v0
.end method

.method private static f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/fk;
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/internal/fk;

    #@2
    new-instance v1, Lcom/google/android/gms/internal/fp$a;

    #@4
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/fp$a;-><init>(Ljava/lang/String;)V

    #@7
    const/4 v2, 0x1

    #@8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/fp$a;->w(Z)Lcom/google/android/gms/internal/fp$a;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fp$a;->dQ()Lcom/google/android/gms/internal/fp;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, p1, v1, p0}, Lcom/google/android/gms/internal/fk;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/fp;Ljava/lang/String;)V

    #@13
    return-object v0
.end method

.method private static f(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    new-instance v1, Ljava/util/zip/CRC32;

    #@7
    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    #@a
    :try_start_a
    const-string v2, "UTF-8"

    #@c
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update([B)V
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_13} :catch_1c

    #@13
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    #@16
    move-result-wide v0

    #@17
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    :catch_1c
    move-exception v0

    #@1d
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1f
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@22
    throw v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/fr;->CREATOR:Lcom/google/android/gms/internal/fs;

    #@2
    const/4 v0, 0x0

    #@3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    #@0
    const-string v0, "UsageInfo[documentId=%s, timestamp=%d, usageType=%d]"

    #@2
    const/4 v1, 0x3

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    iget-object v3, p0, Lcom/google/android/gms/internal/fr;->yq:Lcom/google/android/gms/internal/fi;

    #@8
    aput-object v3, v1, v2

    #@a
    const/4 v2, 0x1

    #@b
    iget-wide v4, p0, Lcom/google/android/gms/internal/fr;->yr:J

    #@d
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@10
    move-result-object v3

    #@11
    aput-object v3, v1, v2

    #@13
    const/4 v2, 0x2

    #@14
    iget v3, p0, Lcom/google/android/gms/internal/fr;->ys:I

    #@16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v3

    #@1a
    aput-object v3, v1, v2

    #@1c
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/fr;->CREATOR:Lcom/google/android/gms/internal/fs;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fs;->a(Lcom/google/android/gms/internal/fr;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
