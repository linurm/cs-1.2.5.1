.class public final Lcom/android/dx/rop/code/RegisterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/rop/type/TypeBearer;
.implements Lcom/android/dx/util/ToHuman;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/rop/code/RegisterSpec$ForComparison;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/dx/rop/type/TypeBearer;",
        "Lcom/android/dx/util/ToHuman;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dx/rop/code/RegisterSpec;",
        ">;"
    }
.end annotation


# static fields
.field public static final PREFIX:Ljava/lang/String; = "v"

.field private static final theInterningItem:Lcom/android/dx/rop/code/RegisterSpec$ForComparison;

.field private static final theInterns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final local:Lcom/android/dx/rop/code/LocalItem;

.field private final reg:I

.field private final type:Lcom/android/dx/rop/type/TypeBearer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Ljava/util/HashMap;

    #@2
    const/16 v1, 0x3e8

    #@4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@7
    sput-object v0, Lcom/android/dx/rop/code/RegisterSpec;->theInterns:Ljava/util/HashMap;

    #@9
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpec$ForComparison;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/RegisterSpec$ForComparison;-><init>(Lcom/android/dx/rop/code/RegisterSpec$1;)V

    #@f
    sput-object v0, Lcom/android/dx/rop/code/RegisterSpec;->theInterningItem:Lcom/android/dx/rop/code/RegisterSpec$ForComparison;

    #@11
    return-void
.end method

