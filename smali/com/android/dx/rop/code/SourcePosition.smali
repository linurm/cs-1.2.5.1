.class public final Lcom/android/dx/rop/code/SourcePosition;
.super Ljava/lang/Object;


# static fields
.field public static final NO_INFO:Lcom/android/dx/rop/code/SourcePosition;


# instance fields
.field private final address:I

.field private final line:I

.field private final sourceFile:Lcom/android/dx/rop/cst/CstString;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v2, -0x1

    #@1
    new-instance v0, Lcom/android/dx/rop/code/SourcePosition;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {v0, v1, v2, v2}, Lcom/android/dx/rop/code/SourcePosition;-><init>(Lcom/android/dx/rop/cst/CstString;II)V

    #@7
    sput-object v0, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    #@9
    return-void
.end method

.method public constructor <init>(Lcom/android/dx/rop/cst/CstString;II)V
    .registers 6

    #@0
    const/4 v0, -0x1

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    if-ge p2, v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string v1, "address < -1"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    if-ge p3, v0, :cond_18

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string v1, "line < -1"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    iput-object p1, p0, Lcom/android/dx/rop/code/SourcePosition;->sourceFile:Lcom/android/dx/rop/cst/CstString;

    #@1a
    iput p2, p0, Lcom/android/dx/rop/code/SourcePosition;->address:I

    #@1c
    iput p3, p0, Lcom/android/dx/rop/code/SourcePosition;->line:I

    #@1e
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    instance-of v2, p1, Lcom/android/dx/rop/code/SourcePosition;

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    if-eq p0, p1, :cond_17

    #@9
    check-cast p1, Lcom/android/dx/rop/code/SourcePosition;

    #@b
    iget v2, p0, Lcom/android/dx/rop/code/SourcePosition;->address:I

    #@d
    iget v3, p1, Lcom/android/dx/rop/code/SourcePosition;->address:I

    #@f
    if-ne v2, v3, :cond_6

    #@11
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/code/SourcePosition;->sameLineAndFile(Lcom/android/dx/rop/code/SourcePosition;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_6

    #@17
    :cond_17
    move v0, v1

    #@18
    goto :goto_6
.end method

.method public getAddress()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/rop/code/SourcePosition;->address:I

    #@2
    return v0
.end method

.method public getLine()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/rop/code/SourcePosition;->line:I

    #@2
    return v0
.end method

.method public getSourceFile()Lcom/android/dx/rop/cst/CstString;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/SourcePosition;->sourceFile:Lcom/android/dx/rop/cst/CstString;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/code/SourcePosition;->sourceFile:Lcom/android/dx/rop/cst/CstString;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstString;->hashCode()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lcom/android/dx/rop/code/SourcePosition;->address:I

    #@8
    add-int/2addr v0, v1

    #@9
    iget v1, p0, Lcom/android/dx/rop/code/SourcePosition;->line:I

    #@b
    add-int/2addr v0, v1

    #@c
    return v0
.end method

.method public sameLine(Lcom/android/dx/rop/code/SourcePosition;)Z
    .registers 4

    #@0
    iget v0, p0, Lcom/android/dx/rop/code/SourcePosition;->line:I

    #@2
    iget v1, p1, Lcom/android/dx/rop/code/SourcePosition;->line:I

    #@4
    if-ne v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public sameLineAndFile(Lcom/android/dx/rop/code/SourcePosition;)Z
    .registers 4

    #@0
    iget v0, p0, Lcom/android/dx/rop/code/SourcePosition;->line:I

    #@2
    iget v1, p1, Lcom/android/dx/rop/code/SourcePosition;->line:I

    #@4
    if-ne v0, v1, :cond_1c

    #@6
    iget-object v0, p0, Lcom/android/dx/rop/code/SourcePosition;->sourceFile:Lcom/android/dx/rop/cst/CstString;

    #@8
    iget-object v1, p1, Lcom/android/dx/rop/code/SourcePosition;->sourceFile:Lcom/android/dx/rop/cst/CstString;

    #@a
    if-eq v0, v1, :cond_1a

    #@c
    iget-object v0, p0, Lcom/android/dx/rop/code/SourcePosition;->sourceFile:Lcom/android/dx/rop/cst/CstString;

    #@e
    if-eqz v0, :cond_1c

    #@10
    iget-object v0, p0, Lcom/android/dx/rop/code/SourcePosition;->sourceFile:Lcom/android/dx/rop/cst/CstString;

    #@12
    iget-object v1, p1, Lcom/android/dx/rop/code/SourcePosition;->sourceFile:Lcom/android/dx/rop/cst/CstString;

    #@14
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstString;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1c

    #@1a
    :cond_1a
    const/4 v0, 0x1

    #@1b
    :goto_1b
    return v0

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    goto :goto_1b
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    const/16 v1, 0x32

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    iget-object v1, p0, Lcom/android/dx/rop/code/SourcePosition;->sourceFile:Lcom/android/dx/rop/cst/CstString;

    #@9
    if-eqz v1, :cond_19

    #@b
    iget-object v1, p0, Lcom/android/dx/rop/code/SourcePosition;->sourceFile:Lcom/android/dx/rop/cst/CstString;

    #@d
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14
    const-string v1, ":"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@19
    :cond_19
    iget v1, p0, Lcom/android/dx/rop/code/SourcePosition;->line:I

    #@1b
    if-ltz v1, :cond_22

    #@1d
    iget v1, p0, Lcom/android/dx/rop/code/SourcePosition;->line:I

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@22
    :cond_22
    const/16 v1, 0x40

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@27
    iget v1, p0, Lcom/android/dx/rop/code/SourcePosition;->address:I

    #@29
    if-gez v1, :cond_35

    #@2b
    const-string v1, "????"

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    :goto_30
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    return-object v0

    #@35
    :cond_35
    iget v1, p0, Lcom/android/dx/rop/code/SourcePosition;->address:I

    #@37
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3e
    goto :goto_30
.end method
