.class public Lcom/android/dx/io/Code$Try;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/io/Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Try"
.end annotation


# instance fields
.field final handlerOffset:I

.field final instructionCount:I

.field final startAddress:I


# direct methods
.method constructor <init>(III)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/android/dx/io/Code$Try;->startAddress:I

    #@5
    iput p2, p0, Lcom/android/dx/io/Code$Try;->instructionCount:I

    #@7
    iput p3, p0, Lcom/android/dx/io/Code$Try;->handlerOffset:I

    #@9
    return-void
.end method


# virtual methods
.method public getHandlerOffset()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/Code$Try;->handlerOffset:I

    #@2
    return v0
.end method

.method public getInstructionCount()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/Code$Try;->instructionCount:I

    #@2
    return v0
.end method

.method public getStartAddress()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/Code$Try;->startAddress:I

    #@2
    return v0
.end method
