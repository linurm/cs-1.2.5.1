.class public Lcom/google/android/gms/internal/kt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ks;",
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

.method static a(Lcom/google/android/gms/internal/ks;Landroid/os/Parcel;I)V
    .registers 11

    #@0
    const/4 v7, 0x5

    #@1
    const/4 v6, 0x4

    #@2
    const/4 v5, 0x3

    #@3
    const/4 v3, 0x2

    #@4
    const/4 v4, 0x1

    #@5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@8
    move-result v0

    #@9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->kk()Ljava/util/Set;

    #@c
    move-result-object v1

    #@d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1e

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->getVersionCode()I

    #@1a
    move-result v2

    #@1b
    invoke-static {p1, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@1e
    :cond_1e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v2

    #@22
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_2f

    #@28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->getAboutMe()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {p1, v3, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@2f
    :cond_2f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v2

    #@33
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_40

    #@39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->kF()Lcom/google/android/gms/internal/ks$a;

    #@3c
    move-result-object v2

    #@3d
    invoke-static {p1, v5, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@40
    :cond_40
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v2

    #@44
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_51

    #@4a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->getBirthday()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    invoke-static {p1, v6, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@51
    :cond_51
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@54
    move-result-object v2

    #@55
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@58
    move-result v2

    #@59
    if-eqz v2, :cond_62

    #@5b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->getBraggingRights()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    invoke-static {p1, v7, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@62
    :cond_62
    const/4 v2, 0x6

    #@63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@66
    move-result-object v2

    #@67
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@6a
    move-result v2

    #@6b
    if-eqz v2, :cond_75

    #@6d
    const/4 v2, 0x6

    #@6e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->getCircledByCount()I

    #@71
    move-result v3

    #@72
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@75
    :cond_75
    const/4 v2, 0x7

    #@76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@79
    move-result-object v2

    #@7a
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@7d
    move-result v2

    #@7e
    if-eqz v2, :cond_88

    #@80
    const/4 v2, 0x7

    #@81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->kG()Lcom/google/android/gms/internal/ks$b;

    #@84
    move-result-object v3

    #@85
    invoke-static {p1, v2, v3, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@88
    :cond_88
    const/16 v2, 0x8

    #@8a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8d
    move-result-object v2

    #@8e
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@91
    move-result v2

    #@92
    if-eqz v2, :cond_9d

    #@94
    const/16 v2, 0x8

    #@96
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->getCurrentLocation()Ljava/lang/String;

    #@99
    move-result-object v3

    #@9a
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@9d
    :cond_9d
    const/16 v2, 0x9

    #@9f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a2
    move-result-object v2

    #@a3
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@a6
    move-result v2

    #@a7
    if-eqz v2, :cond_b2

    #@a9
    const/16 v2, 0x9

    #@ab
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->getDisplayName()Ljava/lang/String;

    #@ae
    move-result-object v3

    #@af
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@b2
    :cond_b2
    const/16 v2, 0xc

    #@b4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b7
    move-result-object v2

    #@b8
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@bb
    move-result v2

    #@bc
    if-eqz v2, :cond_c7

    #@be
    const/16 v2, 0xc

    #@c0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->getGender()I

    #@c3
    move-result v3

    #@c4
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@c7
    :cond_c7
    const/16 v2, 0xe

    #@c9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cc
    move-result-object v2

    #@cd
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@d0
    move-result v2

    #@d1
    if-eqz v2, :cond_dc

    #@d3
    const/16 v2, 0xe

    #@d5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->getId()Ljava/lang/String;

    #@d8
    move-result-object v3

    #@d9
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@dc
    :cond_dc
    const/16 v2, 0xf

    #@de
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e1
    move-result-object v2

    #@e2
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@e5
    move-result v2

    #@e6
    if-eqz v2, :cond_f1

    #@e8
    const/16 v2, 0xf

    #@ea
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->kH()Lcom/google/android/gms/internal/ks$c;

    #@ed
    move-result-object v3

    #@ee
    invoke-static {p1, v2, v3, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@f1
    :cond_f1
    const/16 v2, 0x10

    #@f3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f6
    move-result-object v2

    #@f7
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@fa
    move-result v2

    #@fb
    if-eqz v2, :cond_106

    #@fd
    const/16 v2, 0x10

    #@ff
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->isPlusUser()Z

    #@102
    move-result v3

    #@103
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@106
    :cond_106
    const/16 v2, 0x13

    #@108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10b
    move-result-object v2

    #@10c
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@10f
    move-result v2

    #@110
    if-eqz v2, :cond_11b

    #@112
    const/16 v2, 0x13

    #@114
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->kI()Lcom/google/android/gms/internal/ks$d;

    #@117
    move-result-object v3

    #@118
    invoke-static {p1, v2, v3, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@11b
    :cond_11b
    const/16 v2, 0x12

    #@11d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@120
    move-result-object v2

    #@121
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@124
    move-result v2

    #@125
    if-eqz v2, :cond_130

    #@127
    const/16 v2, 0x12

    #@129
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->getLanguage()Ljava/lang/String;

    #@12c
    move-result-object v3

    #@12d
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@130
    :cond_130
    const/16 v2, 0x15

    #@132
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@135
    move-result-object v2

    #@136
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@139
    move-result v2

    #@13a
    if-eqz v2, :cond_145

    #@13c
    const/16 v2, 0x15

    #@13e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->getObjectType()I

    #@141
    move-result v3

    #@142
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@145
    :cond_145
    const/16 v2, 0x14

    #@147
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14a
    move-result-object v2

    #@14b
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@14e
    move-result v2

    #@14f
    if-eqz v2, :cond_15a

    #@151
    const/16 v2, 0x14

    #@153
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->getNickname()Ljava/lang/String;

    #@156
    move-result-object v3

    #@157
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@15a
    :cond_15a
    const/16 v2, 0x17

    #@15c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15f
    move-result-object v2

    #@160
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@163
    move-result v2

    #@164
    if-eqz v2, :cond_16f

    #@166
    const/16 v2, 0x17

    #@168
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->kK()Ljava/util/List;

    #@16b
    move-result-object v3

    #@16c
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@16f
    :cond_16f
    const/16 v2, 0x16

    #@171
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@174
    move-result-object v2

    #@175
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@178
    move-result v2

    #@179
    if-eqz v2, :cond_184

    #@17b
    const/16 v2, 0x16

    #@17d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->kJ()Ljava/util/List;

    #@180
    move-result-object v3

    #@181
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@184
    :cond_184
    const/16 v2, 0x19

    #@186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@189
    move-result-object v2

    #@18a
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@18d
    move-result v2

    #@18e
    if-eqz v2, :cond_199

    #@190
    const/16 v2, 0x19

    #@192
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->getRelationshipStatus()I

    #@195
    move-result v3

    #@196
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@199
    :cond_199
    const/16 v2, 0x18

    #@19b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19e
    move-result-object v2

    #@19f
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1a2
    move-result v2

    #@1a3
    if-eqz v2, :cond_1ae

    #@1a5
    const/16 v2, 0x18

    #@1a7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->getPlusOneCount()I

    #@1aa
    move-result v3

    #@1ab
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@1ae
    :cond_1ae
    const/16 v2, 0x1b

    #@1b0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b3
    move-result-object v2

    #@1b4
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1b7
    move-result v2

    #@1b8
    if-eqz v2, :cond_1c3

    #@1ba
    const/16 v2, 0x1b

    #@1bc
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->getUrl()Ljava/lang/String;

    #@1bf
    move-result-object v3

    #@1c0
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@1c3
    :cond_1c3
    const/16 v2, 0x1a

    #@1c5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c8
    move-result-object v2

    #@1c9
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1cc
    move-result v2

    #@1cd
    if-eqz v2, :cond_1d8

    #@1cf
    const/16 v2, 0x1a

    #@1d1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->getTagline()Ljava/lang/String;

    #@1d4
    move-result-object v3

    #@1d5
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@1d8
    :cond_1d8
    const/16 v2, 0x1d

    #@1da
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1dd
    move-result-object v2

    #@1de
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1e1
    move-result v2

    #@1e2
    if-eqz v2, :cond_1ed

    #@1e4
    const/16 v2, 0x1d

    #@1e6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->isVerified()Z

    #@1e9
    move-result v3

    #@1ea
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@1ed
    :cond_1ed
    const/16 v2, 0x1c

    #@1ef
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f2
    move-result-object v2

    #@1f3
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1f6
    move-result v1

    #@1f7
    if-eqz v1, :cond_202

    #@1f9
    const/16 v1, 0x1c

    #@1fb
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ks;->kL()Ljava/util/List;

    #@1fe
    move-result-object v2

    #@1ff
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    #@202
    :cond_202
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@205
    return-void
.end method


# virtual methods
.method public bG(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ks;
    .registers 33

    #@0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v29

    #@4
    new-instance v3, Ljava/util/HashSet;

    #@6
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@9
    const/4 v4, 0x0

    #@a
    const/4 v5, 0x0

    #@b
    const/4 v6, 0x0

    #@c
    const/4 v7, 0x0

    #@d
    const/4 v8, 0x0

    #@e
    const/4 v9, 0x0

    #@f
    const/4 v10, 0x0

    #@10
    const/4 v11, 0x0

    #@11
    const/4 v12, 0x0

    #@12
    const/4 v13, 0x0

    #@13
    const/4 v14, 0x0

    #@14
    const/4 v15, 0x0

    #@15
    const/16 v16, 0x0

    #@17
    const/16 v17, 0x0

    #@19
    const/16 v18, 0x0

    #@1b
    const/16 v19, 0x0

    #@1d
    const/16 v20, 0x0

    #@1f
    const/16 v21, 0x0

    #@21
    const/16 v22, 0x0

    #@23
    const/16 v23, 0x0

    #@25
    const/16 v24, 0x0

    #@27
    const/16 v25, 0x0

    #@29
    const/16 v26, 0x0

    #@2b
    const/16 v27, 0x0

    #@2d
    const/16 v28, 0x0

    #@2f
    :goto_2f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@32
    move-result v2

    #@33
    move/from16 v0, v29

    #@35
    if-ge v2, v0, :cond_209

    #@37
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@3a
    move-result v2

    #@3b
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@3e
    move-result v30

    #@3f
    packed-switch v30, :pswitch_data_234

    #@42
    :pswitch_42
    move-object/from16 v0, p1

    #@44
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@47
    goto :goto_2f

    #@48
    :pswitch_48
    move-object/from16 v0, p1

    #@4a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@4d
    move-result v4

    #@4e
    const/4 v2, 0x1

    #@4f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@52
    move-result-object v2

    #@53
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@56
    goto :goto_2f

    #@57
    :pswitch_57
    move-object/from16 v0, p1

    #@59
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    const/4 v2, 0x2

    #@5e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v2

    #@62
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@65
    goto :goto_2f

    #@66
    :pswitch_66
    sget-object v6, Lcom/google/android/gms/internal/ks$a;->CREATOR:Lcom/google/android/gms/internal/ku;

    #@68
    move-object/from16 v0, p1

    #@6a
    invoke-static {v0, v2, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@6d
    move-result-object v2

    #@6e
    check-cast v2, Lcom/google/android/gms/internal/ks$a;

    #@70
    const/4 v6, 0x3

    #@71
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@74
    move-result-object v6

    #@75
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@78
    move-object v6, v2

    #@79
    goto :goto_2f

    #@7a
    :pswitch_7a
    move-object/from16 v0, p1

    #@7c
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@7f
    move-result-object v7

    #@80
    const/4 v2, 0x4

    #@81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@84
    move-result-object v2

    #@85
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@88
    goto :goto_2f

    #@89
    :pswitch_89
    move-object/from16 v0, p1

    #@8b
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@8e
    move-result-object v8

    #@8f
    const/4 v2, 0x5

    #@90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@93
    move-result-object v2

    #@94
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@97
    goto :goto_2f

    #@98
    :pswitch_98
    move-object/from16 v0, p1

    #@9a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@9d
    move-result v9

    #@9e
    const/4 v2, 0x6

    #@9f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a2
    move-result-object v2

    #@a3
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a6
    goto :goto_2f

    #@a7
    :pswitch_a7
    sget-object v10, Lcom/google/android/gms/internal/ks$b;->CREATOR:Lcom/google/android/gms/internal/kv;

    #@a9
    move-object/from16 v0, p1

    #@ab
    invoke-static {v0, v2, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@ae
    move-result-object v2

    #@af
    check-cast v2, Lcom/google/android/gms/internal/ks$b;

    #@b1
    const/4 v10, 0x7

    #@b2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b5
    move-result-object v10

    #@b6
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@b9
    move-object v10, v2

    #@ba
    goto/16 :goto_2f

    #@bc
    :pswitch_bc
    move-object/from16 v0, p1

    #@be
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@c1
    move-result-object v11

    #@c2
    const/16 v2, 0x8

    #@c4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c7
    move-result-object v2

    #@c8
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@cb
    goto/16 :goto_2f

    #@cd
    :pswitch_cd
    move-object/from16 v0, p1

    #@cf
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@d2
    move-result-object v12

    #@d3
    const/16 v2, 0x9

    #@d5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d8
    move-result-object v2

    #@d9
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@dc
    goto/16 :goto_2f

    #@de
    :pswitch_de
    move-object/from16 v0, p1

    #@e0
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@e3
    move-result v13

    #@e4
    const/16 v2, 0xc

    #@e6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e9
    move-result-object v2

    #@ea
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@ed
    goto/16 :goto_2f

    #@ef
    :pswitch_ef
    move-object/from16 v0, p1

    #@f1
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@f4
    move-result-object v14

    #@f5
    const/16 v2, 0xe

    #@f7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@fa
    move-result-object v2

    #@fb
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@fe
    goto/16 :goto_2f

    #@100
    :pswitch_100
    sget-object v15, Lcom/google/android/gms/internal/ks$c;->CREATOR:Lcom/google/android/gms/internal/ky;

    #@102
    move-object/from16 v0, p1

    #@104
    invoke-static {v0, v2, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@107
    move-result-object v2

    #@108
    check-cast v2, Lcom/google/android/gms/internal/ks$c;

    #@10a
    const/16 v15, 0xf

    #@10c
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10f
    move-result-object v15

    #@110
    invoke-interface {v3, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@113
    move-object v15, v2

    #@114
    goto/16 :goto_2f

    #@116
    :pswitch_116
    move-object/from16 v0, p1

    #@118
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@11b
    move-result v16

    #@11c
    const/16 v2, 0x10

    #@11e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@121
    move-result-object v2

    #@122
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@125
    goto/16 :goto_2f

    #@127
    :pswitch_127
    sget-object v18, Lcom/google/android/gms/internal/ks$d;->CREATOR:Lcom/google/android/gms/internal/kz;

    #@129
    move-object/from16 v0, p1

    #@12b
    move-object/from16 v1, v18

    #@12d
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@130
    move-result-object v2

    #@131
    check-cast v2, Lcom/google/android/gms/internal/ks$d;

    #@133
    const/16 v18, 0x13

    #@135
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@138
    move-result-object v18

    #@139
    move-object/from16 v0, v18

    #@13b
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@13e
    move-object/from16 v18, v2

    #@140
    goto/16 :goto_2f

    #@142
    :pswitch_142
    move-object/from16 v0, p1

    #@144
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@147
    move-result-object v17

    #@148
    const/16 v2, 0x12

    #@14a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14d
    move-result-object v2

    #@14e
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@151
    goto/16 :goto_2f

    #@153
    :pswitch_153
    move-object/from16 v0, p1

    #@155
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@158
    move-result v20

    #@159
    const/16 v2, 0x15

    #@15b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15e
    move-result-object v2

    #@15f
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@162
    goto/16 :goto_2f

    #@164
    :pswitch_164
    move-object/from16 v0, p1

    #@166
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@169
    move-result-object v19

    #@16a
    const/16 v2, 0x14

    #@16c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16f
    move-result-object v2

    #@170
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@173
    goto/16 :goto_2f

    #@175
    :pswitch_175
    sget-object v22, Lcom/google/android/gms/internal/ks$g;->CREATOR:Lcom/google/android/gms/internal/lb;

    #@177
    move-object/from16 v0, p1

    #@179
    move-object/from16 v1, v22

    #@17b
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@17e
    move-result-object v22

    #@17f
    const/16 v2, 0x17

    #@181
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@184
    move-result-object v2

    #@185
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@188
    goto/16 :goto_2f

    #@18a
    :pswitch_18a
    sget-object v21, Lcom/google/android/gms/internal/ks$f;->CREATOR:Lcom/google/android/gms/internal/la;

    #@18c
    move-object/from16 v0, p1

    #@18e
    move-object/from16 v1, v21

    #@190
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@193
    move-result-object v21

    #@194
    const/16 v2, 0x16

    #@196
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@199
    move-result-object v2

    #@19a
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@19d
    goto/16 :goto_2f

    #@19f
    :pswitch_19f
    move-object/from16 v0, p1

    #@1a1
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@1a4
    move-result v24

    #@1a5
    const/16 v2, 0x19

    #@1a7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1aa
    move-result-object v2

    #@1ab
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1ae
    goto/16 :goto_2f

    #@1b0
    :pswitch_1b0
    move-object/from16 v0, p1

    #@1b2
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@1b5
    move-result v23

    #@1b6
    const/16 v2, 0x18

    #@1b8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1bb
    move-result-object v2

    #@1bc
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1bf
    goto/16 :goto_2f

    #@1c1
    :pswitch_1c1
    move-object/from16 v0, p1

    #@1c3
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@1c6
    move-result-object v26

    #@1c7
    const/16 v2, 0x1b

    #@1c9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1cc
    move-result-object v2

    #@1cd
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1d0
    goto/16 :goto_2f

    #@1d2
    :pswitch_1d2
    move-object/from16 v0, p1

    #@1d4
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@1d7
    move-result-object v25

    #@1d8
    const/16 v2, 0x1a

    #@1da
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1dd
    move-result-object v2

    #@1de
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1e1
    goto/16 :goto_2f

    #@1e3
    :pswitch_1e3
    move-object/from16 v0, p1

    #@1e5
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@1e8
    move-result v28

    #@1e9
    const/16 v2, 0x1d

    #@1eb
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1ee
    move-result-object v2

    #@1ef
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1f2
    goto/16 :goto_2f

    #@1f4
    :pswitch_1f4
    sget-object v27, Lcom/google/android/gms/internal/ks$h;->CREATOR:Lcom/google/android/gms/internal/lc;

    #@1f6
    move-object/from16 v0, p1

    #@1f8
    move-object/from16 v1, v27

    #@1fa
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@1fd
    move-result-object v27

    #@1fe
    const/16 v2, 0x1c

    #@200
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@203
    move-result-object v2

    #@204
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@207
    goto/16 :goto_2f

    #@209
    :cond_209
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@20c
    move-result v2

    #@20d
    move/from16 v0, v29

    #@20f
    if-eq v2, v0, :cond_22e

    #@211
    new-instance v2, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@213
    new-instance v3, Ljava/lang/StringBuilder;

    #@215
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@218
    const-string v4, "Overread allowed size end="

    #@21a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21d
    move-result-object v3

    #@21e
    move/from16 v0, v29

    #@220
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@223
    move-result-object v3

    #@224
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@227
    move-result-object v3

    #@228
    move-object/from16 v0, p1

    #@22a
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@22d
    throw v2

    #@22e
    :cond_22e
    new-instance v2, Lcom/google/android/gms/internal/ks;

    #@230
    invoke-direct/range {v2 .. v28}, Lcom/google/android/gms/internal/ks;-><init>(Ljava/util/Set;ILjava/lang/String;Lcom/google/android/gms/internal/ks$a;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/ks$b;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ks$c;ZLjava/lang/String;Lcom/google/android/gms/internal/ks$d;Ljava/lang/String;ILjava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    #@233
    return-object v2

    #@234
    :pswitch_data_234
    .packed-switch 0x1
        :pswitch_48
        :pswitch_57
        :pswitch_66
        :pswitch_7a
        :pswitch_89
        :pswitch_98
        :pswitch_a7
        :pswitch_bc
        :pswitch_cd
        :pswitch_42
        :pswitch_42
        :pswitch_de
        :pswitch_42
        :pswitch_ef
        :pswitch_100
        :pswitch_116
        :pswitch_42
        :pswitch_142
        :pswitch_127
        :pswitch_164
        :pswitch_153
        :pswitch_18a
        :pswitch_175
        :pswitch_1b0
        :pswitch_19f
        :pswitch_1d2
        :pswitch_1c1
        :pswitch_1f4
        :pswitch_1e3
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kt;->bG(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ks;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public dd(I)[Lcom/google/android/gms/internal/ks;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/ks;

    #@2
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kt;->dd(I)[Lcom/google/android/gms/internal/ks;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
