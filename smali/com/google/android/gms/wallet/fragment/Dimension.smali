.class public Lcom/google/android/gms/wallet/fragment/Dimension;
.super Ljava/lang/Object;


# static fields
.field public static final MATCH_PARENT:I = -0x1

.field public static final UNIT_DIP:I = 0x1

.field public static final UNIT_IN:I = 0x4

.field public static final UNIT_MM:I = 0x5

.field public static final UNIT_PT:I = 0x3

.field public static final UNIT_PX:I = 0x0

.field public static final UNIT_SP:I = 0x2

.field public static final WRAP_CONTENT:I = -0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static a(JLandroid/util/DisplayMetrics;)I
    .registers 7

    #@0
    const/16 v0, 0x20

    #@2
    ushr-long v0, p0, v0

    #@4
    long-to-int v1, v0

    #@5
    long-to-int v0, p0

    #@6
    sparse-switch v1, :sswitch_data_40

    #@9
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v3, "Unexpected unit or type: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    :sswitch_22
    invoke-static {v0, p2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@25
    move-result v0

    #@26
    :goto_26
    :sswitch_26
    return v0

    #@27
    :sswitch_27
    const/4 v1, 0x0

    #@28
    :goto_28
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@2b
    move-result v0

    #@2c
    invoke-static {v1, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@2f
    move-result v0

    #@30
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@33
    move-result v0

    #@34
    goto :goto_26

    #@35
    :sswitch_35
    const/4 v1, 0x1

    #@36
    goto :goto_28

    #@37
    :sswitch_37
    const/4 v1, 0x2

    #@38
    goto :goto_28

    #@39
    :sswitch_39
    const/4 v1, 0x3

    #@3a
    goto :goto_28

    #@3b
    :sswitch_3b
    const/4 v1, 0x4

    #@3c
    goto :goto_28

    #@3d
    :sswitch_3d
    const/4 v1, 0x5

    #@3e
    goto :goto_28

    #@3f
    nop

    #@40
    :sswitch_data_40
    .sparse-switch
        0x0 -> :sswitch_27
        0x1 -> :sswitch_35
        0x2 -> :sswitch_37
        0x3 -> :sswitch_39
        0x4 -> :sswitch_3b
        0x5 -> :sswitch_3d
        0x80 -> :sswitch_22
        0x81 -> :sswitch_26
    .end sparse-switch
.end method

.method public static a(IF)J
    .registers 5

    #@0
    packed-switch p0, :pswitch_data_26

    #@3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string v2, "Unrecognized unit: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    :pswitch_1c
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@1f
    move-result v0

    #@20
    invoke-static {p0, v0}, Lcom/google/android/gms/wallet/fragment/Dimension;->l(II)J

    #@23
    move-result-wide v0

    #@24
    return-wide v0

    #@25
    nop

    #@26
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public static a(Landroid/util/TypedValue;)J
    .registers 4

    #@0
    iget v0, p0, Landroid/util/TypedValue;->type:I

    #@2
    sparse-switch v0, :sswitch_data_30

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string v2, "Unexpected dimension type: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget v2, p0, Landroid/util/TypedValue;->type:I

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    :sswitch_20
    iget v0, p0, Landroid/util/TypedValue;->data:I

    #@22
    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/Dimension;->dM(I)J

    #@25
    move-result-wide v0

    #@26
    :goto_26
    return-wide v0

    #@27
    :sswitch_27
    const/16 v0, 0x80

    #@29
    iget v1, p0, Landroid/util/TypedValue;->data:I

    #@2b
    invoke-static {v0, v1}, Lcom/google/android/gms/wallet/fragment/Dimension;->l(II)J

    #@2e
    move-result-wide v0

    #@2f
    goto :goto_26

    #@30
    :sswitch_data_30
    .sparse-switch
        0x5 -> :sswitch_27
        0x10 -> :sswitch_20
    .end sparse-switch
.end method

.method public static dM(I)J
    .registers 4

    #@0
    if-gez p0, :cond_28

    #@2
    const/4 v0, -0x1

    #@3
    if-eq p0, v0, :cond_8

    #@5
    const/4 v0, -0x2

    #@6
    if-ne p0, v0, :cond_f

    #@8
    :cond_8
    const/16 v0, 0x81

    #@a
    invoke-static {v0, p0}, Lcom/google/android/gms/wallet/fragment/Dimension;->l(II)J

    #@d
    move-result-wide v0

    #@e
    :goto_e
    return-wide v0

    #@f
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string v2, "Unexpected dimension value: "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    :cond_28
    const/4 v0, 0x0

    #@29
    int-to-float v1, p0

    #@2a
    invoke-static {v0, v1}, Lcom/google/android/gms/wallet/fragment/Dimension;->a(IF)J

    #@2d
    move-result-wide v0

    #@2e
    goto :goto_e
.end method

.method private static l(II)J
    .registers 8

    #@0
    int-to-long v0, p0

    #@1
    const/16 v2, 0x20

    #@3
    shl-long/2addr v0, v2

    #@4
    int-to-long v2, p1

    #@5
    const-wide v4, 0xffffffffL

    #@a
    and-long/2addr v2, v4

    #@b
    or-long/2addr v0, v2

    #@c
    return-wide v0
.end method
