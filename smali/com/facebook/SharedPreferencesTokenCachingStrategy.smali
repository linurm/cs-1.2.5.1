.class public Lcom/facebook/SharedPreferencesTokenCachingStrategy;
.super Lcom/facebook/TokenCachingStrategy;


# static fields
.field private static final DEFAULT_CACHE_KEY:Ljava/lang/String; = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY"

.field private static final JSON_VALUE:Ljava/lang/String; = "value"

.field private static final JSON_VALUE_ENUM_TYPE:Ljava/lang/String; = "enumType"

.field private static final JSON_VALUE_TYPE:Ljava/lang/String; = "valueType"

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_BOOLEAN:Ljava/lang/String; = "bool"

.field private static final TYPE_BOOLEAN_ARRAY:Ljava/lang/String; = "bool[]"

.field private static final TYPE_BYTE:Ljava/lang/String; = "byte"

.field private static final TYPE_BYTE_ARRAY:Ljava/lang/String; = "byte[]"

.field private static final TYPE_CHAR:Ljava/lang/String; = "char"

.field private static final TYPE_CHAR_ARRAY:Ljava/lang/String; = "char[]"

.field private static final TYPE_DOUBLE:Ljava/lang/String; = "double"

.field private static final TYPE_DOUBLE_ARRAY:Ljava/lang/String; = "double[]"

.field private static final TYPE_ENUM:Ljava/lang/String; = "enum"

.field private static final TYPE_FLOAT:Ljava/lang/String; = "float"

.field private static final TYPE_FLOAT_ARRAY:Ljava/lang/String; = "float[]"

.field private static final TYPE_INTEGER:Ljava/lang/String; = "int"

.field private static final TYPE_INTEGER_ARRAY:Ljava/lang/String; = "int[]"

.field private static final TYPE_LONG:Ljava/lang/String; = "long"

.field private static final TYPE_LONG_ARRAY:Ljava/lang/String; = "long[]"

.field private static final TYPE_SHORT:Ljava/lang/String; = "short"

.field private static final TYPE_SHORT_ARRAY:Ljava/lang/String; = "short[]"

.field private static final TYPE_STRING:Ljava/lang/String; = "string"

.field private static final TYPE_STRING_LIST:Ljava/lang/String; = "stringList"


# instance fields
.field private cache:Landroid/content/SharedPreferences;

.field private cacheKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->TAG:Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    #@0
    invoke-direct {p0}, Lcom/facebook/TokenCachingStrategy;-><init>()V

    #@3
    const-string v0, "context"

    #@5
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@8
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_10

    #@e
    const-string p2, "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY"

    #@10
    :cond_10
    iput-object p2, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cacheKey:Ljava/lang/String;

    #@12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@15
    move-result-object v0

    #@16
    if-eqz v0, :cond_19

    #@18
    move-object p1, v0

    #@19
    :cond_19
    iget-object v0, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cacheKey:Ljava/lang/String;

    #@1b
    const/4 v1, 0x0

    #@1c
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cache:Landroid/content/SharedPreferences;

    #@22
    return-void
.end method

