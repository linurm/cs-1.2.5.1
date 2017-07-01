.class public final Lcom/google/android/gms/internal/in;
.super Ljava/lang/Object;


# static fields
.field private static final Hw:Ljava/util/regex/Pattern;

.field private static final Hx:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "\\\\."

    #@2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/internal/in;->Hw:Ljava/util/regex/Pattern;

    #@8
    const-string v0, "[\\\\\"/\u0008\u000c\n\r\t]"

    #@a
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/google/android/gms/internal/in;->Hx:Ljava/util/regex/Pattern;

    #@10
    return-void
.end method

.method public static aK(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_59

    #@6
    sget-object v0, Lcom/google/android/gms/internal/in;->Hx:Ljava/util/regex/Pattern;

    #@8
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@b
    move-result-object v1

    #@c
    const/4 v0, 0x0

    #@d
    :goto_d
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_57

    #@13
    if-nez v0, :cond_1a

    #@15
    new-instance v0, Ljava/lang/StringBuffer;

    #@17
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@1a
    :cond_1a
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    const/4 v3, 0x0

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@22
    move-result v2

    #@23
    sparse-switch v2, :sswitch_data_62

    #@26
    goto :goto_d

    #@27
    :sswitch_27
    const-string v2, "\\\\b"

    #@29
    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    #@2c
    goto :goto_d

    #@2d
    :sswitch_2d
    const-string v2, "\\\\\\\""

    #@2f
    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    #@32
    goto :goto_d

    #@33
    :sswitch_33
    const-string v2, "\\\\\\\\"

    #@35
    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    #@38
    goto :goto_d

    #@39
    :sswitch_39
    const-string v2, "\\\\/"

    #@3b
    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    #@3e
    goto :goto_d

    #@3f
    :sswitch_3f
    const-string v2, "\\\\f"

    #@41
    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    #@44
    goto :goto_d

    #@45
    :sswitch_45
    const-string v2, "\\\\n"

    #@47
    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    #@4a
    goto :goto_d

    #@4b
    :sswitch_4b
    const-string v2, "\\\\r"

    #@4d
    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    #@50
    goto :goto_d

    #@51
    :sswitch_51
    const-string v2, "\\\\t"

    #@53
    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    #@56
    goto :goto_d

    #@57
    :cond_57
    if-nez v0, :cond_5a

    #@59
    :cond_59
    :goto_59
    return-object p0

    #@5a
    :cond_5a
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@5d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@60
    move-result-object p0

    #@61
    goto :goto_59

    #@62
    :sswitch_data_62
    .sparse-switch
        0x8 -> :sswitch_27
        0x9 -> :sswitch_51
        0xa -> :sswitch_45
        0xc -> :sswitch_3f
        0xd -> :sswitch_4b
        0x22 -> :sswitch_2d
        0x2f -> :sswitch_39
        0x5c -> :sswitch_33
    .end sparse-switch
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    instance-of v0, p0, Lorg/json/JSONObject;

    #@4
    if-eqz v0, :cond_42

    #@6
    instance-of v0, p1, Lorg/json/JSONObject;

    #@8
    if-eqz v0, :cond_42

    #@a
    check-cast p0, Lorg/json/JSONObject;

    #@c
    check-cast p1, Lorg/json/JSONObject;

    #@e
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    #@11
    move-result v0

    #@12
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    #@15
    move-result v3

    #@16
    if-eq v0, v3, :cond_1a

    #@18
    move v0, v1

    #@19
    :goto_19
    return v0

    #@1a
    :cond_1a
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    #@1d
    move-result-object v3

    #@1e
    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_40

    #@24
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Ljava/lang/String;

    #@2a
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_7d

    #@30
    :try_start_30
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/in;->d(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_3b} :catch_7a

    #@3b
    move-result v0

    #@3c
    if-nez v0, :cond_1e

    #@3e
    move v0, v1

    #@3f
    goto :goto_19

    #@40
    :cond_40
    move v0, v2

    #@41
    goto :goto_19

    #@42
    :cond_42
    instance-of v0, p0, Lorg/json/JSONArray;

    #@44
    if-eqz v0, :cond_72

    #@46
    instance-of v0, p1, Lorg/json/JSONArray;

    #@48
    if-eqz v0, :cond_72

    #@4a
    check-cast p0, Lorg/json/JSONArray;

    #@4c
    check-cast p1, Lorg/json/JSONArray;

    #@4e
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    #@51
    move-result v0

    #@52
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    #@55
    move-result v3

    #@56
    if-ne v0, v3, :cond_7d

    #@58
    move v0, v1

    #@59
    :goto_59
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    #@5c
    move-result v3

    #@5d
    if-ge v0, v3, :cond_70

    #@5f
    :try_start_5f
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    #@66
    move-result-object v4

    #@67
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/in;->d(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_6a
    .catch Lorg/json/JSONException; {:try_start_5f .. :try_end_6a} :catch_77

    #@6a
    move-result v3

    #@6b
    if-eqz v3, :cond_7d

    #@6d
    add-int/lit8 v0, v0, 0x1

    #@6f
    goto :goto_59

    #@70
    :cond_70
    move v0, v2

    #@71
    goto :goto_19

    #@72
    :cond_72
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v0

    #@76
    goto :goto_19

    #@77
    :catch_77
    move-exception v0

    #@78
    move v0, v1

    #@79
    goto :goto_19

    #@7a
    :catch_7a
    move-exception v0

    #@7b
    move v0, v1

    #@7c
    goto :goto_19

    #@7d
    :cond_7d
    move v0, v1

    #@7e
    goto :goto_19
.end method
