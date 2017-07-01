.class public final Lcom/android/dx/dex/code/SwitchData;
.super Lcom/android/dx/dex/code/VariableSizeInsn;


# instance fields
.field private final cases:Lcom/android/dx/util/IntList;

.field private final packed:Z

.field private final targets:[Lcom/android/dx/dex/code/CodeAddress;

.field private final user:Lcom/android/dx/dex/code/CodeAddress;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/dex/code/CodeAddress;Lcom/android/dx/util/IntList;[Lcom/android/dx/dex/code/CodeAddress;)V
    .registers 7

    #@0
    sget-object v0, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/dx/dex/code/VariableSizeInsn;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@5
    if-nez p2, :cond_f

    #@7
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    const-string v1, "user == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    :cond_f
    if-nez p3, :cond_19

    #@11
    new-instance v0, Ljava/lang/NullPointerException;

    #@13
    const-string v1, "cases == null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    :cond_19
    if-nez p4, :cond_23

    #@1b
    new-instance v0, Ljava/lang/NullPointerException;

    #@1d
    const-string v1, "targets == null"

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    :cond_23
    invoke-virtual {p3}, Lcom/android/dx/util/IntList;->size()I

    #@26
    move-result v0

    #@27
    array-length v1, p4

    #@28
    if-eq v0, v1, :cond_32

    #@2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2c
    const-string v1, "cases / targets mismatch"

    #@2e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    :cond_32
    const v1, 0xffff

    #@35
    if-le v0, v1, :cond_3f

    #@37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@39
    const-string v1, "too many cases"

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    :cond_3f
    iput-object p2, p0, Lcom/android/dx/dex/code/SwitchData;->user:Lcom/android/dx/dex/code/CodeAddress;

    #@41
    iput-object p3, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    #@43
    iput-object p4, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    #@45
    invoke-static {p3}, Lcom/android/dx/dex/code/SwitchData;->shouldPack(Lcom/android/dx/util/IntList;)Z

    #@48
    move-result v0

    #@49
    iput-boolean v0, p0, Lcom/android/dx/dex/code/SwitchData;->packed:Z

    #@4b
    return-void
.end method

.method private static packedCodeSize(Lcom/android/dx/util/IntList;)J
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, v1}, Lcom/android/dx/util/IntList;->get(I)I

    #@8
    move-result v1

    #@9
    int-to-long v2, v1

    #@a
    add-int/lit8 v0, v0, -0x1

    #@c
    invoke-virtual {p0, v0}, Lcom/android/dx/util/IntList;->get(I)I

    #@f
    move-result v0

    #@10
    int-to-long v0, v0

    #@11
    sub-long/2addr v0, v2

    #@12
    const-wide/16 v2, 0x1

    #@14
    add-long/2addr v0, v2

    #@15
    const-wide/16 v2, 0x2

    #@17
    mul-long/2addr v0, v2

    #@18
    const-wide/16 v2, 0x4

    #@1a
    add-long/2addr v0, v2

    #@1b
    const-wide/32 v2, 0x7fffffff

    #@1e
    cmp-long v2, v0, v2

    #@20
    if-gtz v2, :cond_23

    #@22
    :goto_22
    return-wide v0

    #@23
    :cond_23
    const-wide/16 v0, -0x1

    #@25
    goto :goto_22
.end method

.method private static shouldPack(Lcom/android/dx/util/IntList;)Z
    .registers 9

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->size()I

    #@4
    move-result v1

    #@5
    const/4 v2, 0x2

    #@6
    if-ge v1, v2, :cond_9

    #@8
    :cond_8
    :goto_8
    return v0

    #@9
    :cond_9
    invoke-static {p0}, Lcom/android/dx/dex/code/SwitchData;->packedCodeSize(Lcom/android/dx/util/IntList;)J

    #@c
    move-result-wide v2

    #@d
    invoke-static {p0}, Lcom/android/dx/dex/code/SwitchData;->sparseCodeSize(Lcom/android/dx/util/IntList;)J

    #@10
    move-result-wide v4

    #@11
    const-wide/16 v6, 0x0

    #@13
    cmp-long v1, v2, v6

    #@15
    if-ltz v1, :cond_21

    #@17
    const-wide/16 v6, 0x5

    #@19
    mul-long/2addr v4, v6

    #@1a
    const-wide/16 v6, 0x4

    #@1c
    div-long/2addr v4, v6

    #@1d
    cmp-long v1, v2, v4

    #@1f
    if-lez v1, :cond_8

    #@21
    :cond_21
    const/4 v0, 0x0

    #@22
    goto :goto_8
