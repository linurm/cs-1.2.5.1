.class public final Lcom/google/android/gms/common/data/DataHolder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/data/DataHolder$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/data/f;

.field private static final EO:Lcom/google/android/gms/common/data/DataHolder$a;


# instance fields
.field private final CT:I

.field private final EG:[Ljava/lang/String;

.field EH:Landroid/os/Bundle;

.field private final EI:[Landroid/database/CursorWindow;

.field private final EJ:Landroid/os/Bundle;

.field EK:[I

.field EL:I

.field private EM:Ljava/lang/Object;

.field private EN:Z

.field mClosed:Z

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/common/data/f;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/common/data/f;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    #@7
    new-instance v0, Lcom/google/android/gms/common/data/DataHolder$1;

    #@9
    const/4 v1, 0x0

    #@a
    new-array v1, v1, [Ljava/lang/String;

    #@c
    const/4 v2, 0x0

    #@d
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/data/DataHolder$1;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    #@10
    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->EO:Lcom/google/android/gms/common/data/DataHolder$a;

    #@12
    return-void
.end method

.method constructor <init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    #@6
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EN:Z

    #@9
    iput p1, p0, Lcom/google/android/gms/common/data/DataHolder;->xM:I

    #@b
    iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder;->EG:[Ljava/lang/String;

    #@d
    iput-object p3, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:[Landroid/database/CursorWindow;

    #@f
    iput p4, p0, Lcom/google/android/gms/common/data/DataHolder;->CT:I

    #@11
    iput-object p5, p0, Lcom/google/android/gms/common/data/DataHolder;->EJ:Landroid/os/Bundle;

    #@13
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/data/DataHolder$a;ILandroid/os/Bundle;)V
    .registers 6

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/data/DataHolder$a;->a(Lcom/google/android/gms/common/data/DataHolder$a;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, -0x1

    #@5
    invoke-static {p1, v1}, Lcom/google/android/gms/common/data/DataHolder;->a(Lcom/google/android/gms/common/data/DataHolder$a;I)[Landroid/database/CursorWindow;

    #@8
    move-result-object v1

    #@9
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    #@c
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .registers 7

    #@0
    const/4 v1, 0x1

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    #@7
    iput-boolean v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EN:Z

    #@9
    iput v1, p0, Lcom/google/android/gms/common/data/DataHolder;->xM:I

    #@b
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, [Ljava/lang/String;

    #@11
    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EG:[Ljava/lang/String;

    #@13
    invoke-static {p2}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, [Landroid/database/CursorWindow;

    #@19
    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:[Landroid/database/CursorWindow;

    #@1b
    iput p3, p0, Lcom/google/android/gms/common/data/DataHolder;->CT:I

    #@1d
    iput-object p4, p0, Lcom/google/android/gms/common/data/DataHolder;->EJ:Landroid/os/Bundle;

    #@1f
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->eW()V

    #@22
    return-void
.end method

.method public static a(ILandroid/os/Bundle;)Lcom/google/android/gms/common/data/DataHolder;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    #@2
    sget-object v1, Lcom/google/android/gms/common/data/DataHolder;->EO:Lcom/google/android/gms/common/data/DataHolder$a;

    #@4
    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$a;ILandroid/os/Bundle;)V

    #@7
    return-object v0
.end method

.method private static a(Lcom/google/android/gms/common/data/DataHolder$a;I)[Landroid/database/CursorWindow;
    .registers 15

    #@0
    const/4 v5, 0x0

    #@1
    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$a;->a(Lcom/google/android/gms/common/data/DataHolder$a;)[Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    array-length v0, v0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array v0, v5, [Landroid/database/CursorWindow;

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    if-ltz p1, :cond_17

    #@d
    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$a;->b(Lcom/google/android/gms/common/data/DataHolder$a;)Ljava/util/ArrayList;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v0

    #@15
    if-lt p1, v0, :cond_8f

    #@17
    :cond_17
    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$a;->b(Lcom/google/android/gms/common/data/DataHolder$a;)Ljava/util/ArrayList;

    #@1a
    move-result-object v0

    #@1b
    move-object v2, v0

    #@1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@1f
    move-result v10

    #@20
    new-instance v3, Landroid/database/CursorWindow;

    #@22
    invoke-direct {v3, v5}, Landroid/database/CursorWindow;-><init>(Z)V

    #@25
    new-instance v11, Ljava/util/ArrayList;

    #@27
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@2a
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$a;->a(Lcom/google/android/gms/common/data/DataHolder$a;)[Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    array-length v0, v0

    #@32
    invoke-virtual {v3, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    #@35
    move v0, v5

    #@36
    move v4, v5

    #@37
    :goto_37
    if-ge v4, v10, :cond_1a6

    #@39
    :try_start_39
    invoke-virtual {v3}, Landroid/database/CursorWindow;->allocRow()Z

    #@3c
    move-result v1

    #@3d
    if-nez v1, :cond_1b4

    #@3f
    new-instance v0, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string v1, "DataHolder"

    #@46
    const-string v3, "Allocating additional cursor window for large data set (row "

    #@48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    const-string v3, ")"

    #@52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    new-instance v3, Landroid/database/CursorWindow;

    #@5f
    const/4 v0, 0x0

    #@60
    invoke-direct {v3, v0}, Landroid/database/CursorWindow;-><init>(Z)V

    #@63
    invoke-virtual {v3, v4}, Landroid/database/CursorWindow;->setStartPosition(I)V

    #@66
    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$a;->a(Lcom/google/android/gms/common/data/DataHolder$a;)[Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    array-length v0, v0

    #@6b
    invoke-virtual {v3, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    #@6e
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@71
    invoke-virtual {v3}, Landroid/database/CursorWindow;->allocRow()Z

    #@74
    move-result v0

    #@75
    if-nez v0, :cond_99

    #@77
    const-string v0, "DataHolder"

    #@79
    const-string v1, "Unable to allocate row to hold data."

    #@7b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@81
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@84
    move-result v0

    #@85
    new-array v0, v0, [Landroid/database/CursorWindow;

    #@87
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@8a
    move-result-object v0

    #@8b
    check-cast v0, [Landroid/database/CursorWindow;
    :try_end_8d
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_8d} :catch_14c

    #@8d
    goto/16 :goto_a

    #@8f
    :cond_8f
    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$a;->b(Lcom/google/android/gms/common/data/DataHolder$a;)Ljava/util/ArrayList;

    #@92
    move-result-object v0

    #@93
    invoke-virtual {v0, v5, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    #@96
    move-result-object v0

    #@97
    move-object v2, v0

    #@98
    goto :goto_1c

    #@99
    :cond_99
    move v9, v5

    #@9a
    :goto_9a
    :try_start_9a
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@9d
    move-result-object v0

    #@9e
    check-cast v0, Ljava/util/Map;

    #@a0
    const/4 v1, 0x1

    #@a1
    move v8, v5

    #@a2
    :goto_a2
    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$a;->a(Lcom/google/android/gms/common/data/DataHolder$a;)[Ljava/lang/String;

    #@a5
    move-result-object v6

    #@a6
    array-length v6, v6

    #@a7
    if-ge v8, v6, :cond_160

    #@a9
    if-eqz v1, :cond_160

    #@ab
    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$a;->a(Lcom/google/android/gms/common/data/DataHolder$a;)[Ljava/lang/String;

    #@ae
    move-result-object v1

    #@af
    aget-object v6, v1, v8

    #@b1
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b4
    move-result-object v1

    #@b5
    if-nez v1, :cond_bf

    #@b7
    invoke-virtual {v3, v9, v8}, Landroid/database/CursorWindow;->putNull(II)Z

    #@ba
    move-result v1

    #@bb
    :goto_bb
    add-int/lit8 v6, v8, 0x1

    #@bd
    move v8, v6

    #@be
    goto :goto_a2

    #@bf
    :cond_bf
    instance-of v7, v1, Ljava/lang/String;

    #@c1
    if-eqz v7, :cond_ca

    #@c3
    check-cast v1, Ljava/lang/String;

    #@c5
    invoke-virtual {v3, v1, v9, v8}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    #@c8
    move-result v1

    #@c9
    goto :goto_bb

    #@ca
    :cond_ca
    instance-of v7, v1, Ljava/lang/Long;

    #@cc
    if-eqz v7, :cond_d9

    #@ce
    check-cast v1, Ljava/lang/Long;

    #@d0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@d3
    move-result-wide v6

    #@d4
    invoke-virtual {v3, v6, v7, v9, v8}, Landroid/database/CursorWindow;->putLong(JII)Z

    #@d7
    move-result v1

    #@d8
    goto :goto_bb

    #@d9
    :cond_d9
    instance-of v7, v1, Ljava/lang/Integer;

    #@db
    if-eqz v7, :cond_e9

    #@dd
    check-cast v1, Ljava/lang/Integer;

    #@df
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@e2
    move-result v1

    #@e3
    int-to-long v6, v1

    #@e4
    invoke-virtual {v3, v6, v7, v9, v8}, Landroid/database/CursorWindow;->putLong(JII)Z

    #@e7
    move-result v1

    #@e8
    goto :goto_bb

    #@e9
    :cond_e9
    instance-of v7, v1, Ljava/lang/Boolean;

    #@eb
    if-eqz v7, :cond_ff

    #@ed
    check-cast v1, Ljava/lang/Boolean;

    #@ef
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@f2
    move-result v1

    #@f3
    if-eqz v1, :cond_fc

    #@f5
    const-wide/16 v6, 0x1

    #@f7
    :goto_f7
    invoke-virtual {v3, v6, v7, v9, v8}, Landroid/database/CursorWindow;->putLong(JII)Z

    #@fa
    move-result v1

    #@fb
    goto :goto_bb

    #@fc
    :cond_fc
    const-wide/16 v6, 0x0

    #@fe
    goto :goto_f7

    #@ff
    :cond_ff
    instance-of v7, v1, [B

    #@101
    if-eqz v7, :cond_10a

    #@103
    check-cast v1, [B

    #@105
    invoke-virtual {v3, v1, v9, v8}, Landroid/database/CursorWindow;->putBlob([BII)Z

    #@108
    move-result v1

    #@109
    goto :goto_bb

    #@10a
    :cond_10a
    instance-of v7, v1, Ljava/lang/Double;

    #@10c
    if-eqz v7, :cond_119

    #@10e
    check-cast v1, Ljava/lang/Double;

    #@110
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    #@113
    move-result-wide v6

    #@114
    invoke-virtual {v3, v6, v7, v9, v8}, Landroid/database/CursorWindow;->putDouble(DII)Z

    #@117
    move-result v1

    #@118
    goto :goto_bb

    #@119
    :cond_119
    instance-of v7, v1, Ljava/lang/Float;

    #@11b
    if-eqz v7, :cond_129

    #@11d
    check-cast v1, Ljava/lang/Float;

    #@11f
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@122
    move-result v1

    #@123
    float-to-double v6, v1

    #@124
    invoke-virtual {v3, v6, v7, v9, v8}, Landroid/database/CursorWindow;->putDouble(DII)Z

    #@127
    move-result v1

    #@128
    goto :goto_bb

    #@129
    :cond_129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12b
    new-instance v2, Ljava/lang/StringBuilder;

    #@12d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@130
    const-string v3, "Unsupported object for column "

    #@132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v2

    #@136
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v2

    #@13a
    const-string v3, ": "

    #@13c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v2

    #@140
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v1

    #@144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@147
    move-result-object v1

    #@148
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14b
    throw v0
    :try_end_14c
    .catch Ljava/lang/RuntimeException; {:try_start_9a .. :try_end_14c} :catch_14c

    #@14c
    :catch_14c
    move-exception v0

    #@14d
    move-object v1, v0

    #@14e
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@151
    move-result v2

    #@152
    :goto_152
    if-ge v5, v2, :cond_1a5

    #@154
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@157
    move-result-object v0

    #@158
    check-cast v0, Landroid/database/CursorWindow;

    #@15a
    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    #@15d
    add-int/lit8 v5, v5, 0x1

    #@15f
    goto :goto_152

    #@160
    :cond_160
    if-nez v1, :cond_19e

    #@162
    :try_start_162
    new-instance v0, Ljava/lang/StringBuilder;

    #@164
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@167
    const-string v1, "DataHolder"

    #@169
    const-string v6, "Couldn\'t populate window data for row "

    #@16b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v0

    #@16f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@172
    move-result-object v0

    #@173
    const-string v6, " - allocating new window."

    #@175
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v0

    #@179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17c
    move-result-object v0

    #@17d
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@180
    invoke-virtual {v3}, Landroid/database/CursorWindow;->freeLastRow()V

    #@183
    new-instance v0, Landroid/database/CursorWindow;

    #@185
    const/4 v1, 0x0

    #@186
    invoke-direct {v0, v1}, Landroid/database/CursorWindow;-><init>(Z)V

    #@189
    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$a;->a(Lcom/google/android/gms/common/data/DataHolder$a;)[Ljava/lang/String;

    #@18c
    move-result-object v1

    #@18d
    array-length v1, v1

    #@18e
    invoke-virtual {v0, v1}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    #@191
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_194
    .catch Ljava/lang/RuntimeException; {:try_start_162 .. :try_end_194} :catch_14c

    #@194
    add-int/lit8 v1, v4, -0x1

    #@196
    move v3, v5

    #@197
    :goto_197
    add-int/lit8 v4, v1, 0x1

    #@199
    move-object v12, v0

    #@19a
    move v0, v3

    #@19b
    move-object v3, v12

    #@19c
    goto/16 :goto_37

    #@19e
    :cond_19e
    add-int/lit8 v0, v9, 0x1

    #@1a0
    move v1, v4

    #@1a1
    move-object v12, v3

    #@1a2
    move v3, v0

    #@1a3
    move-object v0, v12

    #@1a4
    goto :goto_197

    #@1a5
    :cond_1a5
    throw v1

    #@1a6
    :cond_1a6
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@1a9
    move-result v0

    #@1aa
    new-array v0, v0, [Landroid/database/CursorWindow;

    #@1ac
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1af
    move-result-object v0

    #@1b0
    check-cast v0, [Landroid/database/CursorWindow;

    #@1b2
    goto/16 :goto_a

    #@1b4
    :cond_1b4
    move v9, v0

    #@1b5
    goto/16 :goto_9a
.end method

.method public static af(I)Lcom/google/android/gms/common/data/DataHolder;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/data/DataHolder;->a(ILandroid/os/Bundle;)Lcom/google/android/gms/common/data/DataHolder;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private e(Ljava/lang/String;I)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EH:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_c

    #@4
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EH:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_25

    #@c
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string v2, "No such column: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_33

    #@2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2d
    const-string v1, "Buffer is closed."

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    :cond_33
    if-ltz p2, :cond_39

    #@35
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EL:I

    #@37
    if-lt p2, v0, :cond_41

    #@39
    :cond_39
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    #@3b
    iget v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EL:I

    #@3d
    invoke-direct {v0, p2, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    #@40
    throw v0

    #@41
    :cond_41
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)J
    .registers 6

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:[Landroid/database/CursorWindow;

    #@5
    aget-object v0, v0, p3

    #@7
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EH:Landroid/os/Bundle;

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@c
    move-result v1

    #@d
    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getLong(II)J

    #@10
    move-result-wide v0

    #@11
    return-wide v0
.end method

.method public a(Ljava/lang/String;IILandroid/database/CharArrayBuffer;)V
    .registers 7

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:[Landroid/database/CursorWindow;

    #@5
    aget-object v0, v0, p3

    #@7
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EH:Landroid/os/Bundle;

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@c
    move-result v1

    #@d
    invoke-virtual {v0, p2, v1, p4}, Landroid/database/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V

    #@10
    return-void
.end method

.method public ae(I)I
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    if-ltz p1, :cond_20

    #@3
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EL:I

    #@5
    if-ge p1, v0, :cond_20

    #@7
    const/4 v0, 0x1

    #@8
    :goto_8
    invoke-static {v0}, Lcom/google/android/gms/internal/hm;->A(Z)V

    #@b
    :goto_b
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EK:[I

    #@d
    array-length v0, v0

    #@e
    if-ge v1, v0, :cond_18

    #@10
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EK:[I

    #@12
    aget v0, v0, v1

    #@14
    if-ge p1, v0, :cond_22

    #@16
    add-int/lit8 v1, v1, -0x1

    #@18
    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EK:[I

    #@1a
    array-length v0, v0

    #@1b
    if-ne v1, v0, :cond_1f

    #@1d
    add-int/lit8 v1, v1, -0x1

    #@1f
    :cond_1f
    return v1

    #@20
    :cond_20
    move v0, v1

    #@21
    goto :goto_8

    #@22
    :cond_22
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_b
.end method

.method public av(Ljava/lang/String;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EH:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public b(Ljava/lang/String;II)I
    .registers 6

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:[Landroid/database/CursorWindow;

    #@5
    aget-object v0, v0, p3

    #@7
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EH:Landroid/os/Bundle;

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@c
    move-result v1

    #@d
    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getInt(II)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public b(Ljava/lang/Object;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/common/data/DataHolder;->EM:Ljava/lang/Object;

    #@2
    return-void
.end method

.method public c(Ljava/lang/String;II)Ljava/lang/String;
    .registers 6

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:[Landroid/database/CursorWindow;

    #@5
    aget-object v0, v0, p3

    #@7
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EH:Landroid/os/Bundle;

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@c
    move-result v1

    #@d
    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public close()V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    #@3
    if-nez v0, :cond_18

    #@5
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    #@8
    const/4 v0, 0x0

    #@9
    :goto_9
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:[Landroid/database/CursorWindow;

    #@b
    array-length v1, v1

    #@c
    if-ge v0, v1, :cond_18

    #@e
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:[Landroid/database/CursorWindow;

    #@10
    aget-object v1, v1, v0

    #@12
    invoke-virtual {v1}, Landroid/database/CursorWindow;->close()V

    #@15
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_9

    #@18
    :cond_18
    monitor-exit p0

    #@19
    return-void

    #@1a
    :catchall_1a
    move-exception v0

    #@1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    #@1c
    throw v0
.end method

.method public d(Ljava/lang/String;II)Z
    .registers 8

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:[Landroid/database/CursorWindow;

    #@5
    aget-object v0, v0, p3

    #@7
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EH:Landroid/os/Bundle;

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@c
    move-result v1

    #@d
    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getLong(II)J

    #@10
    move-result-wide v0

    #@11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@18
    move-result-wide v0

    #@19
    const-wide/16 v2, 0x1

    #@1b
    cmp-long v0, v0, v2

    #@1d
    if-nez v0, :cond_21

    #@1f
    const/4 v0, 0x1

    #@20
    :goto_20
    return v0

    #@21
    :cond_21
    const/4 v0, 0x0

    #@22
    goto :goto_20
.end method

.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public e(Ljava/lang/String;II)F
    .registers 6

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:[Landroid/database/CursorWindow;

    #@5
    aget-object v0, v0, p3

    #@7
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EH:Landroid/os/Bundle;

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@c
    move-result v1

    #@d
    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getFloat(II)F

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public eU()Landroid/os/Bundle;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EJ:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public eW()V
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    new-instance v0, Landroid/os/Bundle;

    #@3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@6
    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EH:Landroid/os/Bundle;

    #@8
    move v0, v1

    #@9
    :goto_9
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->EG:[Ljava/lang/String;

    #@b
    array-length v2, v2

    #@c
    if-ge v0, v2, :cond_1a

    #@e
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->EH:Landroid/os/Bundle;

    #@10
    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->EG:[Ljava/lang/String;

    #@12
    aget-object v3, v3, v0

    #@14
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@17
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_9

    #@1a
    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:[Landroid/database/CursorWindow;

    #@1c
    array-length v0, v0

    #@1d
    new-array v0, v0, [I

    #@1f
    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EK:[I

    #@21
    move v0, v1

    #@22
    :goto_22
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:[Landroid/database/CursorWindow;

    #@24
    array-length v2, v2

    #@25
    if-ge v0, v2, :cond_43

    #@27
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->EK:[I

    #@29
    aput v1, v2, v0

    #@2b
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:[Landroid/database/CursorWindow;

    #@2d
    aget-object v2, v2, v0

    #@2f
    invoke-virtual {v2}, Landroid/database/CursorWindow;->getStartPosition()I

    #@32
    move-result v2

    #@33
    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:[Landroid/database/CursorWindow;

    #@35
    aget-object v3, v3, v0

    #@37
    invoke-virtual {v3}, Landroid/database/CursorWindow;->getNumRows()I

    #@3a
    move-result v3

    #@3b
    sub-int v2, v1, v2

    #@3d
    sub-int v2, v3, v2

    #@3f
    add-int/2addr v1, v2

    #@40
    add-int/lit8 v0, v0, 0x1

    #@42
    goto :goto_22

    #@43
    :cond_43
    iput v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EL:I

    #@45
    return-void
.end method

.method eX()[Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EG:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method eY()[Landroid/database/CursorWindow;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:[Landroid/database/CursorWindow;

    #@2
    return-object v0
.end method

.method public f(Ljava/lang/String;II)[B
    .registers 6

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:[Landroid/database/CursorWindow;

    #@5
    aget-object v0, v0, p3

    #@7
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EH:Landroid/os/Bundle;

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@c
    move-result v1

    #@d
    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getBlob(II)[B

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EN:Z

    #@2
    if-eqz v0, :cond_4b

    #@4
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:[Landroid/database/CursorWindow;

    #@6
    array-length v0, v0

    #@7
    if-lez v0, :cond_4b

    #@9
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_4b

    #@f
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EM:Ljava/lang/Object;

    #@11
    if-nez v0, :cond_4f

    #@13
    new-instance v0, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string v1, "internal object: "

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    :goto_2a
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string v2, "DataBuffer"

    #@31
    const-string v3, "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call close() on all DataBuffer extending objects when you are done with them. ("

    #@33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    const-string v1, ")"

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->close()V
    :try_end_4b
    .catchall {:try_start_0 .. :try_end_4b} :catchall_56

    #@4b
    :cond_4b
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@4e
    return-void

    #@4f
    :cond_4f
    :try_start_4f
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EM:Ljava/lang/Object;

    #@51
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_56

    #@54
    move-result-object v0

    #@55
    goto :goto_2a

    #@56
    :catchall_56
    move-exception v0

    #@57
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@5a
    throw v0
.end method

.method public g(Ljava/lang/String;II)Landroid/net/Uri;
    .registers 5

    #@0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@b
    move-result-object v0

    #@c
    goto :goto_7
.end method

.method public getCount()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EL:I

    #@2
    return v0
.end method

.method public getStatusCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->CT:I

    #@2
    return v0
.end method

.method getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->xM:I

    #@2
    return v0
.end method

.method public h(Ljava/lang/String;II)Z
    .registers 6

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:[Landroid/database/CursorWindow;

    #@5
    aget-object v0, v0, p3

    #@7
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EH:Landroid/os/Bundle;

    #@9
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@c
    move-result v1

    #@d
    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->isNull(II)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public isClosed()Z
    .registers 2

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_5
    move-exception v0

    #@6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    #@7
    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/data/f;->a(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
