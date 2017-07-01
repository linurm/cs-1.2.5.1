.class public final Lcom/google/android/gms/internal/dy;
.super Ljava/lang/Object;


# static fields
.field private static final qA:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@2
    const-string v1, "yyyyMMdd"

    #@4
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@7
    sput-object v0, Lcom/google/android/gms/internal/dy;->qA:Ljava/text/SimpleDateFormat;

    #@9
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Ljava/lang/String;)Lcom/google/android/gms/internal/du;
    .registers 27

    #@0
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    #@2
    move-object/from16 v0, p2

    #@4
    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@7
    const-string v2, "ad_base_url"

    #@9
    const/4 v3, 0x0

    #@a
    invoke-virtual {v12, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    const-string v2, "ad_url"

    #@10
    const/4 v3, 0x0

    #@11
    invoke-virtual {v12, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    const-string v3, "ad_size"

    #@17
    const/4 v5, 0x0

    #@18
    invoke-virtual {v12, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v17

    #@1c
    const-string v3, "ad_html"

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-virtual {v12, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    const-wide/16 v18, -0x1

    #@25
    const-string v3, "debug_dialog"

    #@27
    const/4 v6, 0x0

    #@28
    invoke-virtual {v12, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v20

    #@2c
    const-string v3, "interstitial_timeout"

    #@2e
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_6d

    #@34
    const-string v3, "interstitial_timeout"

    #@36
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    #@39
    move-result-wide v6

    #@3a
    const-wide v8, 0x408f400000000000L    # 1000.0

    #@3f
    mul-double/2addr v6, v8

    #@40
    double-to-long v8, v6

    #@41
    :goto_41
    const-string v3, "orientation"

    #@43
    const/4 v6, 0x0

    #@44
    invoke-virtual {v12, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    const/4 v3, -0x1

    #@49
    const-string v7, "portrait"

    #@4b
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v7

    #@4f
    if-eqz v7, :cond_70

    #@51
    invoke-static {}, Lcom/google/android/gms/internal/eo;->bS()I

    #@54
    move-result v3

    #@55
    :cond_55
    :goto_55
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@58
    move-result v6

    #@59
    if-nez v6, :cond_7d

    #@5b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5e
    move-result v2

    #@5f
    if-eqz v2, :cond_17d

    #@61
    const-string v2, "Could not parse the mediation config: Missing required ad_base_url field"

    #@63
    invoke-static {v2}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@66
    new-instance v3, Lcom/google/android/gms/internal/du;

    #@68
    const/4 v2, 0x0

    #@69
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/du;-><init>(I)V

    #@6c
    :goto_6c
    return-object v3

    #@6d
    :cond_6d
    const-wide/16 v8, -0x1

    #@6f
    goto :goto_41

    #@70
    :cond_70
    const-string v7, "landscape"

    #@72
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v6

    #@76
    if-eqz v6, :cond_55

    #@78
    invoke-static {}, Lcom/google/android/gms/internal/eo;->bR()I

    #@7b
    move-result v3

    #@7c
    goto :goto_55

    #@7d
    :cond_7d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@80
    move-result v4

    #@81
    if-nez v4, :cond_bd

    #@83
    move-object/from16 v0, p1

    #@85
    iget-object v4, v0, Lcom/google/android/gms/internal/ds;->kQ:Lcom/google/android/gms/internal/ev;

    #@87
    iget-object v4, v4, Lcom/google/android/gms/internal/ev;->sw:Ljava/lang/String;

    #@89
    const/4 v5, 0x0

    #@8a
    const/4 v6, 0x0

    #@8b
    move-object/from16 v0, p0

    #@8d
    invoke-static {v0, v4, v2, v5, v6}, Lcom/google/android/gms/internal/dx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/eb;)Lcom/google/android/gms/internal/du;

    #@90
    move-result-object v2

    #@91
    iget-object v4, v2, Lcom/google/android/gms/internal/du;->oA:Ljava/lang/String;

    #@93
    iget-object v5, v2, Lcom/google/android/gms/internal/du;->qe:Ljava/lang/String;

    #@95
    iget-wide v0, v2, Lcom/google/android/gms/internal/du;->qk:J

    #@97
    move-wide/from16 v18, v0

    #@99
    move-object v11, v2

    #@9a
    :goto_9a
    const-string v2, "click_urls"

    #@9c
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@9f
    move-result-object v7

    #@a0
    if-nez v11, :cond_eb

    #@a2
    const/4 v2, 0x0

    #@a3
    :goto_a3
    if-eqz v7, :cond_17a

    #@a5
    if-nez v2, :cond_ac

    #@a7
    new-instance v2, Ljava/util/LinkedList;

    #@a9
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    #@ac
    :cond_ac
    const/4 v6, 0x0

    #@ad
    :goto_ad
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    #@b0
    move-result v10

    #@b1
    if-ge v6, v10, :cond_ee

    #@b3
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    #@b6
    move-result-object v10

    #@b7
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ba
    add-int/lit8 v6, v6, 0x1

    #@bc
    goto :goto_ad

    #@bd
    :cond_bd
    const-string v2, "Could not parse the mediation config: Missing required ad_html or ad_url field."

    #@bf
    invoke-static {v2}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@c2
    new-instance v3, Lcom/google/android/gms/internal/du;

    #@c4
    const/4 v2, 0x0

    #@c5
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/du;-><init>(I)V
    :try_end_c8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_c8} :catch_c9

    #@c8
    goto :goto_6c

    #@c9
    :catch_c9
    move-exception v2

    #@ca
    new-instance v3, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string v4, "Could not parse the mediation config: "

    #@d1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v3

    #@d5
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    #@d8
    move-result-object v2

    #@d9
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v2

    #@dd
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v2

    #@e1
    invoke-static {v2}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@e4
    new-instance v3, Lcom/google/android/gms/internal/du;

    #@e6
    const/4 v2, 0x0

    #@e7
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/du;-><init>(I)V

    #@ea
    goto :goto_6c

    #@eb
    :cond_eb
    :try_start_eb
    iget-object v2, v11, Lcom/google/android/gms/internal/du;->nt:Ljava/util/List;

    #@ed
    goto :goto_a3

    #@ee
    :cond_ee
    move-object v6, v2

    #@ef
    :goto_ef
    const-string v2, "impression_urls"

    #@f1
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@f4
    move-result-object v10

    #@f5
    if-nez v11, :cond_112

    #@f7
    const/4 v2, 0x0

    #@f8
    :goto_f8
    if-eqz v10, :cond_178

    #@fa
    if-nez v2, :cond_101

    #@fc
    new-instance v2, Ljava/util/LinkedList;

    #@fe
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    #@101
    :cond_101
    const/4 v7, 0x0

    #@102
    :goto_102
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    #@105
    move-result v13

    #@106
    if-ge v7, v13, :cond_115

    #@108
    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    #@10b
    move-result-object v13

    #@10c
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10f
    add-int/lit8 v7, v7, 0x1

    #@111
    goto :goto_102

    #@112
    :cond_112
    iget-object v2, v11, Lcom/google/android/gms/internal/du;->nu:Ljava/util/List;

    #@114
    goto :goto_f8

    #@115
    :cond_115
    move-object v7, v2

    #@116
    :goto_116
    const-string v2, "manual_impression_urls"

    #@118
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@11b
    move-result-object v13

    #@11c
    if-nez v11, :cond_139

    #@11e
    const/4 v2, 0x0

    #@11f
    :goto_11f
    if-eqz v13, :cond_176

    #@121
    if-nez v2, :cond_128

    #@123
    new-instance v2, Ljava/util/LinkedList;

    #@125
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    #@128
    :cond_128
    const/4 v10, 0x0

    #@129
    :goto_129
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    #@12c
    move-result v14

    #@12d
    if-ge v10, v14, :cond_13c

    #@12f
    invoke-virtual {v13, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    #@132
    move-result-object v14

    #@133
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@136
    add-int/lit8 v10, v10, 0x1

    #@138
    goto :goto_129

    #@139
    :cond_139
    iget-object v2, v11, Lcom/google/android/gms/internal/du;->qi:Ljava/util/List;

    #@13b
    goto :goto_11f

    #@13c
    :cond_13c
    move-object v13, v2

    #@13d
    :goto_13d
    if-eqz v11, :cond_181

    #@13f
    iget v2, v11, Lcom/google/android/gms/internal/du;->orientation:I

    #@141
    const/4 v10, -0x1

    #@142
    if-eq v2, v10, :cond_187

    #@144
    iget v2, v11, Lcom/google/android/gms/internal/du;->orientation:I

    #@146
    :goto_146
    iget-wide v14, v11, Lcom/google/android/gms/internal/du;->qf:J

    #@148
    const-wide/16 v22, 0x0

    #@14a
    cmp-long v3, v14, v22

    #@14c
    if-lez v3, :cond_184

    #@14e
    iget-wide v8, v11, Lcom/google/android/gms/internal/du;->qf:J

    #@150
    move/from16 v16, v2

    #@152
    :goto_152
    const-string v2, "active_view"

    #@154
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@157
    move-result-object v23

    #@158
    const/16 v22, 0x0

    #@15a
    const-string v2, "ad_is_javascript"

    #@15c
    const/4 v3, 0x0

    #@15d
    invoke-virtual {v12, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    #@160
    move-result v21

    #@161
    if-eqz v21, :cond_16a

    #@163
    const-string v2, "ad_passback_url"

    #@165
    const/4 v3, 0x0

    #@166
    invoke-virtual {v12, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@169
    move-result-object v22

    #@16a
    :cond_16a
    new-instance v3, Lcom/google/android/gms/internal/du;

    #@16c
    const/4 v10, 0x0

    #@16d
    const-wide/16 v11, -0x1

    #@16f
    const-wide/16 v14, -0x1

    #@171
    invoke-direct/range {v3 .. v23}, Lcom/google/android/gms/internal/du;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_174
    .catch Lorg/json/JSONException; {:try_start_eb .. :try_end_174} :catch_c9

    #@174
    goto/16 :goto_6c

    #@176
    :cond_176
    move-object v13, v2

    #@177
    goto :goto_13d

    #@178
    :cond_178
    move-object v7, v2

    #@179
    goto :goto_116

    #@17a
    :cond_17a
    move-object v6, v2

    #@17b
    goto/16 :goto_ef

    #@17d
    :cond_17d
    const/4 v2, 0x0

    #@17e
    move-object v11, v2

    #@17f
    goto/16 :goto_9a

    #@181
    :cond_181
    move/from16 v16, v3

    #@183
    goto :goto_152

    #@184
    :cond_184
    move/from16 v16, v2

    #@186
    goto :goto_152

    #@187
    :cond_187
    move v2, v3

    #@188
    goto :goto_146
.end method

.method public static a(Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/ec;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    #@0
    const/4 v10, -0x1

    #@1
    const/4 v9, -0x2

    #@2
    const/4 v8, 0x2

    #@3
    :try_start_3
    new-instance v2, Ljava/util/HashMap;

    #@5
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@8
    if-eqz p3, :cond_17

    #@a
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    const-string v1, ""

    #@10
    if-eq v0, v1, :cond_17

    #@12
    const-string v0, "eid"

    #@14
    invoke-virtual {v2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->pW:Landroid/os/Bundle;

    #@19
    if-eqz v0, :cond_22

    #@1b
    const-string v0, "ad_pos"

    #@1d
    iget-object v1, p0, Lcom/google/android/gms/internal/ds;->pW:Landroid/os/Bundle;

    #@1f
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->pX:Lcom/google/android/gms/internal/ai;

    #@24
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/dy;->a(Ljava/util/HashMap;Lcom/google/android/gms/internal/ai;)V

    #@27
    const-string v0, "format"

    #@29
    iget-object v1, p0, Lcom/google/android/gms/internal/ds;->kT:Lcom/google/android/gms/internal/al;

    #@2b
    iget-object v1, v1, Lcom/google/android/gms/internal/al;->me:Ljava/lang/String;

    #@2d
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->kT:Lcom/google/android/gms/internal/al;

    #@32
    iget v0, v0, Lcom/google/android/gms/internal/al;->width:I

    #@34
    if-ne v0, v10, :cond_3d

    #@36
    const-string v0, "smart_w"

    #@38
    const-string v1, "full"

    #@3a
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->kT:Lcom/google/android/gms/internal/al;

    #@3f
    iget v0, v0, Lcom/google/android/gms/internal/al;->height:I

    #@41
    if-ne v0, v9, :cond_4a

    #@43
    const-string v0, "smart_h"

    #@45
    const-string v1, "auto"

    #@47
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    :cond_4a
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->kT:Lcom/google/android/gms/internal/al;

    #@4c
    iget-object v0, v0, Lcom/google/android/gms/internal/al;->mg:[Lcom/google/android/gms/internal/al;

    #@4e
    if-eqz v0, :cond_9b

    #@50
    new-instance v3, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->kT:Lcom/google/android/gms/internal/al;

    #@57
    iget-object v4, v0, Lcom/google/android/gms/internal/al;->mg:[Lcom/google/android/gms/internal/al;

    #@59
    array-length v5, v4
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_5a} :catch_131

    #@5a
    const/4 v0, 0x0

    #@5b
    move v1, v0

    #@5c
    :goto_5c
    if-ge v1, v5, :cond_96

    #@5e
    aget-object v6, v4, v1

    #@60
    :try_start_60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@63
    move-result v0

    #@64
    if-eqz v0, :cond_6b

    #@66
    const-string v0, "|"

    #@68
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    :cond_6b
    iget v0, v6, Lcom/google/android/gms/internal/al;->width:I

    #@6d
    if-ne v0, v10, :cond_90

    #@6f
    iget v0, v6, Lcom/google/android/gms/internal/al;->widthPixels:I

    #@71
    int-to-float v0, v0

    #@72
    iget v7, p1, Lcom/google/android/gms/internal/ec;->rr:F

    #@74
    div-float/2addr v0, v7

    #@75
    float-to-int v0, v0

    #@76
    :goto_76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@79
    const-string v0, "x"

    #@7b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    iget v0, v6, Lcom/google/android/gms/internal/al;->height:I

    #@80
    if-ne v0, v9, :cond_93

    #@82
    iget v0, v6, Lcom/google/android/gms/internal/al;->heightPixels:I

    #@84
    int-to-float v0, v0

    #@85
    iget v6, p1, Lcom/google/android/gms/internal/ec;->rr:F

    #@87
    div-float/2addr v0, v6

    #@88
    float-to-int v0, v0

    #@89
    :goto_89
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8c
    add-int/lit8 v0, v1, 0x1

    #@8e
    move v1, v0

    #@8f
    goto :goto_5c

    #@90
    :cond_90
    iget v0, v6, Lcom/google/android/gms/internal/al;->width:I

    #@92
    goto :goto_76

    #@93
    :cond_93
    iget v0, v6, Lcom/google/android/gms/internal/al;->height:I

    #@95
    goto :goto_89

    #@96
    :cond_96
    const-string v0, "sz"

    #@98
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9b
    :cond_9b
    const-string v0, "slotname"

    #@9d
    iget-object v1, p0, Lcom/google/android/gms/internal/ds;->kN:Ljava/lang/String;

    #@9f
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a2
    const-string v0, "pn"

    #@a4
    iget-object v1, p0, Lcom/google/android/gms/internal/ds;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a6
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@a8
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ab
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->pY:Landroid/content/pm/PackageInfo;

    #@ad
    if-eqz v0, :cond_bc

    #@af
    const-string v0, "vc"

    #@b1
    iget-object v1, p0, Lcom/google/android/gms/internal/ds;->pY:Landroid/content/pm/PackageInfo;

    #@b3
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    #@b5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b8
    move-result-object v1

    #@b9
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bc
    :cond_bc
    const-string v0, "ms"

    #@be
    iget-object v1, p0, Lcom/google/android/gms/internal/ds;->pZ:Ljava/lang/String;

    #@c0
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c3
    const-string v0, "ms2"

    #@c5
    iget-object v1, p0, Lcom/google/android/gms/internal/ds;->qd:Ljava/lang/String;

    #@c7
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ca
    const-string v0, "seq_num"

    #@cc
    iget-object v1, p0, Lcom/google/android/gms/internal/ds;->qa:Ljava/lang/String;

    #@ce
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d1
    const-string v0, "session_id"

    #@d3
    iget-object v1, p0, Lcom/google/android/gms/internal/ds;->qb:Ljava/lang/String;

    #@d5
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d8
    const-string v0, "js"

    #@da
    iget-object v1, p0, Lcom/google/android/gms/internal/ds;->kQ:Lcom/google/android/gms/internal/ev;

    #@dc
    iget-object v1, v1, Lcom/google/android/gms/internal/ev;->sw:Ljava/lang/String;

    #@de
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e1
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/dy;->a(Ljava/util/HashMap;Lcom/google/android/gms/internal/ec;)V

    #@e4
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->pX:Lcom/google/android/gms/internal/ai;

    #@e6
    iget v0, v0, Lcom/google/android/gms/internal/ai;->versionCode:I

    #@e8
    if-lt v0, v8, :cond_f7

    #@ea
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->pX:Lcom/google/android/gms/internal/ai;

    #@ec
    iget-object v0, v0, Lcom/google/android/gms/internal/ai;->ma:Landroid/location/Location;

    #@ee
    if-eqz v0, :cond_f7

    #@f0
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->pX:Lcom/google/android/gms/internal/ai;

    #@f2
    iget-object v0, v0, Lcom/google/android/gms/internal/ai;->ma:Landroid/location/Location;

    #@f4
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/dy;->a(Ljava/util/HashMap;Landroid/location/Location;)V

    #@f7
    :cond_f7
    iget v0, p0, Lcom/google/android/gms/internal/ds;->versionCode:I

    #@f9
    if-lt v0, v8, :cond_102

    #@fb
    const-string v0, "quality_signals"

    #@fd
    iget-object v1, p0, Lcom/google/android/gms/internal/ds;->qc:Landroid/os/Bundle;

    #@ff
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@102
    :cond_102
    const/4 v0, 0x2

    #@103
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->p(I)Z

    #@106
    move-result v0

    #@107
    if-eqz v0, :cond_128

    #@109
    invoke-static {v2}, Lcom/google/android/gms/internal/eo;->o(Ljava/util/Map;)Lorg/json/JSONObject;

    #@10c
    move-result-object v0

    #@10d
    const/4 v1, 0x2

    #@10e
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    #@111
    move-result-object v0

    #@112
    new-instance v1, Ljava/lang/StringBuilder;

    #@114
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@117
    const-string v3, "Ad Request JSON: "

    #@119
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v1

    #@11d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v0

    #@121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@124
    move-result-object v0

    #@125
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@128
    :cond_128
    invoke-static {v2}, Lcom/google/android/gms/internal/eo;->o(Ljava/util/Map;)Lorg/json/JSONObject;

    #@12b
    move-result-object v0

    #@12c
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_12f
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_12f} :catch_131

    #@12f
    move-result-object v0

    #@130
    :goto_130
    return-object v0

    #@131
    :catch_131
    move-exception v0

    #@132
    new-instance v1, Ljava/lang/StringBuilder;

    #@134
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@137
    const-string v2, "Problem serializing ad request to JSON: "

    #@139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v1

    #@13d
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    #@140
    move-result-object v0

    #@141
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v0

    #@145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@148
    move-result-object v0

    #@149
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@14c
    const/4 v0, 0x0

    #@14d
    goto :goto_130
.end method

.method private static a(Ljava/util/HashMap;Landroid/location/Location;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    #@0
    const-wide v8, 0x416312d000000000L    # 1.0E7

    #@5
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    #@d
    move-result v1

    #@e
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    #@11
    move-result-wide v2

    #@12
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    #@15
    move-result-wide v4

    #@16
    mul-double/2addr v4, v8

    #@17
    double-to-long v4, v4

    #@18
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    #@1b
    move-result-wide v6

    #@1c
    mul-double/2addr v6, v8

    #@1d
    double-to-long v6, v6

    #@1e
    const-string v8, "radius"

    #@20
    const/high16 v9, 0x447a0000    # 1000.0f

    #@22
    mul-float/2addr v1, v9

    #@23
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    const-string v1, "lat"

    #@2c
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    const-string v1, "long"

    #@35
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    const-string v1, "time"

    #@3e
    const-wide/16 v4, 0x3e8

    #@40
    mul-long/2addr v2, v4

    #@41
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    const-string v1, "uule"

    #@4a
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    return-void
.end method

.method private static a(Ljava/util/HashMap;Lcom/google/android/gms/internal/ai;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/ai;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v6, -0x1

    #@1
    invoke-static {}, Lcom/google/android/gms/internal/el;->bP()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    if-eqz v0, :cond_c

    #@7
    const-string v1, "abf"

    #@9
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    :cond_c
    iget-wide v0, p1, Lcom/google/android/gms/internal/ai;->lS:J

    #@e
    const-wide/16 v2, -0x1

    #@10
    cmp-long v0, v0, v2

    #@12
    if-eqz v0, :cond_26

    #@14
    const-string v0, "cust_age"

    #@16
    sget-object v1, Lcom/google/android/gms/internal/dy;->qA:Ljava/text/SimpleDateFormat;

    #@18
    new-instance v2, Ljava/util/Date;

    #@1a
    iget-wide v4, p1, Lcom/google/android/gms/internal/ai;->lS:J

    #@1c
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    #@1f
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    :cond_26
    iget-object v0, p1, Lcom/google/android/gms/internal/ai;->extras:Landroid/os/Bundle;

    #@28
    if-eqz v0, :cond_31

    #@2a
    const-string v0, "extras"

    #@2c
    iget-object v1, p1, Lcom/google/android/gms/internal/ai;->extras:Landroid/os/Bundle;

    #@2e
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    :cond_31
    iget v0, p1, Lcom/google/android/gms/internal/ai;->lT:I

    #@33
    if-eq v0, v6, :cond_40

    #@35
    const-string v0, "cust_gender"

    #@37
    iget v1, p1, Lcom/google/android/gms/internal/ai;->lT:I

    #@39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    :cond_40
    iget-object v0, p1, Lcom/google/android/gms/internal/ai;->lU:Ljava/util/List;

    #@42
    if-eqz v0, :cond_4b

    #@44
    const-string v0, "kw"

    #@46
    iget-object v1, p1, Lcom/google/android/gms/internal/ai;->lU:Ljava/util/List;

    #@48
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    :cond_4b
    iget v0, p1, Lcom/google/android/gms/internal/ai;->lW:I

    #@4d
    if-eq v0, v6, :cond_5a

    #@4f
    const-string v0, "tag_for_child_directed_treatment"

    #@51
    iget v1, p1, Lcom/google/android/gms/internal/ai;->lW:I

    #@53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    :cond_5a
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ai;->lV:Z

    #@5c
    if-eqz v0, :cond_65

    #@5e
    const-string v0, "adtest"

    #@60
    const-string v1, "on"

    #@62
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    :cond_65
    iget v0, p1, Lcom/google/android/gms/internal/ai;->versionCode:I

    #@67
    const/4 v1, 0x2

    #@68
    if-lt v0, v1, :cond_90

    #@6a
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ai;->lX:Z

    #@6c
    if-eqz v0, :cond_78

    #@6e
    const-string v0, "d_imp_hdr"

    #@70
    const/4 v1, 0x1

    #@71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@78
    :cond_78
    iget-object v0, p1, Lcom/google/android/gms/internal/ai;->lY:Ljava/lang/String;

    #@7a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7d
    move-result v0

    #@7e
    if-nez v0, :cond_87

    #@80
    const-string v0, "ppid"

    #@82
    iget-object v1, p1, Lcom/google/android/gms/internal/ai;->lY:Ljava/lang/String;

    #@84
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@87
    :cond_87
    iget-object v0, p1, Lcom/google/android/gms/internal/ai;->lZ:Lcom/google/android/gms/internal/aw;

    #@89
    if-eqz v0, :cond_90

    #@8b
    iget-object v0, p1, Lcom/google/android/gms/internal/ai;->lZ:Lcom/google/android/gms/internal/aw;

    #@8d
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/dy;->a(Ljava/util/HashMap;Lcom/google/android/gms/internal/aw;)V

    #@90
    :cond_90
    iget v0, p1, Lcom/google/android/gms/internal/ai;->versionCode:I

    #@92
    const/4 v1, 0x3

    #@93
    if-lt v0, v1, :cond_a0

    #@95
    iget-object v0, p1, Lcom/google/android/gms/internal/ai;->mb:Ljava/lang/String;

    #@97
    if-eqz v0, :cond_a0

    #@99
    const-string v0, "url"

    #@9b
    iget-object v1, p1, Lcom/google/android/gms/internal/ai;->mb:Ljava/lang/String;

    #@9d
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a0
    :cond_a0
    return-void
.end method

.method private static a(Ljava/util/HashMap;Lcom/google/android/gms/internal/aw;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/aw;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    iget v1, p1, Lcom/google/android/gms/internal/aw;->mD:I

    #@3
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_14

    #@9
    const-string v1, "acolor"

    #@b
    iget v2, p1, Lcom/google/android/gms/internal/aw;->mD:I

    #@d
    invoke-static {v2}, Lcom/google/android/gms/internal/dy;->o(I)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    :cond_14
    iget v1, p1, Lcom/google/android/gms/internal/aw;->backgroundColor:I

    #@16
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_27

    #@1c
    const-string v1, "bgcolor"

    #@1e
    iget v2, p1, Lcom/google/android/gms/internal/aw;->backgroundColor:I

    #@20
    invoke-static {v2}, Lcom/google/android/gms/internal/dy;->o(I)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    :cond_27
    iget v1, p1, Lcom/google/android/gms/internal/aw;->mE:I

    #@29
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_4d

    #@2f
    iget v1, p1, Lcom/google/android/gms/internal/aw;->mF:I

    #@31
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_4d

    #@37
    const-string v1, "gradientto"

    #@39
    iget v2, p1, Lcom/google/android/gms/internal/aw;->mE:I

    #@3b
    invoke-static {v2}, Lcom/google/android/gms/internal/dy;->o(I)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    const-string v1, "gradientfrom"

    #@44
    iget v2, p1, Lcom/google/android/gms/internal/aw;->mF:I

    #@46
    invoke-static {v2}, Lcom/google/android/gms/internal/dy;->o(I)Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    :cond_4d
    iget v1, p1, Lcom/google/android/gms/internal/aw;->mG:I

    #@4f
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    #@52
    move-result v1

    #@53
    if-eqz v1, :cond_60

    #@55
    const-string v1, "bcolor"

    #@57
    iget v2, p1, Lcom/google/android/gms/internal/aw;->mG:I

    #@59
    invoke-static {v2}, Lcom/google/android/gms/internal/dy;->o(I)Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    :cond_60
    const-string v1, "bthick"

    #@62
    iget v2, p1, Lcom/google/android/gms/internal/aw;->mH:I

    #@64
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6b
    iget v1, p1, Lcom/google/android/gms/internal/aw;->mI:I

    #@6d
    packed-switch v1, :pswitch_data_ec

    #@70
    move-object v1, v0

    #@71
    :goto_71
    if-eqz v1, :cond_78

    #@73
    const-string v2, "btype"

    #@75
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@78
    :cond_78
    iget v1, p1, Lcom/google/android/gms/internal/aw;->mJ:I

    #@7a
    packed-switch v1, :pswitch_data_f8

    #@7d
    :goto_7d
    if-eqz v0, :cond_84

    #@7f
    const-string v1, "callbuttoncolor"

    #@81
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    :cond_84
    iget-object v0, p1, Lcom/google/android/gms/internal/aw;->mK:Ljava/lang/String;

    #@86
    if-eqz v0, :cond_8f

    #@88
    const-string v0, "channel"

    #@8a
    iget-object v1, p1, Lcom/google/android/gms/internal/aw;->mK:Ljava/lang/String;

    #@8c
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8f
    :cond_8f
    iget v0, p1, Lcom/google/android/gms/internal/aw;->mL:I

    #@91
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    #@94
    move-result v0

    #@95
    if-eqz v0, :cond_a2

    #@97
    const-string v0, "dcolor"

    #@99
    iget v1, p1, Lcom/google/android/gms/internal/aw;->mL:I

    #@9b
    invoke-static {v1}, Lcom/google/android/gms/internal/dy;->o(I)Ljava/lang/String;

    #@9e
    move-result-object v1

    #@9f
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a2
    :cond_a2
    iget-object v0, p1, Lcom/google/android/gms/internal/aw;->mM:Ljava/lang/String;

    #@a4
    if-eqz v0, :cond_ad

    #@a6
    const-string v0, "font"

    #@a8
    iget-object v1, p1, Lcom/google/android/gms/internal/aw;->mM:Ljava/lang/String;

    #@aa
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ad
    :cond_ad
    iget v0, p1, Lcom/google/android/gms/internal/aw;->mN:I

    #@af
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    #@b2
    move-result v0

    #@b3
    if-eqz v0, :cond_c0

    #@b5
    const-string v0, "hcolor"

    #@b7
    iget v1, p1, Lcom/google/android/gms/internal/aw;->mN:I

    #@b9
    invoke-static {v1}, Lcom/google/android/gms/internal/dy;->o(I)Ljava/lang/String;

    #@bc
    move-result-object v1

    #@bd
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c0
    :cond_c0
    const-string v0, "headersize"

    #@c2
    iget v1, p1, Lcom/google/android/gms/internal/aw;->mO:I

    #@c4
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@c7
    move-result-object v1

    #@c8
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cb
    iget-object v0, p1, Lcom/google/android/gms/internal/aw;->mP:Ljava/lang/String;

    #@cd
    if-eqz v0, :cond_d6

    #@cf
    const-string v0, "q"

    #@d1
    iget-object v1, p1, Lcom/google/android/gms/internal/aw;->mP:Ljava/lang/String;

    #@d3
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d6
    :cond_d6
    return-void

    #@d7
    :pswitch_d7
    const-string v1, "none"

    #@d9
    goto :goto_71

    #@da
    :pswitch_da
    const-string v1, "dashed"

    #@dc
    goto :goto_71

    #@dd
    :pswitch_dd
    const-string v1, "dotted"

    #@df
    goto :goto_71

    #@e0
    :pswitch_e0
    const-string v1, "solid"

    #@e2
    goto :goto_71

    #@e3
    :pswitch_e3
    const-string v0, "dark"

    #@e5
    goto :goto_7d

    #@e6
    :pswitch_e6
    const-string v0, "light"

    #@e8
    goto :goto_7d

    #@e9
    :pswitch_e9
    const-string v0, "medium"

    #@eb
    goto :goto_7d

    #@ec
    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_d7
        :pswitch_da
        :pswitch_dd
        :pswitch_e0
    .end packed-switch

    #@f8
    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_e6
        :pswitch_e9
        :pswitch_e3
    .end packed-switch
.end method

.method private static a(Ljava/util/HashMap;Lcom/google/android/gms/internal/ec;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/ec;",
            ")V"
        }
    .end annotation

    #@0
    const-string v0, "am"

    #@2
    iget v1, p1, Lcom/google/android/gms/internal/ec;->rb:I

    #@4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    const-string v0, "cog"

    #@d
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ec;->rc:Z

    #@f
    invoke-static {v1}, Lcom/google/android/gms/internal/dy;->m(Z)Ljava/lang/Integer;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    const-string v0, "coh"

    #@18
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ec;->rd:Z

    #@1a
    invoke-static {v1}, Lcom/google/android/gms/internal/dy;->m(Z)Ljava/lang/Integer;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    iget-object v0, p1, Lcom/google/android/gms/internal/ec;->re:Ljava/lang/String;

    #@23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_30

    #@29
    const-string v0, "carrier"

    #@2b
    iget-object v1, p1, Lcom/google/android/gms/internal/ec;->re:Ljava/lang/String;

    #@2d
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    :cond_30
    const-string v0, "gl"

    #@32
    iget-object v1, p1, Lcom/google/android/gms/internal/ec;->rf:Ljava/lang/String;

    #@34
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ec;->rg:Z

    #@39
    if-eqz v0, :cond_45

    #@3b
    const-string v0, "simulator"

    #@3d
    const/4 v1, 0x1

    #@3e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    :cond_45
    const-string v0, "ma"

    #@47
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ec;->rh:Z

    #@49
    invoke-static {v1}, Lcom/google/android/gms/internal/dy;->m(Z)Ljava/lang/Integer;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    const-string v0, "sp"

    #@52
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ec;->ri:Z

    #@54
    invoke-static {v1}, Lcom/google/android/gms/internal/dy;->m(Z)Ljava/lang/Integer;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    const-string v0, "hl"

    #@5d
    iget-object v1, p1, Lcom/google/android/gms/internal/ec;->rj:Ljava/lang/String;

    #@5f
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    iget-object v0, p1, Lcom/google/android/gms/internal/ec;->rk:Ljava/lang/String;

    #@64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@67
    move-result v0

    #@68
    if-nez v0, :cond_71

    #@6a
    const-string v0, "mv"

    #@6c
    iget-object v1, p1, Lcom/google/android/gms/internal/ec;->rk:Ljava/lang/String;

    #@6e
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    :cond_71
    const-string v0, "muv"

    #@73
    iget v1, p1, Lcom/google/android/gms/internal/ec;->rl:I

    #@75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7c
    iget v0, p1, Lcom/google/android/gms/internal/ec;->rm:I

    #@7e
    const/4 v1, -0x2

    #@7f
    if-eq v0, v1, :cond_8c

    #@81
    const-string v0, "cnt"

    #@83
    iget v1, p1, Lcom/google/android/gms/internal/ec;->rm:I

    #@85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@88
    move-result-object v1

    #@89
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8c
    :cond_8c
    const-string v0, "gnt"

    #@8e
    iget v1, p1, Lcom/google/android/gms/internal/ec;->rn:I

    #@90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@93
    move-result-object v1

    #@94
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@97
    const-string v0, "pt"

    #@99
    iget v1, p1, Lcom/google/android/gms/internal/ec;->ro:I

    #@9b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9e
    move-result-object v1

    #@9f
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a2
    const-string v0, "rm"

    #@a4
    iget v1, p1, Lcom/google/android/gms/internal/ec;->rp:I

    #@a6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a9
    move-result-object v1

    #@aa
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ad
    const-string v0, "riv"

    #@af
    iget v1, p1, Lcom/google/android/gms/internal/ec;->rq:I

    #@b1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b4
    move-result-object v1

    #@b5
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b8
    const-string v0, "u_sd"

    #@ba
    iget v1, p1, Lcom/google/android/gms/internal/ec;->rr:F

    #@bc
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@bf
    move-result-object v1

    #@c0
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c3
    const-string v0, "sh"

    #@c5
    iget v1, p1, Lcom/google/android/gms/internal/ec;->rt:I

    #@c7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ca
    move-result-object v1

    #@cb
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ce
    const-string v0, "sw"

    #@d0
    iget v1, p1, Lcom/google/android/gms/internal/ec;->rs:I

    #@d2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d5
    move-result-object v1

    #@d6
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d9
    new-instance v0, Landroid/os/Bundle;

    #@db
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@de
    const-string v1, "active_network_state"

    #@e0
    iget v2, p1, Lcom/google/android/gms/internal/ec;->rx:I

    #@e2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@e5
    const-string v1, "active_network_metered"

    #@e7
    iget-boolean v2, p1, Lcom/google/android/gms/internal/ec;->rw:Z

    #@e9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@ec
    const-string v1, "connectivity"

    #@ee
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f1
    new-instance v0, Landroid/os/Bundle;

    #@f3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@f6
    const-string v1, "is_charging"

    #@f8
    iget-boolean v2, p1, Lcom/google/android/gms/internal/ec;->rv:Z

    #@fa
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@fd
    const-string v1, "battery_level"

    #@ff
    iget-wide v2, p1, Lcom/google/android/gms/internal/ec;->ru:D

    #@101
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    #@104
    const-string v1, "battery"

    #@106
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@109
    return-void
.end method

.method private static m(Z)Ljava/lang/Integer;
    .registers 2

    #@0
    if-eqz p0, :cond_8

    #@2
    const/4 v0, 0x1

    #@3
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_3
.end method

.method private static o(I)Ljava/lang/String;
    .registers 6

    #@0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2
    const-string v1, "#%06x"

    #@4
    const/4 v2, 0x1

    #@5
    new-array v2, v2, [Ljava/lang/Object;

    #@7
    const/4 v3, 0x0

    #@8
    const v4, 0xffffff

    #@b
    and-int/2addr v4, p0

    #@c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v4

    #@10
    aput-object v4, v2, v3

    #@12
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
