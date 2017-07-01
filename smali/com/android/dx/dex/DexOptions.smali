.class public Lcom/android/dx/dex/DexOptions;
.super Ljava/lang/Object;


# instance fields
.field public targetApiLevel:I


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/16 v0, 0xd

    #@5
    iput v0, p0, Lcom/android/dx/dex/DexOptions;->targetApiLevel:I

    #@7
    return-void
.end method


# virtual methods
.method public canUseExtendedOpcodes()Z
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/dex/DexOptions;->targetApiLevel:I

    #@2
    const/16 v1, 0xe

    #@4
    if-lt v0, v1, :cond_8

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

.method public getMagic()Ljava/lang/String;
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/dex/DexOptions;->targetApiLevel:I

    #@2
    invoke-static {v0}, Lcom/android/dx/dex/DexFormat;->apiToMagic(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
