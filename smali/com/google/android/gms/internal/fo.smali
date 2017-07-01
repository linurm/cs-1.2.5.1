.class public Lcom/google/android/gms/internal/fo;
.super Ljava/lang/Object;


# static fields
.field private static final xZ:[Ljava/lang/String;

.field private static final ya:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/16 v1, 0x9

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    const-string v2, "text1"

    #@7
    aput-object v2, v1, v0

    #@9
    const/4 v2, 0x1

    #@a
    const-string v3, "text2"

    #@c
    aput-object v3, v1, v2

    #@e
    const/4 v2, 0x2

    #@f
    const-string v3, "icon"

    #@11
    aput-object v3, v1, v2

    #@13
    const/4 v2, 0x3

    #@14
    const-string v3, "intent_action"

    #@16
    aput-object v3, v1, v2

    #@18
    const/4 v2, 0x4

    #@19
    const-string v3, "intent_data"

    #@1b
    aput-object v3, v1, v2

    #@1d
    const/4 v2, 0x5

    #@1e
    const-string v3, "intent_data_id"

    #@20
    aput-object v3, v1, v2

    #@22
    const/4 v2, 0x6

    #@23
    const-string v3, "intent_extra_data"

    #@25
    aput-object v3, v1, v2

    #@27
    const/4 v2, 0x7

    #@28
    const-string v3, "suggest_large_icon"

    #@2a
    aput-object v3, v1, v2

    #@2c
    const/16 v2, 0x8

    #@2e
    const-string v3, "intent_activity"

    #@30
    aput-object v3, v1, v2

    #@32
    sput-object v1, Lcom/google/android/gms/internal/fo;->xZ:[Ljava/lang/String;

    #@34
    new-instance v1, Ljava/util/HashMap;

    #@36
    sget-object v2, Lcom/google/android/gms/internal/fo;->xZ:[Ljava/lang/String;

    #@38
    array-length v2, v2

    #@39
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    #@3c
    sput-object v1, Lcom/google/android/gms/internal/fo;->ya:Ljava/util/Map;

    #@3e
    :goto_3e
    sget-object v1, Lcom/google/android/gms/internal/fo;->xZ:[Ljava/lang/String;

    #@40
    array-length v1, v1

    #@41
    if-ge v0, v1, :cond_53

    #@43
    sget-object v1, Lcom/google/android/gms/internal/fo;->ya:Ljava/util/Map;

    #@45
    sget-object v2, Lcom/google/android/gms/internal/fo;->xZ:[Ljava/lang/String;

    #@47
    aget-object v2, v2, v0

    #@49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v3

    #@4d
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    add-int/lit8 v0, v0, 0x1

    #@52
    goto :goto_3e

    #@53
    :cond_53
    return-void
.end method

.method public static H(I)Ljava/lang/String;
    .registers 2

    #@0
    if-ltz p0, :cond_7

    #@2
    sget-object v0, Lcom/google/android/gms/internal/fo;->xZ:[Ljava/lang/String;

    #@4
    array-length v0, v0

    #@5
    if-lt p0, v0, :cond_9

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    :goto_8
    return-object v0

    #@9
    :cond_9
    sget-object v0, Lcom/google/android/gms/internal/fo;->xZ:[Ljava/lang/String;

    #@b
    aget-object v0, v0, p0

    #@d
    goto :goto_8
.end method

.method public static Y(Ljava/lang/String;)I
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/fo;->ya:Ljava/util/Map;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    if-nez v0, :cond_29

    #@a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string v2, "["

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string v2, "] is not a valid global search section name"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    :cond_29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@2c
    move-result v0

    #@2d
    return v0
.end method

.method public static dP()I
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/fo;->xZ:[Ljava/lang/String;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method
