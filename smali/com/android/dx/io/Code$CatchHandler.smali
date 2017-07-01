.class public Lcom/android/dx/io/Code$CatchHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/io/Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CatchHandler"
.end annotation


# instance fields
.field final addresses:[I

.field final catchAllAddress:I

.field final typeIndexes:[I


# direct methods
.method public constructor <init>([I[II)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/dx/io/Code$CatchHandler;->typeIndexes:[I

    #@5
    iput-object p2, p0, Lcom/android/dx/io/Code$CatchHandler;->addresses:[I

    #@7
    iput p3, p0, Lcom/android/dx/io/Code$CatchHandler;->catchAllAddress:I

    #@9
    return-void
.end method


# virtual methods
.method public getAddresses()[I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/io/Code$CatchHandler;->addresses:[I

    #@2
    return-object v0
.end method

.method public getCatchAllAddress()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/io/Code$CatchHandler;->catchAllAddress:I

    #@2
    return v0
.end method

.method public getTypeIndexes()[I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/io/Code$CatchHandler;->typeIndexes:[I

    #@2
    return-object v0
.end method