.end method

.method private static sparseCodeSize(Lcom/android/dx/util/IntList;)J
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->size()I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    const-wide/16 v2, 0x4

    #@7
    mul-long/2addr v0, v2

    #@8
    const-wide/16 v2, 0x2

    #@a
    add-long/2addr v0, v2

    #@b
    return-wide v0
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .registers 5

    #@0
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    const/16 v0, 0x64

    #@4
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    #@9
    array-length v2, v0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    if-ge v0, v2, :cond_2a

    #@d
    const-string v3, "\n    "

    #@f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    iget-object v3, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    #@14
    invoke-virtual {v3, v0}, Lcom/android/dx/util/IntList;->get(I)I

    #@17
    move-result v3

    #@18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@1b
    const-string v3, ": "

    #@1d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    iget-object v3, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    #@22
    aget-object v3, v3, v0

    #@24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@27
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_b

    #@2a
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method

.method public codeSize()I
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/android/dx/dex/code/SwitchData;->packed:Z

    #@2
    if-eqz v0, :cond_c

    #@4
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    #@6
    invoke-static {v0}, Lcom/android/dx/dex/code/SwitchData;->packedCodeSize(Lcom/android/dx/util/IntList;)J

    #@9
    move-result-wide v0

    #@a
    long-to-int v0, v0

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    #@e
    invoke-static {v0}, Lcom/android/dx/dex/code/SwitchData;->sparseCodeSize(Lcom/android/dx/util/IntList;)J

    #@11
    move-result-wide v0

    #@12
    long-to-int v0, v0

    #@13
    goto :goto_b
.end method

.method public isPacked()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/android/dx/dex/code/SwitchData;->packed:Z

    #@2
    return v0
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .registers 8

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->user:Lcom/android/dx/dex/code/CodeAddress;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    #@5
    move-result v1

    #@6
    new-instance v2, Ljava/lang/StringBuffer;

    #@8
    const/16 v0, 0x64

    #@a
    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    #@d
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    #@f
    array-length v3, v0

    #@10
    iget-boolean v0, p0, Lcom/android/dx/dex/code/SwitchData;->packed:Z

    #@12
    if-eqz v0, :cond_5a

    #@14
    const-string v0, "packed"

    #@16
    :goto_16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@19
    const-string v0, "-switch-payload // for switch @ "

    #@1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@25
    const/4 v0, 0x0

    #@26
    :goto_26
    if-ge v0, v3, :cond_5d

    #@28
    iget-object v4, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    #@2a
    aget-object v4, v4, v0

    #@2c
    invoke-virtual {v4}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    #@2f
    move-result v4

    #@30
    const-string v5, "\n  "

    #@32
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@35
    iget-object v5, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    #@37
    invoke-virtual {v5, v0}, Lcom/android/dx/util/IntList;->get(I)I

    #@3a
    move-result v5

    #@3b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@3e
    const-string v5, ": "

    #@40
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@43
    invoke-static {v4}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4a
    const-string v5, " // "

    #@4c
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4f
    sub-int/2addr v4, v1

    #@50
    invoke-static {v4}, Lcom/android/dx/util/Hex;->s4(I)Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@57
    add-int/lit8 v0, v0, 0x1

    #@59
    goto :goto_26

    #@5a
    :cond_5a
    const-string v0, "sparse"

    #@5c
    goto :goto_16

    #@5d
    :cond_5d
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@60
    move-result-object v0

    #@61
    return-object v0
.end method

