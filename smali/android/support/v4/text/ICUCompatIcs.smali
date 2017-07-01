.class Landroid/support/v4/text/ICUCompatIcs;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ICUCompatIcs"

.field private static sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

.field private static sGetScriptMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    :try_start_0
    const-string v0, "libcore.icu.ICU"

    #@2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_28

    #@8
    const-string v1, "getScript"

    #@a
    const/4 v2, 0x1

    #@b
    new-array v2, v2, [Ljava/lang/Class;

    #@d
    const/4 v3, 0x0

    #@e
    const-class v4, Ljava/lang/String;

    #@10
    aput-object v4, v2, v3

    #@12
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@15
    move-result-object v1

    #@16
    sput-object v1, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    #@18
    const-string v1, "addLikelySubtags"

    #@1a
    const/4 v2, 0x1

    #@1b
    new-array v2, v2, [Ljava/lang/Class;

    #@1d
    const/4 v3, 0x0

    #@1e
    const-class v4, Ljava/lang/String;

    #@20
    aput-object v4, v2, v3

    #@22
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@25
    move-result-object v0

    #@26
    sput-object v0, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    #@28
    :cond_28
    :goto_28
    return-void

    #@29
    :catch_29
    move-exception v0

    #@2a
    const-string v1, "ICUCompatIcs"

    #@2c
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    goto :goto_28
.end method

.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addLikelySubtags(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    :try_start_0
    sget-object v0, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    #@2
    if-eqz v0, :cond_1a

    #@4
    sget-object v0, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    #@6
    const/4 v1, 0x0

    #@7
    const/4 v2, 0x1

    #@8
    new-array v2, v2, [Ljava/lang/Object;

    #@a
    const/4 v3, 0x0

    #@b
    aput-object p0, v2, v3

    #@d
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_13} :catch_1c

    #@13
    :goto_13
    return-object v0

    #@14
    :catch_14
    move-exception v0

    #@15
    const-string v1, "ICUCompatIcs"

    #@17
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    :cond_1a
    :goto_1a
    move-object v0, p0

    #@1b
    goto :goto_13

    #@1c
    :catch_1c
    move-exception v0

    #@1d
    const-string v1, "ICUCompatIcs"

    #@1f
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_1a
.end method

.method public static getScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    :try_start_1
    sget-object v0, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    #@3
    if-eqz v0, :cond_1b

    #@5
    sget-object v0, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    #@7
    const/4 v2, 0x0

    #@8
    const/4 v3, 0x1

    #@9
    new-array v3, v3, [Ljava/lang/Object;

    #@b
    const/4 v4, 0x0

    #@c
    aput-object p0, v3, v4

    #@e
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_14} :catch_15
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_14} :catch_1d

    #@14
    :goto_14
    return-object v0

    #@15
    :catch_15
    move-exception v0

    #@16
    const-string v2, "ICUCompatIcs"

    #@18
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    :cond_1b
    :goto_1b
    move-object v0, v1

    #@1c
    goto :goto_14

    #@1d
    :catch_1d
    move-exception v0

    #@1e
    const-string v2, "ICUCompatIcs"

    #@20
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@23
    goto :goto_1b
.end method