.method private constructor <init>(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-gez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string v1, "reg < 0"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    if-nez p2, :cond_17

    #@f
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string v1, "type == null"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    :cond_17
    iput p1, p0, Lcom/android/dx/rop/code/RegisterSpec;->reg:I

    #@19
    iput-object p2, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@1b
    iput-object p3, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@1d
    return-void
.end method

.method synthetic constructor <init>(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;Lcom/android/dx/rop/code/RegisterSpec$1;)V
    .registers 5

    #@0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dx/rop/code/RegisterSpec;-><init>(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)V

    #@3
    return-void
.end method

.method static synthetic access$500(Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Z
    .registers 5

    #@0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dx/rop/code/RegisterSpec;->equals(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$600(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)I
    .registers 4

    #@0
    invoke-static {p0, p1, p2}, Lcom/android/dx/rop/code/RegisterSpec;->hashCodeOf(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private equals(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Z
    .registers 5

    #@0
    iget v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->reg:I

    #@2
    if-ne v0, p1, :cond_1e

    #@4
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@6
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1e

    #@c
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@e
    if-eq v0, p3, :cond_1c

    #@10
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@12
    if-eqz v0, :cond_1e

    #@14
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@16
    invoke-virtual {v0, p3}, Lcom/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1e

    #@1c
    :cond_1c
    const/4 v0, 0x1

    #@1d
    :goto_1d
    return v0

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    goto :goto_1d
.end method

.method private static hashCodeOf(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)I
    .registers 5

    #@0
    if-eqz p2, :cond_11

    #@2
    invoke-virtual {p2}, Lcom/android/dx/rop/code/LocalItem;->hashCode()I

    #@5
    move-result v0

    #@6
    :goto_6
    mul-int/lit8 v0, v0, 0x1f

    #@8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@b
    move-result v1

    #@c
    add-int/2addr v0, v1

    #@d
    mul-int/lit8 v0, v0, 0x1f

    #@f
    add-int/2addr v0, p0

    #@10
    return v0

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    goto :goto_6
.end method

.method private static intern(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;
    .registers 6

    #@0
    sget-object v1, Lcom/android/dx/rop/code/RegisterSpec;->theInterns:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/android/dx/rop/code/RegisterSpec;->theInterningItem:Lcom/android/dx/rop/code/RegisterSpec$ForComparison;

    #@5
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/dx/rop/code/RegisterSpec$ForComparison;->set(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)V

    #@8
    sget-object v0, Lcom/android/dx/rop/code/RegisterSpec;->theInterns:Ljava/util/HashMap;

    #@a
    sget-object v2, Lcom/android/dx/rop/code/RegisterSpec;->theInterningItem:Lcom/android/dx/rop/code/RegisterSpec$ForComparison;

    #@c
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    #@12
    if-eqz v0, :cond_16

    #@14
    monitor-exit v1

    #@15
    :goto_15
    return-object v0

    #@16
    :cond_16
    sget-object v0, Lcom/android/dx/rop/code/RegisterSpec;->theInterningItem:Lcom/android/dx/rop/code/RegisterSpec$ForComparison;

    #@18
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec$ForComparison;->toRegisterSpec()Lcom/android/dx/rop/code/RegisterSpec;

    #@1b
    move-result-object v0

    #@1c
    sget-object v2, Lcom/android/dx/rop/code/RegisterSpec;->theInterns:Ljava/util/HashMap;

    #@1e
    invoke-virtual {v2, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    monitor-exit v1

    #@22
    goto :goto_15

    #@23
    :catchall_23
    move-exception v0

    #@24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    #@25
    throw v0
.end method

.method public static make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Lcom/android/dx/rop/code/RegisterSpec;->intern(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static make(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;
    .registers 5

    #@0
    if-nez p2, :cond_a

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string v1, "local  == null"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    invoke-static {p0, p1, p2}, Lcom/android/dx/rop/code/RegisterSpec;->intern(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static makeLocalOptional(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;
    .registers 4

    #@0
    invoke-static {p0, p1, p2}, Lcom/android/dx/rop/code/RegisterSpec;->intern(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static regString(I)Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "v"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method private toString0(Z)Ljava/lang/String;
    .registers 5

    #@0
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    const/16 v0, 0x28

    #@4
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e
    const-string v0, ":"

    #@10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@13
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@15
    if-eqz v0, :cond_20

    #@17
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@19
    invoke-virtual {v0}, Lcom/android/dx/rop/code/LocalItem;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    :cond_20
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@22
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@29
    iget-object v2, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@2b
    if-eq v0, v2, :cond_45

    #@2d
    const-string v0, "="

    #@2f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@32
    if-eqz p1, :cond_4a

    #@34
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@36
    instance-of v0, v0, Lcom/android/dx/rop/cst/CstString;

    #@38
    if-eqz v0, :cond_4a

    #@3a
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@3c
    check-cast v0, Lcom/android/dx/rop/cst/CstString;

    #@3e
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@45
    :cond_45
    :goto_45
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    return-object v0

    #@4a
    :cond_4a
    if-eqz p1, :cond_5c

    #@4c
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@4e
    instance-of v0, v0, Lcom/android/dx/rop/cst/Constant;

    #@50
    if-eqz v0, :cond_5c

    #@52
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@54
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->toHuman()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5b
    goto :goto_45

    #@5c
    :cond_5c
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@5e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@61
    goto :goto_45
.end method


# virtual methods
.method public compareTo(Lcom/android/dx/rop/code/RegisterSpec;)I
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v2, -0x1

    #@2
    iget v1, p0, Lcom/android/dx/rop/code/RegisterSpec;->reg:I

    #@4
    iget v3, p1, Lcom/android/dx/rop/code/RegisterSpec;->reg:I

    #@6
    if-ge v1, v3, :cond_a

    #@8
    :cond_8
    move v0, v2

    #@9
    :cond_9
    :goto_9
    return v0

    #@a
    :cond_a
    iget v1, p0, Lcom/android/dx/rop/code/RegisterSpec;->reg:I

    #@c
    iget v3, p1, Lcom/android/dx/rop/code/RegisterSpec;->reg:I

    #@e
    if-gt v1, v3, :cond_9

    #@10
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@12
    invoke-interface {v1}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    #@15
    move-result-object v1

    #@16
    iget-object v3, p1, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@18
    invoke-interface {v3}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v1, v3}, Lcom/android/dx/rop/type/Type;->compareTo(Lcom/android/dx/rop/type/Type;)I

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_24

    #@22
    move v0, v1

    #@23
    goto :goto_9

    #@24
    :cond_24
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@26
    if-nez v1, :cond_2e

    #@28
    iget-object v0, p1, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@2a
    if-nez v0, :cond_8

    #@2c
    const/4 v0, 0x0

    #@2d
    goto :goto_9

    #@2e
    :cond_2e
    iget-object v1, p1, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@30
    if-eqz v1, :cond_9

    #@32
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@34
    iget-object v1, p1, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@36
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/LocalItem;->compareTo(Lcom/android/dx/rop/code/LocalItem;)I

    #@39
    move-result v0

    #@3a
    goto :goto_9
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    #@0
    check-cast p1, Lcom/android/dx/rop/code/RegisterSpec;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/code/RegisterSpec;->compareTo(Lcom/android/dx/rop/code/RegisterSpec;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    #@0
    instance-of v0, p1, Lcom/android/dx/rop/code/RegisterSpec;

    #@2
    if-nez v0, :cond_1d

    #@4
    instance-of v0, p1, Lcom/android/dx/rop/code/RegisterSpec$ForComparison;

    #@6
    if-eqz v0, :cond_1b

    #@8
    check-cast p1, Lcom/android/dx/rop/code/RegisterSpec$ForComparison;

    #@a
    # getter for: Lcom/android/dx/rop/code/RegisterSpec$ForComparison;->reg:I
    invoke-static {p1}, Lcom/android/dx/rop/code/RegisterSpec$ForComparison;->access$100(Lcom/android/dx/rop/code/RegisterSpec$ForComparison;)I

    #@d
    move-result v0

    #@e
    # getter for: Lcom/android/dx/rop/code/RegisterSpec$ForComparison;->type:Lcom/android/dx/rop/type/TypeBearer;
    invoke-static {p1}, Lcom/android/dx/rop/code/RegisterSpec$ForComparison;->access$200(Lcom/android/dx/rop/code/RegisterSpec$ForComparison;)Lcom/android/dx/rop/type/TypeBearer;

    #@11
    move-result-object v1

    #@12
    # getter for: Lcom/android/dx/rop/code/RegisterSpec$ForComparison;->local:Lcom/android/dx/rop/code/LocalItem;
    invoke-static {p1}, Lcom/android/dx/rop/code/RegisterSpec$ForComparison;->access$300(Lcom/android/dx/rop/code/RegisterSpec$ForComparison;)Lcom/android/dx/rop/code/LocalItem;

    #@15
    move-result-object v2

    #@16
    invoke-direct {p0, v0, v1, v2}, Lcom/android/dx/rop/code/RegisterSpec;->equals(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Z

    #@19
    move-result v0

    #@1a
    :goto_1a
    return v0

    #@1b
    :cond_1b
    const/4 v0, 0x0

    #@1c
    goto :goto_1a

    #@1d
    :cond_1d
    check-cast p1, Lcom/android/dx/rop/code/RegisterSpec;

    #@1f
    iget v0, p1, Lcom/android/dx/rop/code/RegisterSpec;->reg:I

    #@21
    iget-object v1, p1, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@23
    iget-object v2, p1, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@25
    invoke-direct {p0, v0, v1, v2}, Lcom/android/dx/rop/code/RegisterSpec;->equals(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Z

    #@28
    move-result v0

    #@29
    goto :goto_1a
.end method

.method public equalsUsingSimpleType(Lcom/android/dx/rop/code/RegisterSpec;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/code/RegisterSpec;->matchesVariable(Lcom/android/dx/rop/code/RegisterSpec;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_8

    #@7
    :cond_7
    :goto_7
    return v0

    #@8
    :cond_8
    iget v1, p0, Lcom/android/dx/rop/code/RegisterSpec;->reg:I

    #@a
    iget v2, p1, Lcom/android/dx/rop/code/RegisterSpec;->reg:I

    #@c
    if-ne v1, v2, :cond_7

    #@e
    const/4 v0, 0x1

    #@f
    goto :goto_7
.end method

.method public final getBasicFrameType()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@2
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->getBasicFrameType()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getBasicType()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@2
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->getBasicType()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCategory()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@2
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getCategory()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getFrameType()Lcom/android/dx/rop/type/TypeBearer;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@2
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->getFrameType()Lcom/android/dx/rop/type/TypeBearer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLocalItem()Lcom/android/dx/rop/code/LocalItem;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@2
    return-object v0
.end method

.method public getNextReg()I
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->reg:I

    #@2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@5
    move-result v1

    #@6
    add-int/2addr v0, v1

    #@7
    return v0
.end method

.method public getReg()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->reg:I

    #@2
    return v0
.end method

.method public getType()Lcom/android/dx/rop/type/Type;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@2
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    iget v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->reg:I

    #@2
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@4
    iget-object v2, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@6
    invoke-static {v0, v1, v2}, Lcom/android/dx/rop/code/RegisterSpec;->hashCodeOf(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public intersect(Lcom/android/dx/rop/code/RegisterSpec;Z)Lcom/android/dx/rop/code/RegisterSpec;
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    if-ne p0, p1, :cond_4

    #@3
    :cond_3
    :goto_3
    return-object p0

    #@4
    :cond_4
    if-eqz p1, :cond_5f

    #@6
    iget v1, p0, Lcom/android/dx/rop/code/RegisterSpec;->reg:I

    #@8
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@b
    move-result v2

    #@c
    if-ne v1, v2, :cond_5f

    #@e
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@10
    if-eqz v1, :cond_1e

    #@12
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@14
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Lcom/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-nez v1, :cond_50

    #@1e
    :cond_1e
    move-object v1, v0

    #@1f
    :goto_1f
    iget-object v2, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@21
    if-ne v1, v2, :cond_53

    #@23
    const/4 v2, 0x1

    #@24
    move v3, v2

    #@25
    :goto_25
    if-eqz p2, :cond_29

    #@27
    if-eqz v3, :cond_5f

    #@29
    :cond_29
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    #@30
    move-result-object v4

    #@31
    if-ne v2, v4, :cond_5f

    #@33
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@35
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_56

    #@3f
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@41
    :goto_41
    iget-object v2, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@43
    if-ne v0, v2, :cond_47

    #@45
    if-nez v3, :cond_3

    #@47
    :cond_47
    if-nez v1, :cond_58

    #@49
    iget v1, p0, Lcom/android/dx/rop/code/RegisterSpec;->reg:I

    #@4b
    invoke-static {v1, v0}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    #@4e
    move-result-object p0

    #@4f
    goto :goto_3

    #@50
    :cond_50
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@52
    goto :goto_1f

    #@53
    :cond_53
    const/4 v2, 0x0

    #@54
    move v3, v2

    #@55
    goto :goto_25

    #@56
    :cond_56
    move-object v0, v2

    #@57
    goto :goto_41

    #@58
    :cond_58
    iget v2, p0, Lcom/android/dx/rop/code/RegisterSpec;->reg:I

    #@5a
    invoke-static {v2, v0, v1}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    #@5d
    move-result-object p0

    #@5e
    goto :goto_3

    #@5f
    :cond_5f
    move-object p0, v0

    #@60
    goto :goto_3
.end method

.method public isCategory1()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@2
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->isCategory1()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isCategory2()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@2
    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->isCategory2()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final isConstant()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public matchesVariable(Lcom/android/dx/rop/code/RegisterSpec;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    :cond_3
    :goto_3
    return v0

    #@4
    :cond_4
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@6
    invoke-interface {v1}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p1, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@c
    invoke-interface {v2}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Lcom/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_3

    #@16
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@18
    iget-object v2, p1, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@1a
    if-eq v1, v2, :cond_2a

    #@1c
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@1e
    if-eqz v1, :cond_3

    #@20
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@22
    iget-object v2, p1, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@24
    invoke-virtual {v1, v2}, Lcom/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_3

    #@2a
    :cond_2a
    const/4 v0, 0x1

    #@2b
    goto :goto_3
.end method

.method public regString()Ljava/lang/String;
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->reg:I

    #@2
    invoke-static {v0}, Lcom/android/dx/rop/code/RegisterSpec;->regString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/dx/rop/code/RegisterSpec;->toString0(Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/dx/rop/code/RegisterSpec;->toString0(Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public withLocalItem(Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@2
    if-eq v0, p1, :cond_10

    #@4
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@6
    if-eqz v0, :cond_11

    #@8
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@a
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_11

    #@10
    :cond_10
    :goto_10
    return-object p0

    #@11
    :cond_11
    iget v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->reg:I

    #@13
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@15
    invoke-static {v0, v1, p1}, Lcom/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    #@18
    move-result-object p0

    #@19
    goto :goto_10
.end method

.method public withOffset(I)Lcom/android/dx/rop/code/RegisterSpec;
    .registers 3

    #@0
    if-nez p1, :cond_3

    #@2
    :goto_2
    return-object p0

    #@3
    :cond_3
    iget v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->reg:I

    #@5
    add-int/2addr v0, p1

    #@6
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@9
    move-result-object p0

    #@a
    goto :goto_2
.end method

.method public withReg(I)Lcom/android/dx/rop/code/RegisterSpec;
    .registers 4

    #@0
    iget v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->reg:I

    #@2
    if-ne v0, p1, :cond_5

    #@4
    :goto_4
    return-object p0

    #@5
    :cond_5
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@7
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@9
    invoke-static {p1, v0, v1}, Lcom/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    #@c
    move-result-object p0

    #@d
    goto :goto_4
.end method

.method public withSimpleType()Lcom/android/dx/rop/code/RegisterSpec;
    .registers 4

    #@0
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpec;->type:Lcom/android/dx/rop/type/TypeBearer;

    #@2
    instance-of v0, v1, Lcom/android/dx/rop/type/Type;

    #@4
    if-eqz v0, :cond_16

    #@6
    move-object v0, v1

    #@7
    check-cast v0, Lcom/android/dx/rop/type/Type;

    #@9
    :goto_9
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->isUninitialized()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_13

    #@f
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getInitializedType()Lcom/android/dx/rop/type/Type;

    #@12
    move-result-object v0

    #@13
    :cond_13
    if-ne v0, v1, :cond_1b

    #@15
    :goto_15
    return-object p0

    #@16
    :cond_16
    invoke-interface {v1}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    #@19
    move-result-object v0

    #@1a
    goto :goto_9

    #@1b
    :cond_1b
    iget v1, p0, Lcom/android/dx/rop/code/RegisterSpec;->reg:I

    #@1d
    iget-object v2, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@1f
    invoke-static {v1, v0, v2}, Lcom/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    #@22
    move-result-object p0

    #@23
    goto :goto_15
.end method

.method public withType(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;
    .registers 4

    #@0
    iget v0, p0, Lcom/android/dx/rop/code/RegisterSpec;->reg:I

    #@2
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpec;->local:Lcom/android/dx/rop/code/LocalItem;

    #@4
    invoke-static {v0, p1, v1}, Lcom/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
