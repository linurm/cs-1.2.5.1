.class public final Lcom/android/dx/rop/type/Prototype;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dx/rop/type/Prototype;",
        ">;"
    }
.end annotation


# static fields
.field private static final internTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/dx/rop/type/Prototype;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final descriptor:Ljava/lang/String;

.field private parameterFrameTypes:Lcom/android/dx/rop/type/StdTypeList;

.field private final parameterTypes:Lcom/android/dx/rop/type/StdTypeList;

.field private final returnType:Lcom/android/dx/rop/type/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Ljava/util/HashMap;

    #@2
    const/16 v1, 0x1f4

    #@4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@7
    sput-object v0, Lcom/android/dx/rop/type/Prototype;->internTable:Ljava/util/HashMap;

    #@9
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/StdTypeList;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "descriptor == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    if-nez p2, :cond_17

    #@f
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string v1, "returnType == null"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    :cond_17
    if-nez p3, :cond_21

    #@19
    new-instance v0, Ljava/lang/NullPointerException;

    #@1b
    const-string v1, "parameterTypes == null"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    :cond_21
    iput-object p1, p0, Lcom/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    #@23
    iput-object p2, p0, Lcom/android/dx/rop/type/Prototype;->returnType:Lcom/android/dx/rop/type/Type;

    #@25
    iput-object p3, p0, Lcom/android/dx/rop/type/Prototype;->parameterTypes:Lcom/android/dx/rop/type/StdTypeList;

    #@27
    const/4 v0, 0x0

    #@28
    iput-object v0, p0, Lcom/android/dx/rop/type/Prototype;->parameterFrameTypes:Lcom/android/dx/rop/type/StdTypeList;

    #@2a
    return-void
.end method

