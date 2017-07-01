.class public final Lcom/google/android/gms/cast/TextTrackStyle;
.super Ljava/lang/Object;


# static fields
.field public static final COLOR_UNSPECIFIED:I = 0x0

.field public static final DEFAULT_FONT_SCALE:F = 1.0f

.field public static final EDGE_TYPE_DEPRESSED:I = 0x4

.field public static final EDGE_TYPE_DROP_SHADOW:I = 0x2

.field public static final EDGE_TYPE_NONE:I = 0x0

.field public static final EDGE_TYPE_OUTLINE:I = 0x1

.field public static final EDGE_TYPE_RAISED:I = 0x3

.field public static final EDGE_TYPE_UNSPECIFIED:I = -0x1

.field public static final FONT_FAMILY_CASUAL:I = 0x4

.field public static final FONT_FAMILY_CURSIVE:I = 0x5

.field public static final FONT_FAMILY_MONOSPACED_SANS_SERIF:I = 0x1

.field public static final FONT_FAMILY_MONOSPACED_SERIF:I = 0x3

.field public static final FONT_FAMILY_SANS_SERIF:I = 0x0

.field public static final FONT_FAMILY_SERIF:I = 0x2

.field public static final FONT_FAMILY_SMALL_CAPITALS:I = 0x6

.field public static final FONT_FAMILY_UNSPECIFIED:I = -0x1

.field public static final FONT_STYLE_BOLD:I = 0x1

.field public static final FONT_STYLE_BOLD_ITALIC:I = 0x3

.field public static final FONT_STYLE_ITALIC:I = 0x2

.field public static final FONT_STYLE_NORMAL:I = 0x0

.field public static final FONT_STYLE_UNSPECIFIED:I = -0x1

.field public static final WINDOW_TYPE_NONE:I = 0x0

.field public static final WINDOW_TYPE_NORMAL:I = 0x1

.field public static final WINDOW_TYPE_ROUNDED:I = 0x2

.field public static final WINDOW_TYPE_UNSPECIFIED:I = -0x1


# instance fields
.field private AA:Lorg/json/JSONObject;

.field private BA:I

.field private BB:I

.field private Bs:F

.field private Bt:I

.field private Bu:I

.field private Bv:I

.field private Bw:I

.field private Bx:I

.field private By:I

.field private Bz:Ljava/lang/String;

.field private td:I


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-direct {p0}, Lcom/google/android/gms/cast/TextTrackStyle;->clear()V

    #@6
    return-void
.end method

.method private ah(Ljava/lang/String;)I
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_48

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    const/16 v2, 0x9

    #@9
    if-ne v1, v2, :cond_48

    #@b
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v1

    #@f
    const/16 v2, 0x23

    #@11
    if-ne v1, v2, :cond_48

    #@13
    const/4 v1, 0x1

    #@14
    const/4 v2, 0x3

    #@15
    :try_start_15
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    const/16 v2, 0x10

    #@1b
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@1e
    move-result v1

    #@1f
    const/4 v2, 0x3

    #@20
    const/4 v3, 0x5

    #@21
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    const/16 v3, 0x10

    #@27
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@2a
    move-result v2

    #@2b
    const/4 v3, 0x5

    #@2c
    const/4 v4, 0x7

    #@2d
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    const/16 v4, 0x10

    #@33
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@36
    move-result v3

    #@37
    const/4 v4, 0x7

    #@38
    const/16 v5, 0x9

    #@3a
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    const/16 v5, 0x10

    #@40
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@43
    move-result v4

    #@44
    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_47} :catch_49

    #@47
    move-result v0

    #@48
    :cond_48
    :goto_48
    return v0

    #@49
    :catch_49
    move-exception v1

    #@4a
    goto :goto_48
.end method