.method private deserializeKey(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    const/4 v6, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    new-instance v1, Lorg/json/JSONObject;

    #@4
    iget-object v2, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cache:Landroid/content/SharedPreferences;

    #@6
    const-string v3, "{}"

    #@8
    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@f
    const-string v2, "valueType"

    #@11
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    const-string v3, "bool"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_27

    #@1d
    const-string v0, "value"

    #@1f
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    #@22
    move-result v0

    #@23
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@26
    :cond_26
    :goto_26
    return-void

    #@27
    :cond_27
    const-string v3, "bool[]"

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_4b

    #@2f
    const-string v2, "value"

    #@31
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    #@38
    move-result v2

    #@39
    new-array v2, v2, [Z

    #@3b
    :goto_3b
    array-length v3, v2

    #@3c
    if-ge v0, v3, :cond_47

    #@3e
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    #@41
    move-result v3

    #@42
    aput-boolean v3, v2, v0

    #@44
    add-int/lit8 v0, v0, 0x1

    #@46
    goto :goto_3b

    #@47
    :cond_47
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    #@4a
    goto :goto_26

    #@4b
    :cond_4b
    const-string v3, "byte"

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v3

    #@51
    if-eqz v3, :cond_5e

    #@53
    const-string v0, "value"

    #@55
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    #@58
    move-result v0

    #@59
    int-to-byte v0, v0

    #@5a
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    #@5d
    goto :goto_26

    #@5e
    :cond_5e
    const-string v3, "byte[]"

    #@60
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v3

    #@64
    if-eqz v3, :cond_84

    #@66
    const-string v2, "value"

    #@68
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    #@6f
    move-result v2

    #@70
    new-array v2, v2, [B

    #@72
    :goto_72
    array-length v3, v2

    #@73
    if-ge v0, v3, :cond_80

    #@75
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    #@78
    move-result v3

    #@79
    int-to-byte v3, v3

    #@7a
    int-to-byte v3, v3

    #@7b
    aput-byte v3, v2, v0

    #@7d
    add-int/lit8 v0, v0, 0x1

    #@7f
    goto :goto_72

    #@80
    :cond_80
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    #@83
    goto :goto_26

    #@84
    :cond_84
    const-string v3, "short"

    #@86
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@89
    move-result v3

    #@8a
    if-eqz v3, :cond_97

    #@8c
    const-string v0, "value"

    #@8e
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    #@91
    move-result v0

    #@92
    int-to-short v0, v0

    #@93
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    #@96
    goto :goto_26

    #@97
    :cond_97
    const-string v3, "short[]"

    #@99
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9c
    move-result v3

    #@9d
    if-eqz v3, :cond_be

    #@9f
    const-string v2, "value"

    #@a1
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@a4
    move-result-object v1

    #@a5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    #@a8
    move-result v2

    #@a9
    new-array v2, v2, [S

    #@ab
    :goto_ab
    array-length v3, v2

    #@ac
    if-ge v0, v3, :cond_b9

    #@ae
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    #@b1
    move-result v3

    #@b2
    int-to-short v3, v3

    #@b3
    int-to-short v3, v3

    #@b4
    aput-short v3, v2, v0

    #@b6
    add-int/lit8 v0, v0, 0x1

    #@b8
    goto :goto_ab

    #@b9
    :cond_b9
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    #@bc
    goto/16 :goto_26

    #@be
    :cond_be
    const-string v3, "int"

    #@c0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c3
    move-result v3

    #@c4
    if-eqz v3, :cond_d1

    #@c6
    const-string v0, "value"

    #@c8
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    #@cb
    move-result v0

    #@cc
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@cf
    goto/16 :goto_26

    #@d1
    :cond_d1
    const-string v3, "int[]"

    #@d3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d6
    move-result v3

    #@d7
    if-eqz v3, :cond_f6

    #@d9
    const-string v2, "value"

    #@db
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@de
    move-result-object v1

    #@df
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    #@e2
    move-result v2

    #@e3
    new-array v2, v2, [I

    #@e5
    :goto_e5
    array-length v3, v2

    #@e6
    if-ge v0, v3, :cond_f1

    #@e8
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    #@eb
    move-result v3

    #@ec
    aput v3, v2, v0

    #@ee
    add-int/lit8 v0, v0, 0x1

    #@f0
    goto :goto_e5

    #@f1
    :cond_f1
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    #@f4
    goto/16 :goto_26

    #@f6
    :cond_f6
    const-string v3, "long"

    #@f8
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fb
    move-result v3

    #@fc
    if-eqz v3, :cond_109

    #@fe
    const-string v0, "value"

    #@100
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    #@103
    move-result-wide v0

    #@104
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@107
    goto/16 :goto_26

    #@109
    :cond_109
    const-string v3, "long[]"

    #@10b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10e
    move-result v3

    #@10f
    if-eqz v3, :cond_12e

    #@111
    const-string v2, "value"

    #@113
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@116
    move-result-object v1

    #@117
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    #@11a
    move-result v2

    #@11b
    new-array v2, v2, [J

    #@11d
    :goto_11d
    array-length v3, v2

    #@11e
    if-ge v0, v3, :cond_129

    #@120
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getLong(I)J

    #@123
    move-result-wide v4

    #@124
    aput-wide v4, v2, v0

    #@126
    add-int/lit8 v0, v0, 0x1

    #@128
    goto :goto_11d

    #@129
    :cond_129
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    #@12c
    goto/16 :goto_26

    #@12e
    :cond_12e
    const-string v3, "float"

    #@130
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@133
    move-result v3

    #@134
    if-eqz v3, :cond_142

    #@136
    const-string v0, "value"

    #@138
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    #@13b
    move-result-wide v0

    #@13c
    double-to-float v0, v0

    #@13d
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@140
    goto/16 :goto_26

    #@142
    :cond_142
    const-string v3, "float[]"

    #@144
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@147
    move-result v3

    #@148
    if-eqz v3, :cond_168

    #@14a
    const-string v2, "value"

    #@14c
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@14f
    move-result-object v1

    #@150
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    #@153
    move-result v2

    #@154
    new-array v2, v2, [F

    #@156
    :goto_156
    array-length v3, v2

    #@157
    if-ge v0, v3, :cond_163

    #@159
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getDouble(I)D

    #@15c
    move-result-wide v4

    #@15d
    double-to-float v3, v4

    #@15e
    aput v3, v2, v0

    #@160
    add-int/lit8 v0, v0, 0x1

    #@162
    goto :goto_156

    #@163
    :cond_163
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    #@166
    goto/16 :goto_26

    #@168
    :cond_168
    const-string v3, "double"

    #@16a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16d
    move-result v3

    #@16e
    if-eqz v3, :cond_17b

    #@170
    const-string v0, "value"

    #@172
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    #@175
    move-result-wide v0

    #@176
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    #@179
    goto/16 :goto_26

    #@17b
    :cond_17b
    const-string v3, "double[]"

    #@17d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@180
    move-result v3

    #@181
    if-eqz v3, :cond_1a0

    #@183
    const-string v2, "value"

    #@185
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@188
    move-result-object v1

    #@189
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    #@18c
    move-result v2

    #@18d
    new-array v2, v2, [D

    #@18f
    :goto_18f
    array-length v3, v2

    #@190
    if-ge v0, v3, :cond_19b

    #@192
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getDouble(I)D

    #@195
    move-result-wide v4

    #@196
    aput-wide v4, v2, v0

    #@198
    add-int/lit8 v0, v0, 0x1

    #@19a
    goto :goto_18f

    #@19b
    :cond_19b
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    #@19e
    goto/16 :goto_26

    #@1a0
    :cond_1a0
    const-string v3, "char"

    #@1a2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a5
    move-result v3

    #@1a6
    if-eqz v3, :cond_1bf

    #@1a8
    const-string v2, "value"

    #@1aa
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1ad
    move-result-object v1

    #@1ae
    if-eqz v1, :cond_26

    #@1b0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1b3
    move-result v2

    #@1b4
    if-ne v2, v6, :cond_26

    #@1b6
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    #@1b9
    move-result v0

    #@1ba
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    #@1bd
    goto/16 :goto_26

    #@1bf
    :cond_1bf
    const-string v3, "char[]"

    #@1c1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c4
    move-result v3

    #@1c5
    if-eqz v3, :cond_1f1

    #@1c7
    const-string v2, "value"

    #@1c9
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@1cc
    move-result-object v2

    #@1cd
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    #@1d0
    move-result v1

    #@1d1
    new-array v3, v1, [C

    #@1d3
    move v1, v0

    #@1d4
    :goto_1d4
    array-length v4, v3

    #@1d5
    if-ge v1, v4, :cond_1ec

    #@1d7
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    #@1da
    move-result-object v4

    #@1db
    if-eqz v4, :cond_1e9

    #@1dd
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@1e0
    move-result v5

    #@1e1
    if-ne v5, v6, :cond_1e9

    #@1e3
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    #@1e6
    move-result v4

    #@1e7
    aput-char v4, v3, v1

    #@1e9
    :cond_1e9
    add-int/lit8 v1, v1, 0x1

    #@1eb
    goto :goto_1d4

    #@1ec
    :cond_1ec
    invoke-virtual {p2, p1, v3}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    #@1ef
    goto/16 :goto_26

    #@1f1
    :cond_1f1
    const-string v3, "string"

    #@1f3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f6
    move-result v3

    #@1f7
    if-eqz v3, :cond_204

    #@1f9
    const-string v0, "value"

    #@1fb
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1fe
    move-result-object v0

    #@1ff
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@202
    goto/16 :goto_26

    #@204
    :cond_204
    const-string v3, "stringList"

    #@206
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@209
    move-result v3

    #@20a
    if-eqz v3, :cond_236

    #@20c
    const-string v2, "value"

    #@20e
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@211
    move-result-object v2

    #@212
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    #@215
    move-result v3

    #@216
    new-instance v4, Ljava/util/ArrayList;

    #@218
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@21b
    move v1, v0

    #@21c
    :goto_21c
    if-ge v1, v3, :cond_231

    #@21e
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    #@221
    move-result-object v0

    #@222
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    #@224
    if-ne v0, v5, :cond_22e

    #@226
    const/4 v0, 0x0

    #@227
    :goto_227
    invoke-virtual {v4, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@22a
    add-int/lit8 v0, v1, 0x1

    #@22c
    move v1, v0

    #@22d
    goto :goto_21c

    #@22e
    :cond_22e
    check-cast v0, Ljava/lang/String;

    #@230
    goto :goto_227

    #@231
    :cond_231
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@234
    goto/16 :goto_26

    #@236
    :cond_236
    const-string v0, "enum"

    #@238
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23b
    move-result v0

    #@23c
    if-eqz v0, :cond_26

    #@23e
    :try_start_23e
    const-string v0, "enumType"

    #@240
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@243
    move-result-object v0

    #@244
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@247
    move-result-object v0

    #@248
    const-string v2, "value"

    #@24a
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@24d
    move-result-object v1

    #@24e
    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@251
    move-result-object v0

    #@252
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_255
    .catch Ljava/lang/ClassNotFoundException; {:try_start_23e .. :try_end_255} :catch_257
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23e .. :try_end_255} :catch_25a

    #@255
    goto/16 :goto_26

    #@257
    :catch_257
    move-exception v0

    #@258
    goto/16 :goto_26

    #@25a
    :catch_25a
    move-exception v0

    #@25b
    goto/16 :goto_26
.end method

.method private serializeKey(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_9

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    new-instance v4, Lorg/json/JSONObject;

    #@b
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    #@e
    instance-of v3, v0, Ljava/lang/Byte;

    #@10
    if-eqz v3, :cond_35

    #@12
    const-string v1, "value"

    #@14
    check-cast v0, Ljava/lang/Byte;

    #@16
    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    #@19
    move-result v0

    #@1a
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@1d
    const-string v0, "byte"

    #@1f
    :goto_1f
    if-eqz v0, :cond_8

    #@21
    const-string v1, "valueType"

    #@23
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@26
    if-eqz v2, :cond_2d

    #@28
    const-string v0, "value"

    #@2a
    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@2d
    :cond_2d
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    invoke-interface {p3, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@34
    goto :goto_8

    #@35
    :cond_35
    instance-of v3, v0, Ljava/lang/Short;

    #@37
    if-eqz v3, :cond_47

    #@39
    const-string v1, "value"

    #@3b
    check-cast v0, Ljava/lang/Short;

    #@3d
    invoke-virtual {v0}, Ljava/lang/Short;->intValue()I

    #@40
    move-result v0

    #@41
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@44
    const-string v0, "short"

    #@46
    goto :goto_1f

    #@47
    :cond_47
    instance-of v3, v0, Ljava/lang/Integer;

    #@49
    if-eqz v3, :cond_59

    #@4b
    const-string v1, "value"

    #@4d
    check-cast v0, Ljava/lang/Integer;

    #@4f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@52
    move-result v0

    #@53
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@56
    const-string v0, "int"

    #@58
    goto :goto_1f

    #@59
    :cond_59
    instance-of v3, v0, Ljava/lang/Long;

    #@5b
    if-eqz v3, :cond_6b

    #@5d
    const-string v1, "value"

    #@5f
    check-cast v0, Ljava/lang/Long;

    #@61
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@64
    move-result-wide v6

    #@65
    invoke-virtual {v4, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@68
    const-string v0, "long"

    #@6a
    goto :goto_1f

    #@6b
    :cond_6b
    instance-of v3, v0, Ljava/lang/Float;

    #@6d
    if-eqz v3, :cond_7d

    #@6f
    const-string v1, "value"

    #@71
    check-cast v0, Ljava/lang/Float;

    #@73
    invoke-virtual {v0}, Ljava/lang/Float;->doubleValue()D

    #@76
    move-result-wide v6

    #@77
    invoke-virtual {v4, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    #@7a
    const-string v0, "float"

    #@7c
    goto :goto_1f

    #@7d
    :cond_7d
    instance-of v3, v0, Ljava/lang/Double;

    #@7f
    if-eqz v3, :cond_8f

    #@81
    const-string v1, "value"

    #@83
    check-cast v0, Ljava/lang/Double;

    #@85
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@88
    move-result-wide v6

    #@89
    invoke-virtual {v4, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    #@8c
    const-string v0, "double"

    #@8e
    goto :goto_1f

    #@8f
    :cond_8f
    instance-of v3, v0, Ljava/lang/Boolean;

    #@91
    if-eqz v3, :cond_a2

    #@93
    const-string v1, "value"

    #@95
    check-cast v0, Ljava/lang/Boolean;

    #@97
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@9a
    move-result v0

    #@9b
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    #@9e
    const-string v0, "bool"

    #@a0
    goto/16 :goto_1f

    #@a2
    :cond_a2
    instance-of v3, v0, Ljava/lang/Character;

    #@a4
    if-eqz v3, :cond_b3

    #@a6
    const-string v1, "value"

    #@a8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@ab
    move-result-object v0

    #@ac
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@af
    const-string v0, "char"

    #@b1
    goto/16 :goto_1f

    #@b3
    :cond_b3
    instance-of v3, v0, Ljava/lang/String;

    #@b5
    if-eqz v3, :cond_c2

    #@b7
    const-string v1, "value"

    #@b9
    check-cast v0, Ljava/lang/String;

    #@bb
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@be
    const-string v0, "string"

    #@c0
    goto/16 :goto_1f

    #@c2
    :cond_c2
    instance-of v3, v0, Ljava/lang/Enum;

    #@c4
    if-eqz v3, :cond_e0

    #@c6
    const-string v1, "value"

    #@c8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@cb
    move-result-object v3

    #@cc
    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@cf
    const-string v1, "enumType"

    #@d1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d4
    move-result-object v0

    #@d5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@d8
    move-result-object v0

    #@d9
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@dc
    const-string v0, "enum"

    #@de
    goto/16 :goto_1f

    #@e0
    :cond_e0
    new-instance v3, Lorg/json/JSONArray;

    #@e2
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    #@e5
    instance-of v5, v0, [B

    #@e7
    if-eqz v5, :cond_fc

    #@e9
    const-string v2, "byte[]"

    #@eb
    check-cast v0, [B

    #@ed
    array-length v5, v0

    #@ee
    :goto_ee
    if-ge v1, v5, :cond_f8

    #@f0
    aget-byte v6, v0, v1

    #@f2
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    #@f5
    add-int/lit8 v1, v1, 0x1

    #@f7
    goto :goto_ee

    #@f8
    :cond_f8
    move-object v0, v2

    #@f9
    move-object v2, v3

    #@fa
    goto/16 :goto_1f

    #@fc
    :cond_fc
    instance-of v5, v0, [S

    #@fe
    if-eqz v5, :cond_113

    #@100
    const-string v2, "short[]"

    #@102
    check-cast v0, [S

    #@104
    array-length v5, v0

    #@105
    :goto_105
    if-ge v1, v5, :cond_10f

    #@107
    aget-short v6, v0, v1

    #@109
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    #@10c
    add-int/lit8 v1, v1, 0x1

    #@10e
    goto :goto_105

    #@10f
    :cond_10f
    move-object v0, v2

    #@110
    move-object v2, v3

    #@111
    goto/16 :goto_1f

    #@113
    :cond_113
    instance-of v5, v0, [I

    #@115
    if-eqz v5, :cond_12a

    #@117
    const-string v2, "int[]"

    #@119
    check-cast v0, [I

    #@11b
    array-length v5, v0

    #@11c
    :goto_11c
    if-ge v1, v5, :cond_126

    #@11e
    aget v6, v0, v1

    #@120
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    #@123
    add-int/lit8 v1, v1, 0x1

    #@125
    goto :goto_11c

    #@126
    :cond_126
    move-object v0, v2

    #@127
    move-object v2, v3

    #@128
    goto/16 :goto_1f

    #@12a
    :cond_12a
    instance-of v5, v0, [J

    #@12c
    if-eqz v5, :cond_141

    #@12e
    const-string v2, "long[]"

    #@130
    check-cast v0, [J

    #@132
    array-length v5, v0

    #@133
    :goto_133
    if-ge v1, v5, :cond_13d

    #@135
    aget-wide v6, v0, v1

    #@137
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    #@13a
    add-int/lit8 v1, v1, 0x1

    #@13c
    goto :goto_133

    #@13d
    :cond_13d
    move-object v0, v2

    #@13e
    move-object v2, v3

    #@13f
    goto/16 :goto_1f

    #@141
    :cond_141
    instance-of v5, v0, [F

    #@143
    if-eqz v5, :cond_159

    #@145
    const-string v2, "float[]"

    #@147
    check-cast v0, [F

    #@149
    array-length v5, v0

    #@14a
    :goto_14a
    if-ge v1, v5, :cond_155

    #@14c
    aget v6, v0, v1

    #@14e
    float-to-double v6, v6

    #@14f
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    #@152
    add-int/lit8 v1, v1, 0x1

    #@154
    goto :goto_14a

    #@155
    :cond_155
    move-object v0, v2

    #@156
    move-object v2, v3

    #@157
    goto/16 :goto_1f

    #@159
    :cond_159
    instance-of v5, v0, [D

    #@15b
    if-eqz v5, :cond_170

    #@15d
    const-string v2, "double[]"

    #@15f
    check-cast v0, [D

    #@161
    array-length v5, v0

    #@162
    :goto_162
    if-ge v1, v5, :cond_16c

    #@164
    aget-wide v6, v0, v1

    #@166
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    #@169
    add-int/lit8 v1, v1, 0x1

    #@16b
    goto :goto_162

    #@16c
    :cond_16c
    move-object v0, v2

    #@16d
    move-object v2, v3

    #@16e
    goto/16 :goto_1f

    #@170
    :cond_170
    instance-of v5, v0, [Z

    #@172
    if-eqz v5, :cond_187

    #@174
    const-string v2, "bool[]"

    #@176
    check-cast v0, [Z

    #@178
    array-length v5, v0

    #@179
    :goto_179
    if-ge v1, v5, :cond_183

    #@17b
    aget-boolean v6, v0, v1

    #@17d
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    #@180
    add-int/lit8 v1, v1, 0x1

    #@182
    goto :goto_179

    #@183
    :cond_183
    move-object v0, v2

    #@184
    move-object v2, v3

    #@185
    goto/16 :goto_1f

    #@187
    :cond_187
    instance-of v5, v0, [C

    #@189
    if-eqz v5, :cond_1a2

    #@18b
    const-string v2, "char[]"

    #@18d
    check-cast v0, [C

    #@18f
    array-length v5, v0

    #@190
    :goto_190
    if-ge v1, v5, :cond_19e

    #@192
    aget-char v6, v0, v1

    #@194
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@197
    move-result-object v6

    #@198
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@19b
    add-int/lit8 v1, v1, 0x1

    #@19d
    goto :goto_190

    #@19e
    :cond_19e
    move-object v0, v2

    #@19f
    move-object v2, v3

    #@1a0
    goto/16 :goto_1f

    #@1a2
    :cond_1a2
    instance-of v1, v0, Ljava/util/List;

    #@1a4
    if-eqz v1, :cond_1c6

    #@1a6
    const-string v1, "stringList"

    #@1a8
    check-cast v0, Ljava/util/List;

    #@1aa
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1ad
    move-result-object v2

    #@1ae
    :goto_1ae
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1b1
    move-result v0

    #@1b2
    if-eqz v0, :cond_1c2

    #@1b4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b7
    move-result-object v0

    #@1b8
    check-cast v0, Ljava/lang/String;

    #@1ba
    if-nez v0, :cond_1be

    #@1bc
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    #@1be
    :cond_1be
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@1c1
    goto :goto_1ae

    #@1c2
    :cond_1c2
    move-object v0, v1

    #@1c3
    move-object v2, v3

    #@1c4
    goto/16 :goto_1f

    #@1c6
    :cond_1c6
    move-object v0, v2

    #@1c7
    goto/16 :goto_1f
.end method


# virtual methods
.method public clear()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cache:Landroid/content/SharedPreferences;

    #@2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    #@9
    move-result-object v0

    #@a
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@d
    return-void
.end method

.method public load()Landroid/os/Bundle;
    .registers 8

    #@0
    new-instance v1, Landroid/os/Bundle;

    #@2
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@5
    iget-object v0, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cache:Landroid/content/SharedPreferences;

    #@7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_4b

    #@19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/lang/String;

    #@1f
    :try_start_1f
    invoke-direct {p0, v0, v1}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->deserializeKey(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_22} :catch_23

    #@22
    goto :goto_13

    #@23
    :catch_23
    move-exception v1

    #@24
    sget-object v2, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    #@26
    const/4 v3, 0x5

    #@27
    sget-object v4, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->TAG:Ljava/lang/String;

    #@29
    new-instance v5, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string v6, "Error reading cached value for key: \'"

    #@30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    const-string v5, "\' -- "

    #@3a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    invoke-static {v2, v3, v4, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    #@49
    const/4 v0, 0x0

    #@4a
    :goto_4a
    return-object v0

    #@4b
    :cond_4b
    move-object v0, v1

    #@4c
    goto :goto_4a
.end method

.method public save(Landroid/os/Bundle;)V
    .registers 9

    #@0
    const/4 v6, 0x5

    #@1
    const-string v0, "bundle"

    #@3
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@6
    iget-object v0, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cache:Landroid/content/SharedPreferences;

    #@8
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@f
    move-result-object v0

    #@10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v2

    #@14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_4a

    #@1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Ljava/lang/String;

    #@20
    :try_start_20
    invoke-direct {p0, v0, p1, v1}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->serializeKey(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;)V
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_23} :catch_24

    #@23
    goto :goto_14

    #@24
    :catch_24
    move-exception v1

    #@25
    sget-object v2, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    #@27
    sget-object v3, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->TAG:Ljava/lang/String;

    #@29
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string v5, "Error processing value for key: \'"

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    const-string v4, "\' -- "

    #@3a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    invoke-static {v2, v6, v3, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    #@49
    :cond_49
    :goto_49
    return-void

    #@4a
    :cond_4a
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@4d
    move-result v0

    #@4e
    if-nez v0, :cond_49

    #@50
    sget-object v0, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    #@52
    sget-object v1, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->TAG:Ljava/lang/String;

    #@54
    const-string v2, "SharedPreferences.Editor.commit() was not successful"

    #@56
    invoke-static {v0, v6, v1, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    #@59
    goto :goto_49
.end method
