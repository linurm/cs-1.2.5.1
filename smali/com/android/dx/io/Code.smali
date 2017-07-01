.class public final Lcom/android/dx/io/Code;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/io/Code$CatchHandler;,
        Lcom/android/dx/io/Code$Try;
    }
.end annotation


# instance fields
.field private final catchHandlers:[Lcom/android/dx/io/Code$CatchHandler;

.field private final debugInfoOffset:I

.field private final insSize:I

.field private final instructions:[S

.field private final outsSize:I

.field private final registersSize:I

.field private final tries:[Lcom/android/dx/io/Code$Try;


# direct methods
.method public constructor <init>(IIII[S[Lcom/android/dx/io/Code$Try;[Lcom/android/dx/io/Code$CatchHandler;)V
    .registers 8

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/android/dx/io/Code;->registersSize:I

    #@5
    iput p2, p0, Lcom/android/dx/io/Code;->insSize:I

    #@7
    iput p3, p0, Lcom/android/dx/io/Code;->outsSize:I

    #@9
    iput p4, p0, Lcom/android/dx/io/Code;->debugInfoOffset:I

    #@b
    iput-object p5, p0, Lcom/android/dx/io/Code;->instructions:[S

    #@d
    iput-object p6, p0, Lcom/android/dx/io/Code;->tries:[Lcom/android/dx/io/Code$Try;

    #@f
    iput-object p7, p0, Lcom/android/dx/io/Code;->catchHandlers:[Lcom/android/dx/io/Code$CatchHandler;

    #@11
    return-void
.end method


# virtual methods
.method public getCatchHandlers()[Lcom/android/dx/io/Code$CatchHandler;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/io/Code;->catchHandlers:[Lcom/android/dx/io/Code$CatchHandler;

    #@2
    return-object v0
.end method

.method public getDebugInfoOffset()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/Code;->debugInfoOffset:I

    #@2
    return v0
.end method

.method public getInsSize()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/Code;->insSize:I

    #@2
    return v0
.end method

.method public getInstructions()[S
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/io/Code;->instructions:[S

    #@2
    return-object v0
.end method

.method public getOutsSize()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/Code;->outsSize:I

    #@2
    return v0
.end method

.method public getRegistersSize()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/Code;->registersSize:I

    #@2
    return v0
.end method

.method public getTries()[Lcom/android/dx/io/Code$Try;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/io/Code;->tries:[Lcom/android/dx/io/Code$Try;

    #@2
    return-object v0
.end method
