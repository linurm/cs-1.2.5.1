.class public final Lcom/android/dx/dex/code/PositionList;
.super Lcom/android/dx/util/FixedSizeList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/code/PositionList$Entry;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/dx/dex/code/PositionList;

.field public static final IMPORTANT:I = 0x3

.field public static final LINES:I = 0x2

.field public static final NONE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/dex/code/PositionList;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/android/dx/dex/code/PositionList;-><init>(I)V

    #@6
    sput-object v0, Lcom/android/dx/dex/code/PositionList;->EMPTY:Lcom/android/dx/dex/code/PositionList;

    #@8
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    #@3
    return-void
.end method

.method public static make(Lcom/android/dx/dex/code/DalvInsnList;I)Lcom/android/dx/dex/code/PositionList;
    .registers 14

    #@0
    const/4 v4, 0x0

    #@1
    packed-switch p1, :pswitch_data_6c

    #@4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string v1, "bogus howMuch"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :pswitch_c
    sget-object v0, Lcom/android/dx/dex/code/PositionList;->EMPTY:Lcom/android/dx/dex/code/PositionList;

    #@e
    :goto_e
    return-object v0

    #@f
    :pswitch_f
    sget-object v5, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    #@11
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->size()I

    #@14
    move-result v7

    #@15
    new-array v8, v7, [Lcom/android/dx/dex/code/PositionList$Entry;

    #@17
    move-object v0, v5

    #@18
    move v3, v4

    #@19
    move v2, v4

    #@1a
    move v6, v4

    #@1b
    :goto_1b
    if-ge v6, v7, :cond_56

    #@1d
    invoke-virtual {p0, v6}, Lcom/android/dx/dex/code/DalvInsnList;->get(I)Lcom/android/dx/dex/code/DalvInsn;

    #@20
    move-result-object v9

    #@21
    instance-of v1, v9, Lcom/android/dx/dex/code/CodeAddress;

    #@23
    if-eqz v1, :cond_2f

    #@25
    const/4 v1, 0x1

    #@26
    move v11, v2

    #@27
    move v2, v1

    #@28
    move v1, v11

    #@29
    :goto_29
    add-int/lit8 v3, v6, 0x1

    #@2b
    move v6, v3

    #@2c
    move v3, v2

    #@2d
    move v2, v1

    #@2e
    goto :goto_1b

    #@2f
    :cond_2f
    invoke-virtual {v9}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, v5}, Lcom/android/dx/rop/code/SourcePosition;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v10

    #@37
    if-nez v10, :cond_69

    #@39
    invoke-virtual {v1, v0}, Lcom/android/dx/rop/code/SourcePosition;->sameLine(Lcom/android/dx/rop/code/SourcePosition;)Z

    #@3c
    move-result v10

    #@3d
    if-nez v10, :cond_69

    #@3f
    const/4 v10, 0x3

    #@40
    if-ne p1, v10, :cond_44

    #@42
    if-eqz v3, :cond_69

    #@44
    :cond_44
    new-instance v0, Lcom/android/dx/dex/code/PositionList$Entry;

    #@46
    invoke-virtual {v9}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    #@49
    move-result v3

    #@4a
    invoke-direct {v0, v3, v1}, Lcom/android/dx/dex/code/PositionList$Entry;-><init>(ILcom/android/dx/rop/code/SourcePosition;)V

    #@4d
    aput-object v0, v8, v2

    #@4f
    add-int/lit8 v0, v2, 0x1

    #@51
    move v2, v4

    #@52
    move v11, v0

    #@53
    move-object v0, v1

    #@54
    move v1, v11

    #@55
    goto :goto_29

    #@56
    :cond_56
    new-instance v0, Lcom/android/dx/dex/code/PositionList;

    #@58
    invoke-direct {v0, v2}, Lcom/android/dx/dex/code/PositionList;-><init>(I)V

    #@5b
    :goto_5b
    if-ge v4, v2, :cond_65

    #@5d
    aget-object v1, v8, v4

    #@5f
    invoke-virtual {v0, v4, v1}, Lcom/android/dx/dex/code/PositionList;->set(ILcom/android/dx/dex/code/PositionList$Entry;)V

    #@62
    add-int/lit8 v4, v4, 0x1

    #@64
    goto :goto_5b

    #@65
    :cond_65
    invoke-virtual {v0}, Lcom/android/dx/dex/code/PositionList;->setImmutable()V

    #@68
    goto :goto_e

    #@69
    :cond_69
    move v1, v2

    #@6a
    move v2, v3

    #@6b
    goto :goto_29

    #@6c
    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_c
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public get(I)Lcom/android/dx/dex/code/PositionList$Entry;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/PositionList;->get0(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/dx/dex/code/PositionList$Entry;

    #@6
    return-object v0
.end method

.method public set(ILcom/android/dx/dex/code/PositionList$Entry;)V
    .registers 3

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/code/PositionList;->set0(ILjava/lang/Object;)V

    #@3
    return-void
.end method
