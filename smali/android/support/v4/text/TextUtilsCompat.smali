.class public Landroid/support/v4/text/TextUtilsCompat;
.super Ljava/lang/Object;


# static fields
.field private static ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

.field private static HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

.field public static final ROOT:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    new-instance v0, Ljava/util/Locale;

    #@2
    const-string v1, ""

    #@4
    const-string v2, ""

    #@6
    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->ROOT:Ljava/util/Locale;

    #@b
    const-string v0, "Arab"

    #@d
    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    #@f
    const-string v0, "Hebr"

    #@11
    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    #@13
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    #@8
    move-result v1

    #@9
    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    #@c
    move-result v1

    #@d
    packed-switch v1, :pswitch_data_14

    #@10
    :goto_10
    return v0

    #@11
    :pswitch_11
    const/4 v0, 0x1

    #@12
    goto :goto_10

    #@13
    nop

    #@14
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .registers 3
    .param p0    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #@0
    if-eqz p0, :cond_2f

    #@2
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->ROOT:Ljava/util/Locale;

    #@4
    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_2f

    #@a
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-static {v0}, Landroid/support/v4/text/ICUCompat;->addLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    invoke-static {v0}, Landroid/support/v4/text/ICUCompat;->getScript(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    if-nez v0, :cond_1d

    #@18
    invoke-static {p0}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I

    #@1b
    move-result v0

    #@1c
    :goto_1c
    return v0

    #@1d
    :cond_1d
    sget-object v1, Landroid/support/v4/text/TextUtilsCompat;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_2d

    #@25
    sget-object v1, Landroid/support/v4/text/TextUtilsCompat;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_2f

    #@2d
    :cond_2d
    const/4 v0, 0x1

    #@2e
    goto :goto_1c

    #@2f
    :cond_2f
    const/4 v0, 0x0

    #@30
    goto :goto_1c
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    #@0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const/4 v0, 0x0

    #@6
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v2

    #@a
    if-ge v0, v2, :cond_37

    #@c
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v2

    #@10
    sparse-switch v2, :sswitch_data_3c

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    :goto_16
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_6

    #@19
    :sswitch_19
    const-string v2, "&lt;"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    goto :goto_16

    #@1f
    :sswitch_1f
    const-string v2, "&gt;"

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    goto :goto_16

    #@25
    :sswitch_25
    const-string v2, "&amp;"

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    goto :goto_16

    #@2b
    :sswitch_2b
    const-string v2, "&#39;"

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    goto :goto_16

    #@31
    :sswitch_31
    const-string v2, "&quot;"

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    goto :goto_16

    #@37
    :cond_37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    return-object v0

    #@3c
    :sswitch_data_3c
    .sparse-switch
        0x22 -> :sswitch_31
        0x26 -> :sswitch_25
        0x27 -> :sswitch_2b
        0x3c -> :sswitch_19
        0x3e -> :sswitch_1f
    .end sparse-switch
.end method
