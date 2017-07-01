.class public Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/MetadataChangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field private HX:Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$a;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;-><init>(Landroid/content/Context;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->gF()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@9
    iput-object p1, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->mContext:Landroid/content/Context;

    #@b
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/drive/MetadataChangeSet;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->HX:Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$a;

    #@2
    if-eqz v0, :cond_11

    #@4
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@6
    sget-object v1, Lcom/google/android/gms/internal/iq;->JV:Lcom/google/android/gms/internal/iq$a;

    #@8
    iget-object v2, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->HX:Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$a;

    #@a
    invoke-virtual {v2}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$a;->gD()Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    #@11
    :cond_11
    new-instance v0, Lcom/google/android/gms/drive/MetadataChangeSet;

    #@13
    iget-object v1, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@15
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/MetadataChangeSet;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    #@18
    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@2
    sget-object v1, Lcom/google/android/gms/internal/iq;->JW:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@4
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    #@7
    return-object p0
.end method

.method public setIndexableText(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@2
    sget-object v1, Lcom/google/android/gms/internal/iq;->Kb:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@4
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    #@7
    return-object p0
.end method

.method public setLastViewedByMeDate(Ljava/util/Date;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@2
    sget-object v1, Lcom/google/android/gms/internal/is;->Kx:Lcom/google/android/gms/internal/is$b;

    #@4
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    #@7
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@2
    sget-object v1, Lcom/google/android/gms/internal/iq;->Kk:Lcom/google/android/gms/internal/iq$c;

    #@4
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    #@7
    return-object p0
.end method

.method public setPinned(Z)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@2
    sget-object v1, Lcom/google/android/gms/internal/iq;->Kf:Lcom/google/android/gms/internal/iq$b;

    #@4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    #@b
    return-object p0
.end method

.method public setStarred(Z)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@2
    sget-object v1, Lcom/google/android/gms/internal/iq;->Kp:Lcom/google/android/gms/internal/iq$f;

    #@4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    #@b
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@2
    sget-object v1, Lcom/google/android/gms/internal/iq;->Kr:Lcom/google/android/gms/internal/iq$g;

    #@4
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    #@7
    return-object p0
.end method

.method public setViewed(Z)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@2
    sget-object v1, Lcom/google/android/gms/internal/iq;->Kj:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    #@b
    return-object p0
.end method
