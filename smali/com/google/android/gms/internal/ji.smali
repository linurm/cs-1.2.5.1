.class public Lcom/google/android/gms/internal/ji;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/jh;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static a(Lcom/google/android/gms/internal/jh;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->getRequestId()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    const/4 v3, 0x0

    #@a
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@d
    const/16 v1, 0x3e8

    #@f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->getVersionCode()I

    #@12
    move-result v2

    #@13
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@16
    const/4 v1, 0x2

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->getExpirationTime()J

    #@1a
    move-result-wide v2

    #@1b
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@1e
    const/4 v1, 0x3

    #@1f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->ja()S

    #@22
    move-result v2

    #@23
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IS)V

    #@26
    const/4 v1, 0x4

    #@27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->getLatitude()D

    #@2a
    move-result-wide v2

    #@2b
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ID)V

    #@2e
    const/4 v1, 0x5

    #@2f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->getLongitude()D

    #@32
    move-result-wide v2

    #@33
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ID)V

    #@36
    const/4 v1, 0x6

    #@37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->jb()F

    #@3a
    move-result v2

    #@3b
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    #@3e
    const/4 v1, 0x7

    #@3f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->jc()I

    #@42
    move-result v2

    #@43
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@46
    const/16 v1, 0x8

    #@48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->getNotificationResponsiveness()I

    #@4b
    move-result v2

    #@4c
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@4f
    const/16 v1, 0x9

    #@51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->jd()I

    #@54
    move-result v2

    #@55
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@58
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@5b
    return-void
.end method


# virtual methods
.method public bt(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jh;
    .registers 20

    #@0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v2

    #@4
    const/4 v4, 0x0

    #@5
    const/4 v5, 0x0

    #@6
    const/4 v6, 0x0

    #@7
    const/4 v7, 0x0

    #@8
    const-wide/16 v8, 0x0

    #@a
    const-wide/16 v10, 0x0

    #@c
    const/4 v12, 0x0

    #@d
    const-wide/16 v13, 0x0

    #@f
    const/4 v15, 0x0

    #@10
    const/16 v16, -0x1

    #@12
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@15
    move-result v3

    #@16
    if-ge v3, v2, :cond_6f

    #@18
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@1b
    move-result v3

    #@1c
    invoke-static {v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@1f
    move-result v17

    #@20
    sparse-switch v17, :sswitch_data_96

    #@23
    move-object/from16 v0, p1

    #@25
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@28
    goto :goto_12

    #@29
    :sswitch_29
    move-object/from16 v0, p1

    #@2b
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    goto :goto_12

    #@30
    :sswitch_30
    move-object/from16 v0, p1

    #@32
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@35
    move-result v4

    #@36
    goto :goto_12

    #@37
    :sswitch_37
    move-object/from16 v0, p1

    #@39
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@3c
    move-result-wide v13

    #@3d
    goto :goto_12

    #@3e
    :sswitch_3e
    move-object/from16 v0, p1

    #@40
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->f(Landroid/os/Parcel;I)S

    #@43
    move-result v7

    #@44
    goto :goto_12

    #@45
    :sswitch_45
    move-object/from16 v0, p1

    #@47
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)D

    #@4a
    move-result-wide v8

    #@4b
    goto :goto_12

    #@4c
    :sswitch_4c
    move-object/from16 v0, p1

    #@4e
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)D

    #@51
    move-result-wide v10

    #@52
    goto :goto_12

    #@53
    :sswitch_53
    move-object/from16 v0, p1

    #@55
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    #@58
    move-result v12

    #@59
    goto :goto_12

    #@5a
    :sswitch_5a
    move-object/from16 v0, p1

    #@5c
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@5f
    move-result v6

    #@60
    goto :goto_12

    #@61
    :sswitch_61
    move-object/from16 v0, p1

    #@63
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@66
    move-result v15

    #@67
    goto :goto_12

    #@68
    :sswitch_68
    move-object/from16 v0, p1

    #@6a
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@6d
    move-result v16

    #@6e
    goto :goto_12

    #@6f
    :cond_6f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@72
    move-result v3

    #@73
    if-eq v3, v2, :cond_90

    #@75
    new-instance v3, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@77
    new-instance v4, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string v5, "Overread allowed size end="

    #@7e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v4

    #@82
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v2

    #@86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v2

    #@8a
    move-object/from16 v0, p1

    #@8c
    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@8f
    throw v3

    #@90
    :cond_90
    new-instance v3, Lcom/google/android/gms/internal/jh;

    #@92
    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/internal/jh;-><init>(ILjava/lang/String;ISDDFJII)V

    #@95
    return-object v3

    #@96
    :sswitch_data_96
    .sparse-switch
        0x1 -> :sswitch_29
        0x2 -> :sswitch_37
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_45
        0x5 -> :sswitch_4c
        0x6 -> :sswitch_53
        0x7 -> :sswitch_5a
        0x8 -> :sswitch_61
        0x9 -> :sswitch_68
        0x3e8 -> :sswitch_30
    .end sparse-switch
.end method

.method public cO(I)[Lcom/google/android/gms/internal/jh;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/jh;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ji;->bt(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jh;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ji;->cO(I)[Lcom/google/android/gms/internal/jh;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
