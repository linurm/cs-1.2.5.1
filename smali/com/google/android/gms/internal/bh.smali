.class public final Lcom/google/android/gms/internal/bh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bc;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static a(Landroid/util/DisplayMetrics;Ljava/util/Map;Ljava/lang/String;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/DisplayMetrics;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    #@0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/String;

    #@6
    if-eqz v0, :cond_10

    #@8
    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b
    move-result v1

    #@c
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/et;->a(Landroid/util/DisplayMetrics;I)I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_f} :catch_11

    #@f
    move-result p3

    #@10
    :cond_10
    :goto_10
    return p3

    #@11
    :catch_11
    move-exception v1

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string v2, "Could not parse "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    const-string v2, " in a video GMSG: "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@32
    goto :goto_10
.end method


# virtual methods
.method public b(Lcom/google/android/gms/internal/ex;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ex;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v7, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    const-string v0, "action"

    #@4
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    if-nez v0, :cond_12

    #@c
    const-string v0, "Action missing from video GMSG."

    #@e
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@11
    :goto_11
    return-void

    #@12
    :cond_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ex;->ca()Lcom/google/android/gms/internal/cf;

    #@15
    move-result-object v1

    #@16
    if-nez v1, :cond_1e

    #@18
    const-string v0, "Could not get ad overlay for a video GMSG."

    #@1a
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@1d
    goto :goto_11

    #@1e
    :cond_1e
    const-string v2, "new"

    #@20
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@23
    move-result v2

    #@24
    const-string v3, "position"

    #@26
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@29
    move-result v3

    #@2a
    if-nez v2, :cond_2e

    #@2c
    if-eqz v3, :cond_62

    #@2e
    :cond_2e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ex;->getContext()Landroid/content/Context;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@39
    move-result-object v0

    #@3a
    const-string v3, "x"

    #@3c
    invoke-static {v0, p2, v3, v4}, Lcom/google/android/gms/internal/bh;->a(Landroid/util/DisplayMetrics;Ljava/util/Map;Ljava/lang/String;I)I

    #@3f
    move-result v3

    #@40
    const-string v5, "y"

    #@42
    invoke-static {v0, p2, v5, v4}, Lcom/google/android/gms/internal/bh;->a(Landroid/util/DisplayMetrics;Ljava/util/Map;Ljava/lang/String;I)I

    #@45
    move-result v4

    #@46
    const-string v5, "w"

    #@48
    invoke-static {v0, p2, v5, v7}, Lcom/google/android/gms/internal/bh;->a(Landroid/util/DisplayMetrics;Ljava/util/Map;Ljava/lang/String;I)I

    #@4b
    move-result v5

    #@4c
    const-string v6, "h"

    #@4e
    invoke-static {v0, p2, v6, v7}, Lcom/google/android/gms/internal/bh;->a(Landroid/util/DisplayMetrics;Ljava/util/Map;Ljava/lang/String;I)I

    #@51
    move-result v0

    #@52
    if-eqz v2, :cond_5e

    #@54
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cf;->aQ()Lcom/google/android/gms/internal/cj;

    #@57
    move-result-object v2

    #@58
    if-nez v2, :cond_5e

    #@5a
    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/google/android/gms/internal/cf;->c(IIII)V

    #@5d
    goto :goto_11

    #@5e
    :cond_5e
    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/google/android/gms/internal/cf;->b(IIII)V

    #@61
    goto :goto_11

    #@62
    :cond_62
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cf;->aQ()Lcom/google/android/gms/internal/cj;

    #@65
    move-result-object v8

    #@66
    if-nez v8, :cond_6f

    #@68
    const-string v0, "no_video_view"

    #@6a
    const/4 v1, 0x0

    #@6b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cj;->a(Lcom/google/android/gms/internal/ex;Ljava/lang/String;Ljava/lang/String;)V

    #@6e
    goto :goto_11

    #@6f
    :cond_6f
    const-string v1, "click"

    #@71
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@74
    move-result v1

    #@75
    if-eqz v1, :cond_a3

    #@77
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ex;->getContext()Landroid/content/Context;

    #@7a
    move-result-object v0

    #@7b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@82
    move-result-object v0

    #@83
    const-string v1, "x"

    #@85
    invoke-static {v0, p2, v1, v4}, Lcom/google/android/gms/internal/bh;->a(Landroid/util/DisplayMetrics;Ljava/util/Map;Ljava/lang/String;I)I

    #@88
    move-result v2

    #@89
    const-string v1, "y"

    #@8b
    invoke-static {v0, p2, v1, v4}, Lcom/google/android/gms/internal/bh;->a(Landroid/util/DisplayMetrics;Ljava/util/Map;Ljava/lang/String;I)I

    #@8e
    move-result v3

    #@8f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@92
    move-result-wide v0

    #@93
    int-to-float v5, v2

    #@94
    int-to-float v6, v3

    #@95
    move-wide v2, v0

    #@96
    move v7, v4

    #@97
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@9a
    move-result-object v0

    #@9b
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/cj;->b(Landroid/view/MotionEvent;)V

    #@9e
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@a1
    goto/16 :goto_11

    #@a3
    :cond_a3
    const-string v1, "controls"

    #@a5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a8
    move-result v1

    #@a9
    if-eqz v1, :cond_c5

    #@ab
    const-string v0, "enabled"

    #@ad
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b0
    move-result-object v0

    #@b1
    check-cast v0, Ljava/lang/String;

    #@b3
    if-nez v0, :cond_bc

    #@b5
    const-string v0, "Enabled parameter missing from controls video GMSG."

    #@b7
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@ba
    goto/16 :goto_11

    #@bc
    :cond_bc
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@bf
    move-result v0

    #@c0
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/cj;->l(Z)V

    #@c3
    goto/16 :goto_11

    #@c5
    :cond_c5
    const-string v1, "currentTime"

    #@c7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ca
    move-result v1

    #@cb
    if-eqz v1, :cond_104

    #@cd
    const-string v0, "time"

    #@cf
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d2
    move-result-object v0

    #@d3
    check-cast v0, Ljava/lang/String;

    #@d5
    if-nez v0, :cond_de

    #@d7
    const-string v0, "Time parameter missing from currentTime video GMSG."

    #@d9
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@dc
    goto/16 :goto_11

    #@de
    :cond_de
    :try_start_de
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@e1
    move-result v1

    #@e2
    const/high16 v2, 0x447a0000    # 1000.0f

    #@e4
    mul-float/2addr v1, v2

    #@e5
    float-to-int v1, v1

    #@e6
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/cj;->seekTo(I)V
    :try_end_e9
    .catch Ljava/lang/NumberFormatException; {:try_start_de .. :try_end_e9} :catch_eb

    #@e9
    goto/16 :goto_11

    #@eb
    :catch_eb
    move-exception v1

    #@ec
    new-instance v1, Ljava/lang/StringBuilder;

    #@ee
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f1
    const-string v2, "Could not parse time parameter from currentTime video GMSG: "

    #@f3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v1

    #@f7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v0

    #@fb
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v0

    #@ff
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@102
    goto/16 :goto_11

    #@104
    :cond_104
    const-string v1, "hide"

    #@106
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@109
    move-result v1

    #@10a
    if-eqz v1, :cond_112

    #@10c
    const/4 v0, 0x4

    #@10d
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/cj;->setVisibility(I)V

    #@110
    goto/16 :goto_11

    #@112
    :cond_112
    const-string v1, "load"

    #@114
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@117
    move-result v1

    #@118
    if-eqz v1, :cond_11f

    #@11a
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cj;->ba()V

    #@11d
    goto/16 :goto_11

    #@11f
    :cond_11f
    const-string v1, "pause"

    #@121
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@124
    move-result v1

    #@125
    if-eqz v1, :cond_12c

    #@127
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cj;->pause()V

    #@12a
    goto/16 :goto_11

    #@12c
    :cond_12c
    const-string v1, "play"

    #@12e
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@131
    move-result v1

    #@132
    if-eqz v1, :cond_139

    #@134
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cj;->play()V

    #@137
    goto/16 :goto_11

    #@139
    :cond_139
    const-string v1, "show"

    #@13b
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13e
    move-result v1

    #@13f
    if-eqz v1, :cond_146

    #@141
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/cj;->setVisibility(I)V

    #@144
    goto/16 :goto_11

    #@146
    :cond_146
    const-string v1, "src"

    #@148
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@14b
    move-result v1

    #@14c
    if-eqz v1, :cond_15b

    #@14e
    const-string v0, "src"

    #@150
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@153
    move-result-object v0

    #@154
    check-cast v0, Ljava/lang/String;

    #@156
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/cj;->o(Ljava/lang/String;)V

    #@159
    goto/16 :goto_11

    #@15b
    :cond_15b
    new-instance v1, Ljava/lang/StringBuilder;

    #@15d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@160
    const-string v2, "Unknown video action: "

    #@162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v1

    #@166
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v0

    #@16a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16d
    move-result-object v0

    #@16e
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@171
    goto/16 :goto_11
.end method
