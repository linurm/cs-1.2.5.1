.class public Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/moments/ItemScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private Mp:Ljava/lang/String;

.field private Vd:D

.field private Ve:D

.field private acA:I

.field private acB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/kn;",
            ">;"
        }
    .end annotation
.end field

.field private acC:Lcom/google/android/gms/internal/kn;

.field private acD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/kn;",
            ">;"
        }
    .end annotation
.end field

.field private acE:Ljava/lang/String;

.field private acF:Ljava/lang/String;

.field private acG:Lcom/google/android/gms/internal/kn;

.field private acH:Ljava/lang/String;

.field private acI:Ljava/lang/String;

.field private acJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/kn;",
            ">;"
        }
    .end annotation
.end field

.field private acK:Ljava/lang/String;

.field private acL:Ljava/lang/String;

.field private acM:Ljava/lang/String;

.field private acN:Ljava/lang/String;

.field private acO:Ljava/lang/String;

.field private acP:Ljava/lang/String;

.field private acQ:Ljava/lang/String;

.field private acR:Ljava/lang/String;

.field private acS:Lcom/google/android/gms/internal/kn;

.field private acT:Ljava/lang/String;

.field private acU:Ljava/lang/String;

.field private acV:Ljava/lang/String;

.field private acW:Lcom/google/android/gms/internal/kn;

.field private acX:Lcom/google/android/gms/internal/kn;

.field private acY:Lcom/google/android/gms/internal/kn;

.field private acZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/kn;",
            ">;"
        }
    .end annotation
.end field

.field private final acs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private act:Lcom/google/android/gms/internal/kn;

.field private acu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private acv:Lcom/google/android/gms/internal/kn;

.field private acw:Ljava/lang/String;

.field private acx:Ljava/lang/String;

.field private acy:Ljava/lang/String;

.field private acz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/kn;",
            ">;"
        }
    .end annotation
.end field

.field private ada:Ljava/lang/String;

.field private adb:Ljava/lang/String;

.field private adc:Ljava/lang/String;

.field private add:Ljava/lang/String;

.field private ade:Lcom/google/android/gms/internal/kn;

.field private adf:Ljava/lang/String;

.field private adg:Ljava/lang/String;

.field private adh:Ljava/lang/String;

.field private adi:Lcom/google/android/gms/internal/kn;

.field private adj:Ljava/lang/String;

.field private adk:Ljava/lang/String;

.field private adl:Ljava/lang/String;

.field private adm:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mk:Ljava/lang/String;

.field private qX:Ljava/lang/String;

.field private qY:Ljava/lang/String;