.method public static intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Prototype;
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    if-nez p0, :cond_b

    #@3
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string v1, "descriptor == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    :cond_b
    sget-object v2, Lcom/android/dx/rop/type/Prototype;->internTable:Ljava/util/HashMap;

    #@d
    monitor-enter v2

    #@e
    :try_start_e
    sget-object v0, Lcom/android/dx/rop/type/Prototype;->internTable:Ljava/util/HashMap;

    #@10
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/dx/rop/type/Prototype;

    #@16
    monitor-exit v2

    #@17
    if-eqz v0, :cond_1d

    #@19
    :goto_19
    return-object v0

    #@1a
    :catchall_1a
    move-exception v0

    #@1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    #@1c
    throw v0

    #@1d
    :cond_1d
    invoke-static {p0}, Lcom/android/dx/rop/type/Prototype;->makeParameterArray(Ljava/lang/String;)[Lcom/android/dx/rop/type/Type;

    #@20
    move-result-object v5

    #@21
    const/4 v0, 0x1

    #@22
    move v2, v0

    #@23
    move v0, v1

    #@24
    :goto_24
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@27
    move-result v3

    #@28
    const/16 v4, 0x29

    #@2a
    if-ne v3, v4, :cond_45

    #@2c
    add-int/lit8 v2, v2, 0x1

    #@2e
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-static {v2}, Lcom/android/dx/rop/type/Type;->internReturnType(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@35
    move-result-object v2

    #@36
    new-instance v3, Lcom/android/dx/rop/type/StdTypeList;

    #@38
    invoke-direct {v3, v0}, Lcom/android/dx/rop/type/StdTypeList;-><init>(I)V

    #@3b
    :goto_3b
    if-ge v1, v0, :cond_7a

    #@3d
    aget-object v4, v5, v1

    #@3f
    invoke-virtual {v3, v1, v4}, Lcom/android/dx/rop/type/StdTypeList;->set(ILcom/android/dx/rop/type/Type;)V

    #@42
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_3b

    #@45
    :cond_45
    move v4, v3

    #@46
    move v3, v2

    #@47
    :goto_47
    const/16 v6, 0x5b

    #@49
    if-ne v4, v6, :cond_52

    #@4b
    add-int/lit8 v3, v3, 0x1

    #@4d
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@50
    move-result v4

    #@51
    goto :goto_47

    #@52
    :cond_52
    const/16 v6, 0x4c

    #@54
    if-ne v4, v6, :cond_77

    #@56
    const/16 v4, 0x3b

    #@58
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    #@5b
    move-result v3

    #@5c
    const/4 v4, -0x1

    #@5d
    if-ne v3, v4, :cond_67

    #@5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@61
    const-string v1, "bad descriptor"

    #@63
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@66
    throw v0

    #@67
    :cond_67
    add-int/lit8 v3, v3, 0x1

    #@69
    :goto_69
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    invoke-static {v2}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@70
    move-result-object v2

    #@71
    aput-object v2, v5, v0

    #@73
    add-int/lit8 v0, v0, 0x1

    #@75
    move v2, v3

    #@76
    goto :goto_24

    #@77
    :cond_77
    add-int/lit8 v3, v3, 0x1

    #@79
    goto :goto_69

    #@7a
    :cond_7a
    new-instance v0, Lcom/android/dx/rop/type/Prototype;

    #@7c
    invoke-direct {v0, p0, v2, v3}, Lcom/android/dx/rop/type/Prototype;-><init>(Ljava/lang/String;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/StdTypeList;)V

    #@7f
    invoke-static {v0}, Lcom/android/dx/rop/type/Prototype;->putIntern(Lcom/android/dx/rop/type/Prototype;)Lcom/android/dx/rop/type/Prototype;

    #@82
    move-result-object v0

    #@83
    goto :goto_19
.end method

.method public static intern(Ljava/lang/String;Lcom/android/dx/rop/type/Type;ZZ)Lcom/android/dx/rop/type/Prototype;
    .registers 6

    #@0
    invoke-static {p0}, Lcom/android/dx/rop/type/Prototype;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Prototype;

    #@3
    move-result-object v0

    #@4
    if-eqz p2, :cond_7

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    if-eqz p3, :cond_10

    #@9
    const v1, 0x7fffffff

    #@c
    invoke-virtual {p1, v1}, Lcom/android/dx/rop/type/Type;->asUninitialized(I)Lcom/android/dx/rop/type/Type;

    #@f
    move-result-object p1

    #@10
    :cond_10
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/type/Prototype;->withFirstParameter(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Prototype;

    #@13
    move-result-object v0

    #@14
    goto :goto_6
.end method

.method public static internInts(Lcom/android/dx/rop/type/Type;I)Lcom/android/dx/rop/type/Prototype;
    .registers 5

    #@0
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    const/16 v0, 0x64

    #@4
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    const/16 v0, 0x28

    #@9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@c
    const/4 v0, 0x0

    #@d
    :goto_d
    if-ge v0, p1, :cond_17

    #@f
    const/16 v2, 0x49

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_d

    #@17
    :cond_17
    const/16 v0, 0x29

    #@19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1c
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-static {v0}, Lcom/android/dx/rop/type/Prototype;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Prototype;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method

.method private static makeParameterArray(Ljava/lang/String;)[Lcom/android/dx/rop/type/Type;
    .registers 8

    #@0
    const/16 v6, 0x29

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v3

    #@7
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v0

    #@b
    const/16 v1, 0x28

    #@d
    if-eq v0, v1, :cond_17

    #@f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string v1, "bad descriptor"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    :cond_17
    const/4 v1, 0x1

    #@18
    move v0, v2

    #@19
    :goto_19
    if-ge v1, v3, :cond_50

    #@1b
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v4

    #@1f
    if-ne v4, v6, :cond_2f

    #@21
    :goto_21
    if-eqz v1, :cond_27

    #@23
    add-int/lit8 v2, v3, -0x1

    #@25
    if-ne v1, v2, :cond_3c

    #@27
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@29
    const-string v1, "bad descriptor"

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    :cond_2f
    const/16 v5, 0x41

    #@31
    if-lt v4, v5, :cond_39

    #@33
    const/16 v5, 0x5a

    #@35
    if-gt v4, v5, :cond_39

    #@37
    add-int/lit8 v0, v0, 0x1

    #@39
    :cond_39
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_19

    #@3c
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    #@3e
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->indexOf(II)I

    #@41
    move-result v1

    #@42
    const/4 v2, -0x1

    #@43
    if-eq v1, v2, :cond_4d

    #@45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@47
    const-string v1, "bad descriptor"

    #@49
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v0

    #@4d
    :cond_4d
    new-array v0, v0, [Lcom/android/dx/rop/type/Type;

    #@4f
    return-object v0

    #@50
    :cond_50
    move v1, v2

    #@51
    goto :goto_21
.end method

.method private static putIntern(Lcom/android/dx/rop/type/Prototype;)Lcom/android/dx/rop/type/Prototype;
    .registers 4

    #@0
    sget-object v1, Lcom/android/dx/rop/type/Prototype;->internTable:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Prototype;->getDescriptor()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    sget-object v0, Lcom/android/dx/rop/type/Prototype;->internTable:Ljava/util/HashMap;

    #@9
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/dx/rop/type/Prototype;

    #@f
    if-eqz v0, :cond_13

    #@11
    monitor-exit v1

    #@12
    :goto_12
    return-object v0

    #@13
    :cond_13
    sget-object v0, Lcom/android/dx/rop/type/Prototype;->internTable:Ljava/util/HashMap;

    #@15
    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    monitor-exit v1

    #@19
    move-object v0, p0

    #@1a
    goto :goto_12

    #@1b
    :catchall_1b
    move-exception v0

    #@1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    #@1d
    throw v0
.end method


# virtual methods
.method public compareTo(Lcom/android/dx/rop/type/Prototype;)I
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    if-ne p0, p1, :cond_4

    #@3
    :cond_3
    :goto_3
    return v0

    #@4
    :cond_4
    iget-object v1, p0, Lcom/android/dx/rop/type/Prototype;->returnType:Lcom/android/dx/rop/type/Type;

    #@6
    iget-object v2, p1, Lcom/android/dx/rop/type/Prototype;->returnType:Lcom/android/dx/rop/type/Type;

    #@8
    invoke-virtual {v1, v2}, Lcom/android/dx/rop/type/Type;->compareTo(Lcom/android/dx/rop/type/Type;)I

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_10

    #@e
    move v0, v1

    #@f
    goto :goto_3

    #@10
    :cond_10
    iget-object v1, p0, Lcom/android/dx/rop/type/Prototype;->parameterTypes:Lcom/android/dx/rop/type/StdTypeList;

    #@12
    invoke-virtual {v1}, Lcom/android/dx/rop/type/StdTypeList;->size()I

    #@15
    move-result v3

    #@16
    iget-object v1, p1, Lcom/android/dx/rop/type/Prototype;->parameterTypes:Lcom/android/dx/rop/type/StdTypeList;

    #@18
    invoke-virtual {v1}, Lcom/android/dx/rop/type/StdTypeList;->size()I

    #@1b
    move-result v4

    #@1c
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@1f
    move-result v5

    #@20
    move v2, v0

    #@21
    :goto_21
    if-ge v2, v5, :cond_3b

    #@23
    iget-object v1, p0, Lcom/android/dx/rop/type/Prototype;->parameterTypes:Lcom/android/dx/rop/type/StdTypeList;

    #@25
    invoke-virtual {v1, v2}, Lcom/android/dx/rop/type/StdTypeList;->get(I)Lcom/android/dx/rop/type/Type;

    #@28
    move-result-object v1

    #@29
    iget-object v6, p1, Lcom/android/dx/rop/type/Prototype;->parameterTypes:Lcom/android/dx/rop/type/StdTypeList;

    #@2b
    invoke-virtual {v6, v2}, Lcom/android/dx/rop/type/StdTypeList;->get(I)Lcom/android/dx/rop/type/Type;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v1, v6}, Lcom/android/dx/rop/type/Type;->compareTo(Lcom/android/dx/rop/type/Type;)I

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_37

    #@35
    move v0, v1

    #@36
    goto :goto_3

    #@37
    :cond_37
    add-int/lit8 v1, v2, 0x1

    #@39
    move v2, v1

    #@3a
    goto :goto_21

    #@3b
    :cond_3b
    if-ge v3, v4, :cond_3f

    #@3d
    const/4 v0, -0x1

    #@3e
    goto :goto_3

    #@3f
    :cond_3f
    if-le v3, v4, :cond_3

    #@41
    const/4 v0, 0x1

    #@42
    goto :goto_3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    #@0
    check-cast p1, Lcom/android/dx/rop/type/Prototype;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/type/Prototype;->compareTo(Lcom/android/dx/rop/type/Prototype;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    if-ne p0, p1, :cond_4

    #@2
    const/4 v0, 0x1

    #@3
    :goto_3
    return v0

    #@4
    :cond_4
    instance-of v0, p1, Lcom/android/dx/rop/type/Prototype;

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    goto :goto_3

    #@a
    :cond_a
    iget-object v0, p0, Lcom/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    #@c
    check-cast p1, Lcom/android/dx/rop/type/Prototype;

    #@e
    iget-object v1, p1, Lcom/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    goto :goto_3
.end method

.method public getDescriptor()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getParameterFrameTypes()Lcom/android/dx/rop/type/StdTypeList;
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/rop/type/Prototype;->parameterFrameTypes:Lcom/android/dx/rop/type/StdTypeList;

    #@3
    if-nez v0, :cond_2e

    #@5
    iget-object v0, p0, Lcom/android/dx/rop/type/Prototype;->parameterTypes:Lcom/android/dx/rop/type/StdTypeList;

    #@7
    invoke-virtual {v0}, Lcom/android/dx/rop/type/StdTypeList;->size()I

    #@a
    move-result v4

    #@b
    new-instance v2, Lcom/android/dx/rop/type/StdTypeList;

    #@d
    invoke-direct {v2, v4}, Lcom/android/dx/rop/type/StdTypeList;-><init>(I)V

    #@10
    move v3, v1

    #@11
    :goto_11
    if-ge v3, v4, :cond_29

    #@13
    iget-object v0, p0, Lcom/android/dx/rop/type/Prototype;->parameterTypes:Lcom/android/dx/rop/type/StdTypeList;

    #@15
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/type/StdTypeList;->get(I)Lcom/android/dx/rop/type/Type;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->isIntlike()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_22

    #@1f
    const/4 v1, 0x1

    #@20
    sget-object v0, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    #@22
    :cond_22
    invoke-virtual {v2, v3, v0}, Lcom/android/dx/rop/type/StdTypeList;->set(ILcom/android/dx/rop/type/Type;)V

    #@25
    add-int/lit8 v0, v3, 0x1

    #@27
    move v3, v0

    #@28
    goto :goto_11

    #@29
    :cond_29
    if-eqz v1, :cond_31

    #@2b
    move-object v0, v2

    #@2c
    :goto_2c
    iput-object v0, p0, Lcom/android/dx/rop/type/Prototype;->parameterFrameTypes:Lcom/android/dx/rop/type/StdTypeList;

    #@2e
    :cond_2e
    iget-object v0, p0, Lcom/android/dx/rop/type/Prototype;->parameterFrameTypes:Lcom/android/dx/rop/type/StdTypeList;

    #@30
    return-object v0

    #@31
    :cond_31
    iget-object v0, p0, Lcom/android/dx/rop/type/Prototype;->parameterTypes:Lcom/android/dx/rop/type/StdTypeList;

    #@33
    goto :goto_2c
.end method

.method public getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/type/Prototype;->parameterTypes:Lcom/android/dx/rop/type/StdTypeList;

    #@2
    return-object v0
.end method

.method public getReturnType()Lcom/android/dx/rop/type/Type;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/type/Prototype;->returnType:Lcom/android/dx/rop/type/Type;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public withFirstParameter(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Prototype;
    .registers 6

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "("

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p1}, Lcom/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Lcom/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    #@15
    const/4 v2, 0x1

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iget-object v1, p0, Lcom/android/dx/rop/type/Prototype;->parameterTypes:Lcom/android/dx/rop/type/StdTypeList;

    #@24
    invoke-virtual {v1, p1}, Lcom/android/dx/rop/type/StdTypeList;->withFirst(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Lcom/android/dx/rop/type/StdTypeList;->setImmutable()V

    #@2b
    new-instance v2, Lcom/android/dx/rop/type/Prototype;

    #@2d
    iget-object v3, p0, Lcom/android/dx/rop/type/Prototype;->returnType:Lcom/android/dx/rop/type/Type;

    #@2f
    invoke-direct {v2, v0, v3, v1}, Lcom/android/dx/rop/type/Prototype;-><init>(Ljava/lang/String;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/StdTypeList;)V

    #@32
    invoke-static {v2}, Lcom/android/dx/rop/type/Prototype;->putIntern(Lcom/android/dx/rop/type/Prototype;)Lcom/android/dx/rop/type/Prototype;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method
