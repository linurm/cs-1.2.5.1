.class public Landroid/support/v4/util/TimeUtils;
.super Ljava/lang/Object;


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    #@7
    const/16 v0, 0x18

    #@9
    new-array v0, v0, [C

    #@b
    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    #@d
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static accumField(IIZI)I
    .registers 5

    #@0
    const/16 v0, 0x63

    #@2
    if-gt p0, v0, :cond_9

    #@4
    if-eqz p2, :cond_c

    #@6
    const/4 v0, 0x3

    #@7
    if-lt p3, v0, :cond_c

    #@9
    :cond_9
    add-int/lit8 v0, p1, 0x3

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    const/16 v0, 0x9

    #@e
    if-gt p0, v0, :cond_15

    #@10
    if-eqz p2, :cond_18

    #@12
    const/4 v0, 0x2

    #@13
    if-lt p3, v0, :cond_18

    #@15
    :cond_15
    add-int/lit8 v0, p1, 0x2

    #@17
    goto :goto_b

    #@18
    :cond_18
    if-nez p2, :cond_1c

    #@1a
    if-lez p0, :cond_1f

    #@1c
    :cond_1c
    add-int/lit8 v0, p1, 0x1

    #@1e
    goto :goto_b

    #@1f
    :cond_1f
    const/4 v0, 0x0

    #@20
    goto :goto_b
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .registers 9

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-nez v0, :cond_c

    #@6
    const-string v0, "--"

    #@8
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    :goto_b
    return-void

    #@c
    :cond_c
    sub-long v0, p0, p2

    #@e
    const/4 v2, 0x0

    #@f
    invoke-static {v0, v1, p4, v2}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    #@12
    goto :goto_b
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    #@4
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .registers 10

    #@0
    sget-object v1, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    invoke-static {p0, p1, p3}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked(JI)I

    #@6
    move-result v0

    #@7
    new-instance v2, Ljava/lang/String;

    #@9
    sget-object v3, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    #@b
    const/4 v4, 0x0

    #@c
    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    #@f
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    monitor-exit v1

    #@13
    return-void

    #@14
    :catchall_14
    move-exception v0

    #@15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    #@16
    throw v0
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .registers 7

    #@0
    sget-object v1, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    const/4 v0, 0x0

    #@4
    :try_start_4
    invoke-static {p0, p1, v0}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked(JI)I

    #@7
    move-result v0

    #@8
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    #@a
    const/4 v3, 0x0

    #@b
    invoke-virtual {p2, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@e
    monitor-exit v1

    #@f
    return-void

    #@10
    :catchall_10
    move-exception v0

    #@11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    #@12
    throw v0
.end method

.method private static formatDurationLocked(JI)I
    .registers 21

    #@0
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    #@2
    array-length v2, v2

    #@3
    move/from16 v0, p2

    #@5
    if-ge v2, v0, :cond_d

    #@7
    move/from16 v0, p2

    #@9
    new-array v2, v0, [C

    #@b
    sput-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    #@d
    :cond_d
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    #@f
    const-wide/16 v4, 0x0

    #@11
    cmp-long v3, p0, v4

    #@13
    if-nez v3, :cond_28

    #@15
    :goto_15
    add-int/lit8 v3, p2, -0x1

    #@17
    if-gez v3, :cond_20

    #@19
    const/4 v3, 0x0

    #@1a
    const/16 v4, 0x20

    #@1c
    int-to-char v4, v4

    #@1d
    aput-char v4, v2, v3

    #@1f
    goto :goto_15

    #@20
    :cond_20
    const/4 v3, 0x0

    #@21
    const/16 v4, 0x30

    #@23
    int-to-char v4, v4

    #@24
    aput-char v4, v2, v3

    #@26
    const/4 v2, 0x1

    #@27
    :goto_27
    return v2

    #@28
    :cond_28
    const-wide/16 v4, 0x0

    #@2a
    cmp-long v3, p0, v4

    #@2c
    if-lez v3, :cond_b6

    #@2e
    const/16 v3, 0x2b

    #@30
    move v4, v3

    #@31
    :goto_31
    const-wide/16 v6, 0x3e8

    #@33
    rem-long v6, p0, v6

    #@35
    long-to-int v0, v6

    #@36
    move/from16 v16, v0

    #@38
    const-wide/16 v6, 0x3e8

    #@3a
    div-long v6, p0, v6

    #@3c
    long-to-double v6, v6

    #@3d
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    #@40
    move-result-wide v6

    #@41
    double-to-int v7, v6

    #@42
    const/4 v3, 0x0

    #@43
    const/4 v6, 0x0

    #@44
    const/4 v5, 0x0

    #@45
    const v8, 0x15180

    #@48
    if-le v7, v8, :cond_54

    #@4a
    const v3, 0x15180

    #@4d
    div-int v3, v7, v3

    #@4f
    const v8, 0x15180

    #@52
    mul-int/2addr v8, v3

    #@53
    sub-int/2addr v7, v8

    #@54
    :cond_54
    const/16 v8, 0xe10

    #@56
    if-le v7, v8, :cond_130

    #@58
    div-int/lit16 v6, v7, 0xe10

    #@5a
    mul-int/lit16 v8, v6, 0xe10

    #@5c
    sub-int/2addr v7, v8

    #@5d
    move v15, v6

    #@5e
    move v6, v7

    #@5f
    :goto_5f
    const/16 v7, 0x3c

    #@61
    if-le v6, v7, :cond_12c

    #@63
    div-int/lit8 v5, v6, 0x3c

    #@65
    mul-int/lit8 v7, v5, 0x3c

    #@67
    sub-int/2addr v6, v7

    #@68
    move v13, v5

    #@69
    move v14, v6

    #@6a
    :goto_6a
    const/4 v5, 0x0

    #@6b
    const/4 v6, 0x0

    #@6c
    if-eqz p2, :cond_c8

    #@6e
    const/4 v5, 0x1

    #@6f
    const/4 v7, 0x0

    #@70
    const/4 v8, 0x0

    #@71
    invoke-static {v3, v5, v7, v8}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    #@74
    move-result v7

    #@75
    if-lez v7, :cond_c0

    #@77
    const/4 v5, 0x1

    #@78
    :goto_78
    const/4 v8, 0x1

    #@79
    const/4 v9, 0x2

    #@7a
    invoke-static {v15, v8, v5, v9}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    #@7d
    move-result v5

    #@7e
    add-int/2addr v7, v5

    #@7f
    if-lez v7, :cond_c2

    #@81
    const/4 v5, 0x1

    #@82
    :goto_82
    const/4 v8, 0x1

    #@83
    const/4 v9, 0x2

    #@84
    invoke-static {v13, v8, v5, v9}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    #@87
    move-result v5

    #@88
    add-int/2addr v7, v5

    #@89
    if-lez v7, :cond_c4

    #@8b
    const/4 v5, 0x1

    #@8c
    :goto_8c
    const/4 v8, 0x1

    #@8d
    const/4 v9, 0x2

    #@8e
    invoke-static {v14, v8, v5, v9}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    #@91
    move-result v5

    #@92
    add-int/2addr v7, v5

    #@93
    if-lez v7, :cond_c6

    #@95
    const/4 v5, 0x3

    #@96
    :goto_96
    const/4 v8, 0x2

    #@97
    const/4 v9, 0x1

    #@98
    move/from16 v0, v16

    #@9a
    invoke-static {v0, v8, v9, v5}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    #@9d
    move-result v5

    #@9e
    add-int/lit8 v5, v5, 0x1

    #@a0
    add-int/2addr v5, v7

    #@a1
    move/from16 v17, v5

    #@a3
    move v5, v6

    #@a4
    move/from16 v6, v17

    #@a6
    :goto_a6
    move/from16 v0, p2

    #@a8
    if-ge v6, v0, :cond_c8

    #@aa
    const/16 v7, 0x20

    #@ac
    int-to-char v7, v7

    #@ad
    aput-char v7, v2, v5

    #@af
    add-int/lit8 v7, v5, 0x1

    #@b1
    add-int/lit8 v5, v6, 0x1

    #@b3
    move v6, v5

    #@b4
    move v5, v7

    #@b5
    goto :goto_a6

    #@b6
    :cond_b6
    const/16 v3, 0x2d

    #@b8
    move-wide/from16 v0, p0

    #@ba
    neg-long v0, v0

    #@bb
    move-wide/from16 p0, v0

    #@bd
    move v4, v3

    #@be
    goto/16 :goto_31

    #@c0
    :cond_c0
    const/4 v5, 0x0

    #@c1
    goto :goto_78

    #@c2
    :cond_c2
    const/4 v5, 0x0

    #@c3
    goto :goto_82

    #@c4
    :cond_c4
    const/4 v5, 0x0

    #@c5
    goto :goto_8c

    #@c6
    :cond_c6
    const/4 v5, 0x0

    #@c7
    goto :goto_96

    #@c8
    :cond_c8
    int-to-char v4, v4

    #@c9
    aput-char v4, v2, v5

    #@cb
    add-int/lit8 v5, v5, 0x1

    #@cd
    if-eqz p2, :cond_11b

    #@cf
    const/4 v4, 0x1

    #@d0
    move v12, v4

    #@d1
    :goto_d1
    const/16 v4, 0x64

    #@d3
    const/4 v6, 0x0

    #@d4
    const/4 v7, 0x0

    #@d5
    invoke-static/range {v2 .. v7}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    #@d8
    move-result v9

    #@d9
    if-eq v9, v5, :cond_11e

    #@db
    const/4 v10, 0x1

    #@dc
    :goto_dc
    if-eqz v12, :cond_120

    #@de
    const/4 v11, 0x2

    #@df
    :goto_df
    const/16 v8, 0x68

    #@e1
    move-object v6, v2

    #@e2
    move v7, v15

    #@e3
    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    #@e6
    move-result v9

    #@e7
    if-eq v9, v5, :cond_122

    #@e9
    const/4 v10, 0x1

    #@ea
    :goto_ea
    if-eqz v12, :cond_124

    #@ec
    const/4 v11, 0x2

    #@ed
    :goto_ed
    const/16 v8, 0x6d

    #@ef
    move-object v6, v2

    #@f0
    move v7, v13

    #@f1
    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    #@f4
    move-result v9

    #@f5
    if-eq v9, v5, :cond_126

    #@f7
    const/4 v10, 0x1

    #@f8
    :goto_f8
    if-eqz v12, :cond_128

    #@fa
    const/4 v11, 0x2

    #@fb
    :goto_fb
    const/16 v8, 0x73

    #@fd
    move-object v6, v2

    #@fe
    move v7, v14

    #@ff
    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    #@102
    move-result v8

    #@103
    if-eqz v12, :cond_12a

    #@105
    if-eq v8, v5, :cond_12a

    #@107
    const/4 v7, 0x3

    #@108
    :goto_108
    const/16 v4, 0x6d

    #@10a
    const/4 v6, 0x1

    #@10b
    move/from16 v3, v16

    #@10d
    move v5, v8

    #@10e
    invoke-static/range {v2 .. v7}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    #@111
    move-result v3

    #@112
    const/16 v4, 0x73

    #@114
    int-to-char v4, v4

    #@115
    aput-char v4, v2, v3

    #@117
    add-int/lit8 v2, v3, 0x1

    #@119
    goto/16 :goto_27

    #@11b
    :cond_11b
    const/4 v4, 0x0

    #@11c
    move v12, v4

    #@11d
    goto :goto_d1

    #@11e
    :cond_11e
    const/4 v10, 0x0

    #@11f
    goto :goto_dc

    #@120
    :cond_120
    const/4 v11, 0x0

    #@121
    goto :goto_df

    #@122
    :cond_122
    const/4 v10, 0x0

    #@123
    goto :goto_ea

    #@124
    :cond_124
    const/4 v11, 0x0

    #@125
    goto :goto_ed

    #@126
    :cond_126
    const/4 v10, 0x0

    #@127
    goto :goto_f8

    #@128
    :cond_128
    const/4 v11, 0x0

    #@129
    goto :goto_fb

    #@12a
    :cond_12a
    const/4 v7, 0x0

    #@12b
    goto :goto_108

    #@12c
    :cond_12c
    move v13, v5

    #@12d
    move v14, v6

    #@12e
    goto/16 :goto_6a

    #@130
    :cond_130
    move v15, v6

    #@131
    move v6, v7

    #@132
    goto/16 :goto_5f
.end method

.method private static printField([CICIZI)I
    .registers 10

    #@0
    if-nez p4, :cond_4

    #@2
    if-lez p1, :cond_40

    #@4
    :cond_4
    if-eqz p4, :cond_9

    #@6
    const/4 v0, 0x3

    #@7
    if-ge p5, v0, :cond_d

    #@9
    :cond_9
    const/16 v0, 0x63

    #@b
    if-le p1, v0, :cond_41

    #@d
    :cond_d
    div-int/lit8 v0, p1, 0x64

    #@f
    add-int/lit8 v1, v0, 0x30

    #@11
    int-to-char v1, v1

    #@12
    int-to-char v1, v1

    #@13
    aput-char v1, p0, p3

    #@15
    add-int/lit8 v1, p3, 0x1

    #@17
    mul-int/lit8 v0, v0, 0x64

    #@19
    sub-int v0, p1, v0

    #@1b
    :goto_1b
    if-eqz p4, :cond_20

    #@1d
    const/4 v2, 0x2

    #@1e
    if-ge p5, v2, :cond_26

    #@20
    :cond_20
    const/16 v2, 0x9

    #@22
    if-gt v0, v2, :cond_26

    #@24
    if-eq p3, v1, :cond_33

    #@26
    :cond_26
    div-int/lit8 v2, v0, 0xa

    #@28
    add-int/lit8 v3, v2, 0x30

    #@2a
    int-to-char v3, v3

    #@2b
    int-to-char v3, v3

    #@2c
    aput-char v3, p0, v1

    #@2e
    add-int/lit8 v1, v1, 0x1

    #@30
    mul-int/lit8 v2, v2, 0xa

    #@32
    sub-int/2addr v0, v2

    #@33
    :cond_33
    add-int/lit8 v0, v0, 0x30

    #@35
    int-to-char v0, v0

    #@36
    int-to-char v0, v0

    #@37
    aput-char v0, p0, v1

    #@39
    add-int/lit8 v0, v1, 0x1

    #@3b
    int-to-char v1, p2

    #@3c
    aput-char v1, p0, v0

    #@3e
    add-int/lit8 p3, v0, 0x1

    #@40
    :cond_40
    return p3

    #@41
    :cond_41
    move v1, p3

    #@42
    move v0, p1

    #@43
    goto :goto_1b
.end method