.method public withRegisters(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/dex/code/DalvInsn;
    .registers 7

    #@0
    new-instance v0, Lcom/android/dx/dex/code/SwitchData;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/dex/code/SwitchData;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Lcom/android/dx/dex/code/SwitchData;->user:Lcom/android/dx/dex/code/CodeAddress;

    #@8
    iget-object v3, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    #@a
    iget-object v4, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    #@c
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/dex/code/SwitchData;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/dex/code/CodeAddress;Lcom/android/dx/util/IntList;[Lcom/android/dx/dex/code/CodeAddress;)V

    #@f
    return-object v0
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 10

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->user:Lcom/android/dx/dex/code/CodeAddress;

    #@3
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    #@6
    move-result v5

    #@7
    sget-object v0, Lcom/android/dx/dex/code/Dops;->PACKED_SWITCH:Lcom/android/dx/dex/code/Dop;

    #@9
    invoke-virtual {v0}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Lcom/android/dx/dex/code/InsnFormat;->codeSize()I

    #@10
    move-result v2

    #@11
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    #@13
    array-length v3, v0

    #@14
    iget-boolean v0, p0, Lcom/android/dx/dex/code/SwitchData;->packed:Z

    #@16
    if-eqz v0, :cond_5e

    #@18
    if-nez v3, :cond_41

    #@1a
    move v4, v1

    #@1b
    :goto_1b
    if-nez v3, :cond_49

    #@1d
    move v0, v1

    #@1e
    :goto_1e
    sub-int/2addr v0, v4

    #@1f
    add-int/lit8 v6, v0, 0x1

    #@21
    const/16 v0, 0x100

    #@23
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@26
    invoke-interface {p1, v6}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@29
    invoke-interface {p1, v4}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@2c
    move v3, v1

    #@2d
    :goto_2d
    if-ge v3, v6, :cond_86

    #@2f
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    #@31
    invoke-virtual {v0, v1}, Lcom/android/dx/util/IntList;->get(I)I

    #@34
    move-result v0

    #@35
    add-int v7, v4, v3

    #@37
    if-le v0, v7, :cond_52

    #@39
    move v0, v2

    #@3a
    :goto_3a
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@3d
    add-int/lit8 v0, v3, 0x1

    #@3f
    move v3, v0

    #@40
    goto :goto_2d

    #@41
    :cond_41
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    #@43
    invoke-virtual {v0, v1}, Lcom/android/dx/util/IntList;->get(I)I

    #@46
    move-result v0

    #@47
    move v4, v0

    #@48
    goto :goto_1b

    #@49
    :cond_49
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    #@4b
    add-int/lit8 v3, v3, -0x1

    #@4d
    invoke-virtual {v0, v3}, Lcom/android/dx/util/IntList;->get(I)I

    #@50
    move-result v0

    #@51
    goto :goto_1e

    #@52
    :cond_52
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    #@54
    aget-object v0, v0, v1

    #@56
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    #@59
    move-result v0

    #@5a
    sub-int/2addr v0, v5

    #@5b
    add-int/lit8 v1, v1, 0x1

    #@5d
    goto :goto_3a

    #@5e
    :cond_5e
    const/16 v0, 0x200

    #@60
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@63
    invoke-interface {p1, v3}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    #@66
    move v0, v1

    #@67
    :goto_67
    if-ge v0, v3, :cond_75

    #@69
    iget-object v2, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    #@6b
    invoke-virtual {v2, v0}, Lcom/android/dx/util/IntList;->get(I)I

    #@6e
    move-result v2

    #@6f
    invoke-interface {p1, v2}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@72
    add-int/lit8 v0, v0, 0x1

    #@74
    goto :goto_67

    #@75
    :cond_75
    :goto_75
    if-ge v1, v3, :cond_86

    #@77
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    #@79
    aget-object v0, v0, v1

    #@7b
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    #@7e
    move-result v0

    #@7f
    sub-int/2addr v0, v5

    #@80
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    #@83
    add-int/lit8 v1, v1, 0x1

    #@85
    goto :goto_75

    #@86
    :cond_86
    return-void
.end method