.field private xG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@a
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .registers 61

    #@0
    new-instance v2, Lcom/google/android/gms/internal/kn;

    #@2
    move-object/from16 v0, p0

    #@4
    iget-object v3, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v4, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->act:Lcom/google/android/gms/internal/kn;

    #@a
    move-object/from16 v0, p0

    #@c
    iget-object v5, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acu:Ljava/util/List;

    #@e
    move-object/from16 v0, p0

    #@10
    iget-object v6, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acv:Lcom/google/android/gms/internal/kn;

    #@12
    move-object/from16 v0, p0

    #@14
    iget-object v7, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acw:Ljava/lang/String;

    #@16
    move-object/from16 v0, p0

    #@18
    iget-object v8, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acx:Ljava/lang/String;

    #@1a
    move-object/from16 v0, p0

    #@1c
    iget-object v9, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acy:Ljava/lang/String;

    #@1e
    move-object/from16 v0, p0

    #@20
    iget-object v10, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acz:Ljava/util/List;

    #@22
    move-object/from16 v0, p0

    #@24
    iget v11, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acA:I

    #@26
    move-object/from16 v0, p0

    #@28
    iget-object v12, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acB:Ljava/util/List;

    #@2a
    move-object/from16 v0, p0

    #@2c
    iget-object v13, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acC:Lcom/google/android/gms/internal/kn;

    #@2e
    move-object/from16 v0, p0

    #@30
    iget-object v14, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acD:Ljava/util/List;

    #@32
    move-object/from16 v0, p0

    #@34
    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acE:Ljava/lang/String;

    #@36
    move-object/from16 v0, p0

    #@38
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acF:Ljava/lang/String;

    #@3a
    move-object/from16 v16, v0

    #@3c
    move-object/from16 v0, p0

    #@3e
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acG:Lcom/google/android/gms/internal/kn;

    #@40
    move-object/from16 v17, v0

    #@42
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acH:Ljava/lang/String;

    #@46
    move-object/from16 v18, v0

    #@48
    move-object/from16 v0, p0

    #@4a
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acI:Ljava/lang/String;

    #@4c
    move-object/from16 v19, v0

    #@4e
    move-object/from16 v0, p0

    #@50
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->mk:Ljava/lang/String;

    #@52
    move-object/from16 v20, v0

    #@54
    move-object/from16 v0, p0

    #@56
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acJ:Ljava/util/List;

    #@58
    move-object/from16 v21, v0

    #@5a
    move-object/from16 v0, p0

    #@5c
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acK:Ljava/lang/String;

    #@5e
    move-object/from16 v22, v0

    #@60
    move-object/from16 v0, p0

    #@62
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acL:Ljava/lang/String;

    #@64
    move-object/from16 v23, v0

    #@66
    move-object/from16 v0, p0

    #@68
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acM:Ljava/lang/String;

    #@6a
    move-object/from16 v24, v0

    #@6c
    move-object/from16 v0, p0

    #@6e
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Mp:Ljava/lang/String;

    #@70
    move-object/from16 v25, v0

    #@72
    move-object/from16 v0, p0

    #@74
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acN:Ljava/lang/String;

    #@76
    move-object/from16 v26, v0

    #@78
    move-object/from16 v0, p0

    #@7a
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acO:Ljava/lang/String;

    #@7c
    move-object/from16 v27, v0

    #@7e
    move-object/from16 v0, p0

    #@80
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acP:Ljava/lang/String;

    #@82
    move-object/from16 v28, v0

    #@84
    move-object/from16 v0, p0

    #@86
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acQ:Ljava/lang/String;

    #@88
    move-object/from16 v29, v0

    #@8a
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acR:Ljava/lang/String;

    #@8e
    move-object/from16 v30, v0

    #@90
    move-object/from16 v0, p0

    #@92
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acS:Lcom/google/android/gms/internal/kn;

    #@94
    move-object/from16 v31, v0

    #@96
    move-object/from16 v0, p0

    #@98
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acT:Ljava/lang/String;

    #@9a
    move-object/from16 v32, v0

    #@9c
    move-object/from16 v0, p0

    #@9e
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acU:Ljava/lang/String;

    #@a0
    move-object/from16 v33, v0

    #@a2
    move-object/from16 v0, p0

    #@a4
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->xG:Ljava/lang/String;

    #@a6
    move-object/from16 v34, v0

    #@a8
    move-object/from16 v0, p0

    #@aa
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acV:Ljava/lang/String;

    #@ac
    move-object/from16 v35, v0

    #@ae
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acW:Lcom/google/android/gms/internal/kn;

    #@b2
    move-object/from16 v36, v0

    #@b4
    move-object/from16 v0, p0

    #@b6
    iget-wide v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Vd:D

    #@b8
    move-wide/from16 v37, v0

    #@ba
    move-object/from16 v0, p0

    #@bc
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acX:Lcom/google/android/gms/internal/kn;

    #@be
    move-object/from16 v39, v0

    #@c0
    move-object/from16 v0, p0

    #@c2
    iget-wide v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Ve:D

    #@c4
    move-wide/from16 v40, v0

    #@c6
    move-object/from16 v0, p0

    #@c8
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->mName:Ljava/lang/String;

    #@ca
    move-object/from16 v42, v0

    #@cc
    move-object/from16 v0, p0

    #@ce
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acY:Lcom/google/android/gms/internal/kn;

    #@d0
    move-object/from16 v43, v0

    #@d2
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acZ:Ljava/util/List;

    #@d6
    move-object/from16 v44, v0

    #@d8
    move-object/from16 v0, p0

    #@da
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->ada:Ljava/lang/String;

    #@dc
    move-object/from16 v45, v0

    #@de
    move-object/from16 v0, p0

    #@e0
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->adb:Ljava/lang/String;

    #@e2
    move-object/from16 v46, v0

    #@e4
    move-object/from16 v0, p0

    #@e6
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->adc:Ljava/lang/String;

    #@e8
    move-object/from16 v47, v0

    #@ea
    move-object/from16 v0, p0

    #@ec
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->add:Ljava/lang/String;

    #@ee
    move-object/from16 v48, v0

    #@f0
    move-object/from16 v0, p0

    #@f2
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->ade:Lcom/google/android/gms/internal/kn;

    #@f4
    move-object/from16 v49, v0

    #@f6
    move-object/from16 v0, p0

    #@f8
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->adf:Ljava/lang/String;

    #@fa
    move-object/from16 v50, v0

    #@fc
    move-object/from16 v0, p0

    #@fe
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->adg:Ljava/lang/String;

    #@100
    move-object/from16 v51, v0

    #@102
    move-object/from16 v0, p0

    #@104
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->adh:Ljava/lang/String;

    #@106
    move-object/from16 v52, v0

    #@108
    move-object/from16 v0, p0

    #@10a
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->adi:Lcom/google/android/gms/internal/kn;

    #@10c
    move-object/from16 v53, v0

    #@10e
    move-object/from16 v0, p0

    #@110
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->adj:Ljava/lang/String;

    #@112
    move-object/from16 v54, v0

    #@114
    move-object/from16 v0, p0

    #@116
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->adk:Ljava/lang/String;

    #@118
    move-object/from16 v55, v0

    #@11a
    move-object/from16 v0, p0

    #@11c
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->qX:Ljava/lang/String;

    #@11e
    move-object/from16 v56, v0

    #@120
    move-object/from16 v0, p0

    #@122
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->qY:Ljava/lang/String;

    #@124
    move-object/from16 v57, v0

    #@126
    move-object/from16 v0, p0

    #@128
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->adl:Ljava/lang/String;

    #@12a
    move-object/from16 v58, v0

    #@12c
    move-object/from16 v0, p0

    #@12e
    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->adm:Ljava/lang/String;

    #@130
    move-object/from16 v59, v0

    #@132
    invoke-direct/range {v2 .. v59}, Lcom/google/android/gms/internal/kn;-><init>(Ljava/util/Set;Lcom/google/android/gms/internal/kn;Ljava/util/List;Lcom/google/android/gms/internal/kn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Lcom/google/android/gms/internal/kn;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/kn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/kn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/kn;DLcom/google/android/gms/internal/kn;DLjava/lang/String;Lcom/google/android/gms/internal/kn;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/kn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/kn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@135
    return-object v2
.end method

.method public setAbout(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    check-cast p1, Lcom/google/android/gms/internal/kn;

    #@2
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->act:Lcom/google/android/gms/internal/kn;

    #@4
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@6
    const/4 v1, 0x2

    #@7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@e
    return-object p0
.end method

.method public setAdditionalName(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acu:Ljava/util/List;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/4 v1, 0x3

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c
    return-object p0
.end method

.method public setAddress(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    check-cast p1, Lcom/google/android/gms/internal/kn;

    #@2
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acv:Lcom/google/android/gms/internal/kn;

    #@4
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@6
    const/4 v1, 0x4

    #@7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@e
    return-object p0
.end method

.method public setAddressCountry(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acw:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/4 v1, 0x5

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c
    return-object p0
.end method

.method public setAddressLocality(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acx:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/4 v1, 0x6

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c
    return-object p0
.end method

.method public setAddressRegion(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acy:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/4 v1, 0x7

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c
    return-object p0
.end method

.method public setAssociated_media(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acz:Ljava/util/List;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x8

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setAttendeeCount(I)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acA:I

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x9

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setAttendees(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acB:Ljava/util/List;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0xa

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setAudio(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    check-cast p1, Lcom/google/android/gms/internal/kn;

    #@2
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acC:Lcom/google/android/gms/internal/kn;

    #@4
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@6
    const/16 v1, 0xb

    #@8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f
    return-object p0
.end method

.method public setAuthor(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acD:Ljava/util/List;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0xc

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setBestRating(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acE:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0xd

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setBirthDate(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acF:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0xe

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setByArtist(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    check-cast p1, Lcom/google/android/gms/internal/kn;

    #@2
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acG:Lcom/google/android/gms/internal/kn;

    #@4
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@6
    const/16 v1, 0xf

    #@8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f
    return-object p0
.end method

.method public setCaption(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acH:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x10

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setContentSize(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acI:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x11

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->mk:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x12

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setContributor(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acJ:Ljava/util/List;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x13

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setDateCreated(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acK:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x14

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setDateModified(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acL:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x15

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setDatePublished(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acM:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x16

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Mp:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x17

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setDuration(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acN:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x18

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setEmbedUrl(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acO:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x19

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setEndDate(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acP:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x1a

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setFamilyName(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acQ:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x1b

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setGender(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acR:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x1c

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setGeo(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    check-cast p1, Lcom/google/android/gms/internal/kn;

    #@2
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acS:Lcom/google/android/gms/internal/kn;

    #@4
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@6
    const/16 v1, 0x1d

    #@8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f
    return-object p0
.end method

.method public setGivenName(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acT:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x1e

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setHeight(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acU:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x1f

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->xG:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x20

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setImage(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acV:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x21

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setInAlbum(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    check-cast p1, Lcom/google/android/gms/internal/kn;

    #@2
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acW:Lcom/google/android/gms/internal/kn;

    #@4
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@6
    const/16 v1, 0x22

    #@8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f
    return-object p0
.end method

.method public setLatitude(D)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 6

    #@0
    iput-wide p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Vd:D

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x24

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setLocation(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    check-cast p1, Lcom/google/android/gms/internal/kn;

    #@2
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acX:Lcom/google/android/gms/internal/kn;

    #@4
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@6
    const/16 v1, 0x25

    #@8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f
    return-object p0
.end method

.method public setLongitude(D)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 6

    #@0
    iput-wide p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->Ve:D

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x26

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->mName:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x27

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setPartOfTVSeries(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    check-cast p1, Lcom/google/android/gms/internal/kn;

    #@2
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acY:Lcom/google/android/gms/internal/kn;

    #@4
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@6
    const/16 v1, 0x28

    #@8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f
    return-object p0
.end method

.method public setPerformers(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acZ:Ljava/util/List;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x29

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setPlayerType(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->ada:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x2a

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setPostOfficeBoxNumber(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->adb:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x2b

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->adc:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x2c

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setRatingValue(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->add:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x2d

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setReviewRating(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    check-cast p1, Lcom/google/android/gms/internal/kn;

    #@2
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->ade:Lcom/google/android/gms/internal/kn;

    #@4
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@6
    const/16 v1, 0x2e

    #@8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f
    return-object p0
.end method

.method public setStartDate(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->adf:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x2f

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setStreetAddress(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->adg:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x30

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->adh:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x31

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setThumbnail(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    check-cast p1, Lcom/google/android/gms/internal/kn;

    #@2
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->adi:Lcom/google/android/gms/internal/kn;

    #@4
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@6
    const/16 v1, 0x32

    #@8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f
    return-object p0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->adj:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x33

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setTickerSymbol(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->adk:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x34

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->qX:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x35

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->qY:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x36

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setWidth(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->adl:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x37

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method

.method public setWorstRating(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->adm:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->acs:Ljava/util/Set;

    #@4
    const/16 v1, 0x38

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    return-object p0
.end method
