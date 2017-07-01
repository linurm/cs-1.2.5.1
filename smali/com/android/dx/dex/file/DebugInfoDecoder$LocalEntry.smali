.class Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/file/DebugInfoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalEntry"
.end annotation


# instance fields
.field public address:I

.field public isStart:Z

.field public nameIndex:I

.field public reg:I

.field public signatureIndex:I

.field public typeIndex:I


# direct methods
.method public constructor <init>(IZIIII)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->address:I

    #@5
    iput-boolean p2, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    #@7
    iput p3, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    #@9
    iput p4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    #@b
    iput p5, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->typeIndex:I

    #@d
    iput p6, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->signatureIndex:I

    #@f
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    #@0
    iget v1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->address:I

    #@2
    iget-boolean v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    #@4
    if-eqz v0, :cond_40

    #@6
    const-string v0, "start"

    #@8
    :goto_8
    const-string v2, "[%x %s v%d %04x %04x %04x]"

    #@a
    const/4 v3, 0x6

    #@b
    new-array v3, v3, [Ljava/lang/Object;

    #@d
    const/4 v4, 0x0

    #@e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    aput-object v1, v3, v4

    #@14
    const/4 v1, 0x1

    #@15
    aput-object v0, v3, v1

    #@17
    const/4 v0, 0x2

    #@18
    iget v1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    #@1a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v1

    #@1e
    aput-object v1, v3, v0

    #@20
    const/4 v0, 0x3

    #@21
    iget v1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    #@23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v1

    #@27
    aput-object v1, v3, v0

    #@29
    const/4 v0, 0x4

    #@2a
    iget v1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->typeIndex:I

    #@2c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v1

    #@30
    aput-object v1, v3, v0

    #@32
    const/4 v0, 0x5

    #@33
    iget v1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->signatureIndex:I

    #@35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v1

    #@39
    aput-object v1, v3, v0

    #@3b
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    return-object v0

    #@40
    :cond_40
    const-string v0, "end"

    #@42
    goto :goto_8
.end method