.method private clear()V
    .registers 5

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    const/4 v1, 0x0

    #@3
    const/high16 v0, 0x3f800000    # 1.0f

    #@5
    iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bs:F

    #@7
    iput v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bt:I

    #@9
    iput v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->td:I

    #@b
    iput v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bu:I

    #@d
    iput v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bv:I

    #@f
    iput v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bw:I

    #@11
    iput v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bx:I

    #@13
    iput v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->By:I

    #@15
    iput-object v3, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bz:Ljava/lang/String;

    #@17
    iput v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BA:I

    #@19
    iput v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BB:I

    #@1b
    iput-object v3, p0, Lcom/google/android/gms/cast/TextTrackStyle;->AA:Lorg/json/JSONObject;

    #@1d
    return-void
.end method

.method public static fromSystemSettings(Landroid/content/Context;)Lcom/google/android/gms/cast/TextTrackStyle;
    .registers 7

    #@0
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    new-instance v1, Lcom/google/android/gms/cast/TextTrackStyle;

    #@5
    invoke-direct {v1}, Lcom/google/android/gms/cast/TextTrackStyle;-><init>()V

    #@8
    invoke-static {}, Lcom/google/android/gms/internal/ip;->gi()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_f

    #@e
    :cond_e
    :goto_e
    return-object v1

    #@f
    :cond_f
    const-string v0, "captioning"

    #@11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    #@17
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    #@1a
    move-result v2

    #@1b
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontScale(F)V

    #@1e
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@21
    move-result-object v0

    #@22
    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    #@24
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/TextTrackStyle;->setBackgroundColor(I)V

    #@27
    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    #@29
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/TextTrackStyle;->setForegroundColor(I)V

    #@2c
    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    #@2e
    packed-switch v2, :pswitch_data_90

    #@31
    invoke-virtual {v1, v3}, Lcom/google/android/gms/cast/TextTrackStyle;->setEdgeType(I)V

    #@34
    :goto_34
    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    #@36
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/TextTrackStyle;->setEdgeColor(I)V

    #@39
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    #@3c
    move-result-object v0

    #@3d
    if-eqz v0, :cond_e

    #@3f
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    #@41
    invoke-virtual {v2, v0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v2

    #@45
    if-eqz v2, :cond_63

    #@47
    invoke-virtual {v1, v4}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontGenericFamily(I)V

    #@4a
    :goto_4a
    invoke-virtual {v0}, Landroid/graphics/Typeface;->isBold()Z

    #@4d
    move-result v2

    #@4e
    invoke-virtual {v0}, Landroid/graphics/Typeface;->isItalic()Z

    #@51
    move-result v0

    #@52
    if-eqz v2, :cond_7f

    #@54
    if-eqz v0, :cond_7f

    #@56
    const/4 v0, 0x3

    #@57
    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontStyle(I)V

    #@5a
    goto :goto_e

    #@5b
    :pswitch_5b
    invoke-virtual {v1, v4}, Lcom/google/android/gms/cast/TextTrackStyle;->setEdgeType(I)V

    #@5e
    goto :goto_34

    #@5f
    :pswitch_5f
    invoke-virtual {v1, v5}, Lcom/google/android/gms/cast/TextTrackStyle;->setEdgeType(I)V

    #@62
    goto :goto_34

    #@63
    :cond_63
    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    #@65
    invoke-virtual {v2, v0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v2

    #@69
    if-eqz v2, :cond_6f

    #@6b
    invoke-virtual {v1, v3}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontGenericFamily(I)V

    #@6e
    goto :goto_4a

    #@6f
    :cond_6f
    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    #@71
    invoke-virtual {v2, v0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    #@74
    move-result v2

    #@75
    if-eqz v2, :cond_7b

    #@77
    invoke-virtual {v1, v5}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontGenericFamily(I)V

    #@7a
    goto :goto_4a

    #@7b
    :cond_7b
    invoke-virtual {v1, v3}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontGenericFamily(I)V

    #@7e
    goto :goto_4a

    #@7f
    :cond_7f
    if-eqz v2, :cond_85

    #@81
    invoke-virtual {v1, v4}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontStyle(I)V

    #@84
    goto :goto_e

    #@85
    :cond_85
    if-eqz v0, :cond_8b

    #@87
    invoke-virtual {v1, v5}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontStyle(I)V

    #@8a
    goto :goto_e

    #@8b
    :cond_8b
    invoke-virtual {v1, v3}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontStyle(I)V

    #@8e
    goto :goto_e

    #@8f
    nop

    #@90
    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_5f
    .end packed-switch
.end method

.method private o(I)Ljava/lang/String;
    .registers 6

    #@0
    const-string v0, "#%02X%02X%02X%02X"

    #@2
    const/4 v1, 0x4

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    #@9
    move-result v3

    #@a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v3

    #@e
    aput-object v3, v1, v2

    #@10
    const/4 v2, 0x1

    #@11
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    #@14
    move-result v3

    #@15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v3

    #@19
    aput-object v3, v1, v2

    #@1b
    const/4 v2, 0x2

    #@1c
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    #@1f
    move-result v3

    #@20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v3

    #@24
    aput-object v3, v1, v2

    #@26
    const/4 v2, 0x3

    #@27
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    #@2a
    move-result v3

    #@2b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v3

    #@2f
    aput-object v3, v1, v2

    #@31
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    return-object v0
.end method


# virtual methods
.method public b(Lorg/json/JSONObject;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v5, 0x2

    #@4
    const/4 v4, 0x0

    #@5
    invoke-direct {p0}, Lcom/google/android/gms/cast/TextTrackStyle;->clear()V

    #@8
    const-string v0, "fontScale"

    #@a
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@c
    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    #@f
    move-result-wide v0

    #@10
    double-to-float v0, v0

    #@11
    iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bs:F

    #@13
    const-string v0, "foregroundColor"

    #@15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/TextTrackStyle;->ah(Ljava/lang/String;)I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bt:I

    #@1f
    const-string v0, "backgroundColor"

    #@21
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/TextTrackStyle;->ah(Ljava/lang/String;)I

    #@28
    move-result v0

    #@29
    iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->td:I

    #@2b
    const-string v0, "edgeType"

    #@2d
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_43

    #@33
    const-string v0, "edgeType"

    #@35
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    const-string v1, "NONE"

    #@3b
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_c1

    #@41
    iput v4, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bu:I

    #@43
    :cond_43
    :goto_43
    const-string v0, "edgeColor"

    #@45
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/TextTrackStyle;->ah(Ljava/lang/String;)I

    #@4c
    move-result v0

    #@4d
    iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bv:I

    #@4f
    const-string v0, "windowType"

    #@51
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@54
    move-result v0

    #@55
    if-eqz v0, :cond_67

    #@57
    const-string v0, "windowType"

    #@59
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    const-string v1, "NONE"

    #@5f
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v1

    #@63
    if-eqz v1, :cond_f1

    #@65
    iput v4, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bw:I

    #@67
    :cond_67
    :goto_67
    const-string v0, "windowColor"

    #@69
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@6c
    move-result-object v0

    #@6d
    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/TextTrackStyle;->ah(Ljava/lang/String;)I

    #@70
    move-result v0

    #@71
    iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bx:I

    #@73
    iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bw:I

    #@75
    if-ne v0, v5, :cond_7f

    #@77
    const-string v0, "windowRoundedCornerRadius"

    #@79
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    #@7c
    move-result v0

    #@7d
    iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->By:I

    #@7f
    :cond_7f
    const-string v0, "fontFamily"

    #@81
    const/4 v1, 0x0

    #@82
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@85
    move-result-object v0

    #@86
    iput-object v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bz:Ljava/lang/String;

    #@88
    const-string v0, "fontGenericFamily"

    #@8a
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@8d
    move-result v0

    #@8e
    if-eqz v0, :cond_a0

    #@90
    const-string v0, "fontGenericFamily"

    #@92
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@95
    move-result-object v0

    #@96
    const-string v1, "SANS_SERIF"

    #@98
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v1

    #@9c
    if-eqz v1, :cond_109

    #@9e
    iput v4, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BA:I

    #@a0
    :cond_a0
    :goto_a0
    const-string v0, "fontStyle"

    #@a2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@a5
    move-result v0

    #@a6
    if-eqz v0, :cond_b8

    #@a8
    const-string v0, "fontStyle"

    #@aa
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@ad
    move-result-object v0

    #@ae
    const-string v1, "NORMAL"

    #@b0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b3
    move-result v1

    #@b4
    if-eqz v1, :cond_151

    #@b6
    iput v4, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BB:I

    #@b8
    :cond_b8
    :goto_b8
    const-string v0, "customData"

    #@ba
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@bd
    move-result-object v0

    #@be
    iput-object v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->AA:Lorg/json/JSONObject;

    #@c0
    return-void

    #@c1
    :cond_c1
    const-string v1, "OUTLINE"

    #@c3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c6
    move-result v1

    #@c7
    if-eqz v1, :cond_cd

    #@c9
    iput v6, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bu:I

    #@cb
    goto/16 :goto_43

    #@cd
    :cond_cd
    const-string v1, "DROP_SHADOW"

    #@cf
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d2
    move-result v1

    #@d3
    if-eqz v1, :cond_d9

    #@d5
    iput v5, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bu:I

    #@d7
    goto/16 :goto_43

    #@d9
    :cond_d9
    const-string v1, "RAISED"

    #@db
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@de
    move-result v1

    #@df
    if-eqz v1, :cond_e5

    #@e1
    iput v7, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bu:I

    #@e3
    goto/16 :goto_43

    #@e5
    :cond_e5
    const-string v1, "DEPRESSED"

    #@e7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ea
    move-result v0

    #@eb
    if-eqz v0, :cond_43

    #@ed
    iput v8, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bu:I

    #@ef
    goto/16 :goto_43

    #@f1
    :cond_f1
    const-string v1, "NORMAL"

    #@f3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f6
    move-result v1

    #@f7
    if-eqz v1, :cond_fd

    #@f9
    iput v6, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bw:I

    #@fb
    goto/16 :goto_67

    #@fd
    :cond_fd
    const-string v1, "ROUNDED_CORNERS"

    #@ff
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@102
    move-result v0

    #@103
    if-eqz v0, :cond_67

    #@105
    iput v5, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bw:I

    #@107
    goto/16 :goto_67

    #@109
    :cond_109
    const-string v1, "MONOSPACED_SANS_SERIF"

    #@10b
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10e
    move-result v1

    #@10f
    if-eqz v1, :cond_114

    #@111
    iput v6, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BA:I

    #@113
    goto :goto_a0

    #@114
    :cond_114
    const-string v1, "SERIF"

    #@116
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@119
    move-result v1

    #@11a
    if-eqz v1, :cond_11f

    #@11c
    iput v5, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BA:I

    #@11e
    goto :goto_a0

    #@11f
    :cond_11f
    const-string v1, "MONOSPACED_SERIF"

    #@121
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@124
    move-result v1

    #@125
    if-eqz v1, :cond_12b

    #@127
    iput v7, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BA:I

    #@129
    goto/16 :goto_a0

    #@12b
    :cond_12b
    const-string v1, "CASUAL"

    #@12d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@130
    move-result v1

    #@131
    if-eqz v1, :cond_137

    #@133
    iput v8, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BA:I

    #@135
    goto/16 :goto_a0

    #@137
    :cond_137
    const-string v1, "CURSIVE"

    #@139
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13c
    move-result v1

    #@13d
    if-eqz v1, :cond_144

    #@13f
    const/4 v0, 0x5

    #@140
    iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BA:I

    #@142
    goto/16 :goto_a0

    #@144
    :cond_144
    const-string v1, "SMALL_CAPITALS"

    #@146
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@149
    move-result v0

    #@14a
    if-eqz v0, :cond_a0

    #@14c
    const/4 v0, 0x6

    #@14d
    iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BA:I

    #@14f
    goto/16 :goto_a0

    #@151
    :cond_151
    const-string v1, "BOLD"

    #@153
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@156
    move-result v1

    #@157
    if-eqz v1, :cond_15d

    #@159
    iput v6, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BB:I

    #@15b
    goto/16 :goto_b8

    #@15d
    :cond_15d
    const-string v1, "ITALIC"

    #@15f
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@162
    move-result v1

    #@163
    if-eqz v1, :cond_169

    #@165
    iput v5, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BB:I

    #@167
    goto/16 :goto_b8

    #@169
    :cond_169
    const-string v1, "BOLD_ITALIC"

    #@16b
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16e
    move-result v0

    #@16f
    if-eqz v0, :cond_b8

    #@171
    iput v7, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BB:I

    #@173
    goto/16 :goto_b8
.end method

.method public dZ()Lorg/json/JSONObject;
    .registers 5

    #@0
    new-instance v0, Lorg/json/JSONObject;

    #@2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@5
    :try_start_5
    const-string v1, "fontScale"

    #@7
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bs:F

    #@9
    float-to-double v2, v2

    #@a
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    #@d
    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bt:I

    #@f
    if-eqz v1, :cond_1c

    #@11
    const-string v1, "foregroundColor"

    #@13
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bt:I

    #@15
    invoke-direct {p0, v2}, Lcom/google/android/gms/cast/TextTrackStyle;->o(I)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@1c
    :cond_1c
    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->td:I

    #@1e
    if-eqz v1, :cond_2b

    #@20
    const-string v1, "backgroundColor"

    #@22
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->td:I

    #@24
    invoke-direct {p0, v2}, Lcom/google/android/gms/cast/TextTrackStyle;->o(I)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@2b
    :cond_2b
    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bu:I

    #@2d
    packed-switch v1, :pswitch_data_120

    #@30
    :goto_30
    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bv:I

    #@32
    if-eqz v1, :cond_3f

    #@34
    const-string v1, "edgeColor"

    #@36
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bv:I

    #@38
    invoke-direct {p0, v2}, Lcom/google/android/gms/cast/TextTrackStyle;->o(I)Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@3f
    :cond_3f
    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bw:I

    #@41
    packed-switch v1, :pswitch_data_12e

    #@44
    :goto_44
    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bx:I

    #@46
    if-eqz v1, :cond_53

    #@48
    const-string v1, "windowColor"

    #@4a
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bx:I

    #@4c
    invoke-direct {p0, v2}, Lcom/google/android/gms/cast/TextTrackStyle;->o(I)Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@53
    :cond_53
    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bw:I

    #@55
    const/4 v2, 0x2

    #@56
    if-ne v1, v2, :cond_5f

    #@58
    const-string v1, "windowRoundedCornerRadius"

    #@5a
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->By:I

    #@5c
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@5f
    :cond_5f
    iget-object v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bz:Ljava/lang/String;

    #@61
    if-eqz v1, :cond_6a

    #@63
    const-string v1, "fontFamily"

    #@65
    iget-object v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bz:Ljava/lang/String;

    #@67
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@6a
    :cond_6a
    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BA:I

    #@6c
    packed-switch v1, :pswitch_data_138

    #@6f
    :goto_6f
    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BB:I

    #@71
    packed-switch v1, :pswitch_data_14a

    #@74
    :goto_74
    iget-object v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->AA:Lorg/json/JSONObject;

    #@76
    if-eqz v1, :cond_7f

    #@78
    const-string v1, "customData"

    #@7a
    iget-object v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->AA:Lorg/json/JSONObject;

    #@7c
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@7f
    :cond_7f
    :goto_7f
    return-object v0

    #@80
    :pswitch_80
    const-string v1, "edgeType"

    #@82
    const-string v2, "NONE"

    #@84
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@87
    goto :goto_30

    #@88
    :catch_88
    move-exception v1

    #@89
    goto :goto_7f

    #@8a
    :pswitch_8a
    const-string v1, "edgeType"

    #@8c
    const-string v2, "OUTLINE"

    #@8e
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@91
    goto :goto_30

    #@92
    :pswitch_92
    const-string v1, "edgeType"

    #@94
    const-string v2, "DROP_SHADOW"

    #@96
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@99
    goto :goto_30

    #@9a
    :pswitch_9a
    const-string v1, "edgeType"

    #@9c
    const-string v2, "RAISED"

    #@9e
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@a1
    goto :goto_30

    #@a2
    :pswitch_a2
    const-string v1, "edgeType"

    #@a4
    const-string v2, "DEPRESSED"

    #@a6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@a9
    goto :goto_30

    #@aa
    :pswitch_aa
    const-string v1, "windowType"

    #@ac
    const-string v2, "NONE"

    #@ae
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@b1
    goto :goto_44

    #@b2
    :pswitch_b2
    const-string v1, "windowType"

    #@b4
    const-string v2, "NORMAL"

    #@b6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@b9
    goto :goto_44

    #@ba
    :pswitch_ba
    const-string v1, "windowType"

    #@bc
    const-string v2, "ROUNDED_CORNERS"

    #@be
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@c1
    goto :goto_44

    #@c2
    :pswitch_c2
    const-string v1, "fontGenericFamily"

    #@c4
    const-string v2, "SANS_SERIF"

    #@c6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@c9
    goto :goto_6f

    #@ca
    :pswitch_ca
    const-string v1, "fontGenericFamily"

    #@cc
    const-string v2, "MONOSPACED_SANS_SERIF"

    #@ce
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@d1
    goto :goto_6f

    #@d2
    :pswitch_d2
    const-string v1, "fontGenericFamily"

    #@d4
    const-string v2, "SERIF"

    #@d6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@d9
    goto :goto_6f

    #@da
    :pswitch_da
    const-string v1, "fontGenericFamily"

    #@dc
    const-string v2, "MONOSPACED_SERIF"

    #@de
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@e1
    goto :goto_6f

    #@e2
    :pswitch_e2
    const-string v1, "fontGenericFamily"

    #@e4
    const-string v2, "CASUAL"

    #@e6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@e9
    goto :goto_6f

    #@ea
    :pswitch_ea
    const-string v1, "fontGenericFamily"

    #@ec
    const-string v2, "CURSIVE"

    #@ee
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@f1
    goto/16 :goto_6f

    #@f3
    :pswitch_f3
    const-string v1, "fontGenericFamily"

    #@f5
    const-string v2, "SMALL_CAPITALS"

    #@f7
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@fa
    goto/16 :goto_6f

    #@fc
    :pswitch_fc
    const-string v1, "fontStyle"

    #@fe
    const-string v2, "NORMAL"

    #@100
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@103
    goto/16 :goto_74

    #@105
    :pswitch_105
    const-string v1, "fontStyle"

    #@107
    const-string v2, "BOLD"

    #@109
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@10c
    goto/16 :goto_74

    #@10e
    :pswitch_10e
    const-string v1, "fontStyle"

    #@110
    const-string v2, "ITALIC"

    #@112
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@115
    goto/16 :goto_74

    #@117
    :pswitch_117
    const-string v1, "fontStyle"

    #@119
    const-string v2, "BOLD_ITALIC"

    #@11b
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_11e} :catch_88

    #@11e
    goto/16 :goto_74

    #@120
    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_80
        :pswitch_8a
        :pswitch_92
        :pswitch_9a
        :pswitch_a2
    .end packed-switch

    #@12e
    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_b2
        :pswitch_ba
    .end packed-switch

    #@138
    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_c2
        :pswitch_ca
        :pswitch_d2
        :pswitch_da
        :pswitch_e2
        :pswitch_ea
        :pswitch_f3
    .end packed-switch

    #@14a
    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_fc
        :pswitch_105
        :pswitch_10e
        :pswitch_117
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    if-ne p0, p1, :cond_5

    #@4
    :cond_4
    :goto_4
    return v0

    #@5
    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/cast/TextTrackStyle;

    #@7
    if-eqz v2, :cond_71

    #@9
    check-cast p1, Lcom/google/android/gms/cast/TextTrackStyle;

    #@b
    iget-object v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->AA:Lorg/json/JSONObject;

    #@d
    if-nez v2, :cond_6d

    #@f
    move v2, v0

    #@10
    :goto_10
    iget-object v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->AA:Lorg/json/JSONObject;

    #@12
    if-nez v3, :cond_6f

    #@14
    move v3, v0

    #@15
    :goto_15
    if-ne v2, v3, :cond_71

    #@17
    iget-object v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->AA:Lorg/json/JSONObject;

    #@19
    if-eqz v2, :cond_29

    #@1b
    iget-object v2, p1, Lcom/google/android/gms/cast/TextTrackStyle;->AA:Lorg/json/JSONObject;

    #@1d
    if-eqz v2, :cond_29

    #@1f
    iget-object v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->AA:Lorg/json/JSONObject;

    #@21
    iget-object v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->AA:Lorg/json/JSONObject;

    #@23
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/in;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_71

    #@29
    :cond_29
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bs:F

    #@2b
    iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->Bs:F

    #@2d
    cmpl-float v2, v2, v3

    #@2f
    if-nez v2, :cond_6b

    #@31
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bt:I

    #@33
    iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->Bt:I

    #@35
    if-ne v2, v3, :cond_6b

    #@37
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->td:I

    #@39
    iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->td:I

    #@3b
    if-ne v2, v3, :cond_6b

    #@3d
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bu:I

    #@3f
    iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->Bu:I

    #@41
    if-ne v2, v3, :cond_6b

    #@43
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bv:I

    #@45
    iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->Bv:I

    #@47
    if-ne v2, v3, :cond_6b

    #@49
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bw:I

    #@4b
    iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->Bw:I

    #@4d
    if-ne v2, v3, :cond_6b

    #@4f
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->By:I

    #@51
    iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->By:I

    #@53
    if-ne v2, v3, :cond_6b

    #@55
    iget-object v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bz:Ljava/lang/String;

    #@57
    iget-object v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->Bz:Ljava/lang/String;

    #@59
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5c
    move-result v2

    #@5d
    if-eqz v2, :cond_6b

    #@5f
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BA:I

    #@61
    iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->BA:I

    #@63
    if-ne v2, v3, :cond_6b

    #@65
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BB:I

    #@67
    iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->BB:I

    #@69
    if-eq v2, v3, :cond_4

    #@6b
    :cond_6b
    move v0, v1

    #@6c
    goto :goto_4

    #@6d
    :cond_6d
    move v2, v1

    #@6e
    goto :goto_10

    #@6f
    :cond_6f
    move v3, v1

    #@70
    goto :goto_15

    #@71
    :cond_71
    move v0, v1

    #@72
    goto :goto_4
.end method

.method public getBackgroundColor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->td:I

    #@2
    return v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->AA:Lorg/json/JSONObject;

    #@2
    return-object v0
.end method

.method public getEdgeColor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bv:I

    #@2
    return v0
.end method

.method public getEdgeType()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bu:I

    #@2
    return v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bz:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getFontGenericFamily()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BA:I

    #@2
    return v0
.end method

.method public getFontScale()F
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bs:F

    #@2
    return v0
.end method

.method public getFontStyle()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BB:I

    #@2
    return v0
.end method

.method public getForegroundColor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bt:I

    #@2
    return v0
.end method

.method public getWindowColor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bx:I

    #@2
    return v0
.end method

.method public getWindowCornerRadius()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->By:I

    #@2
    return v0
.end method

.method public getWindowType()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bw:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/16 v0, 0xc

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    const/4 v1, 0x0

    #@5
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bs:F

    #@7
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@a
    move-result-object v2

    #@b
    aput-object v2, v0, v1

    #@d
    const/4 v1, 0x1

    #@e
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bt:I

    #@10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v2

    #@14
    aput-object v2, v0, v1

    #@16
    const/4 v1, 0x2

    #@17
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->td:I

    #@19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v2

    #@1d
    aput-object v2, v0, v1

    #@1f
    const/4 v1, 0x3

    #@20
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bu:I

    #@22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v2

    #@26
    aput-object v2, v0, v1

    #@28
    const/4 v1, 0x4

    #@29
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bv:I

    #@2b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v2

    #@2f
    aput-object v2, v0, v1

    #@31
    const/4 v1, 0x5

    #@32
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bw:I

    #@34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v2

    #@38
    aput-object v2, v0, v1

    #@3a
    const/4 v1, 0x6

    #@3b
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bx:I

    #@3d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@40
    move-result-object v2

    #@41
    aput-object v2, v0, v1

    #@43
    const/4 v1, 0x7

    #@44
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->By:I

    #@46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@49
    move-result-object v2

    #@4a
    aput-object v2, v0, v1

    #@4c
    const/16 v1, 0x8

    #@4e
    iget-object v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bz:Ljava/lang/String;

    #@50
    aput-object v2, v0, v1

    #@52
    const/16 v1, 0x9

    #@54
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BA:I

    #@56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@59
    move-result-object v2

    #@5a
    aput-object v2, v0, v1

    #@5c
    const/16 v1, 0xa

    #@5e
    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BB:I

    #@60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@63
    move-result-object v2

    #@64
    aput-object v2, v0, v1

    #@66
    const/16 v1, 0xb

    #@68
    iget-object v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->AA:Lorg/json/JSONObject;

    #@6a
    aput-object v2, v0, v1

    #@6c
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@6f
    move-result v0

    #@70
    return v0
.end method

.method public setBackgroundColor(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->td:I

    #@2
    return-void
.end method

.method public setCustomData(Lorg/json/JSONObject;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->AA:Lorg/json/JSONObject;

    #@2
    return-void
.end method

.method public setEdgeColor(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bv:I

    #@2
    return-void
.end method

.method public setEdgeType(I)V
    .registers 4

    #@0
    if-ltz p1, :cond_5

    #@2
    const/4 v0, 0x4

    #@3
    if-le p1, v0, :cond_d

    #@5
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string v1, "invalid edgeType"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bu:I

    #@f
    return-void
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bz:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setFontGenericFamily(I)V
    .registers 4

    #@0
    if-ltz p1, :cond_5

    #@2
    const/4 v0, 0x6

    #@3
    if-le p1, v0, :cond_d

    #@5
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string v1, "invalid fontGenericFamily"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BA:I

    #@f
    return-void
.end method

.method public setFontScale(F)V
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bs:F

    #@2
    return-void
.end method

.method public setFontStyle(I)V
    .registers 4

    #@0
    if-ltz p1, :cond_5

    #@2
    const/4 v0, 0x3

    #@3
    if-le p1, v0, :cond_d

    #@5
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string v1, "invalid fontStyle"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->BB:I

    #@f
    return-void
.end method

.method public setForegroundColor(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bt:I

    #@2
    return-void
.end method

.method public setWindowColor(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bx:I

    #@2
    return-void
.end method

.method public setWindowCornerRadius(I)V
    .registers 4

    #@0
    if-gez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string v1, "invalid windowCornerRadius"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->By:I

    #@c
    return-void
.end method

.method public setWindowType(I)V
    .registers 4

    #@0
    if-ltz p1, :cond_5

    #@2
    const/4 v0, 0x2

    #@3
    if-le p1, v0, :cond_d

    #@5
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string v1, "invalid windowType"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->Bw:I

    #@f
    return-void
.end method
