.class public abstract Lcom/google/android/gms/drive/Metadata;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/drive/Metadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_AVAILABLE_LOCALLY:I = 0x1

.field public static final CONTENT_NOT_AVAILABLE_LOCALLY:I


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public getAlternateLink()Ljava/lang/String;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iq;->JU:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getContentAvailability()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iu;->KC:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@f
    move-result v0

    #@10
    goto :goto_b
.end method

.method public getCreatedDate()Ljava/util/Date;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/is;->Kw:Lcom/google/android/gms/internal/is$a;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Date;

    #@8
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iq;->JW:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getDriveId()Lcom/google/android/gms/drive/DriveId;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iq;->JT:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    #@8
    return-object v0
.end method

.method public getEmbedLink()Ljava/lang/String;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iq;->JX:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getFileExtension()Ljava/lang/String;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iq;->JY:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getFileSize()J
    .registers 3

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iq;->JZ:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Long;

    #@8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method public getLastViewedByMeDate()Ljava/util/Date;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/is;->Kx:Lcom/google/android/gms/internal/is$b;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Date;

    #@8
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iq;->Kk:Lcom/google/android/gms/internal/iq$c;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getModifiedByMeDate()Ljava/util/Date;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/is;->Kz:Lcom/google/android/gms/internal/is$c;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Date;

    #@8
    return-object v0
.end method

.method public getModifiedDate()Ljava/util/Date;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/is;->Ky:Lcom/google/android/gms/internal/is$d;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Date;

    #@8
    return-object v0
.end method

.method public getOriginalFilename()Ljava/lang/String;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iq;->Kl:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getQuotaBytesUsed()J
    .registers 3

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iq;->Ko:Lcom/google/android/gms/internal/iq$e;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Long;

    #@8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method public getSharedWithMeDate()Ljava/util/Date;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/is;->KA:Lcom/google/android/gms/internal/is$e;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Date;

    #@8
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iq;->Kr:Lcom/google/android/gms/internal/iq$g;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getWebContentLink()Ljava/lang/String;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iq;->Kt:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getWebViewLink()Ljava/lang/String;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iq;->Ku:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public isEditable()Z
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iq;->Ke:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Boolean;

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@f
    move-result v0

    #@10
    goto :goto_b
.end method

.method public isFolder()Z
    .registers 3

    #@0
    const-string v0, "application/vnd.google-apps.folder"

    #@2
    invoke-virtual {p0}, Lcom/google/android/gms/drive/Metadata;->getMimeType()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isInAppFolder()Z
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iq;->Kc:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Boolean;

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@f
    move-result v0

    #@10
    goto :goto_b
.end method

.method public isPinnable()Z
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iu;->KD:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Boolean;

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@f
    move-result v0

    #@10
    goto :goto_b
.end method

.method public isPinned()Z
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iq;->Kf:Lcom/google/android/gms/internal/iq$b;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Boolean;

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@f
    move-result v0

    #@10
    goto :goto_b
.end method

.method public isRestricted()Z
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iq;->Kg:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Boolean;

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@f
    move-result v0

    #@10
    goto :goto_b
.end method

.method public isShared()Z
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iq;->Kh:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Boolean;

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@f
    move-result v0

    #@10
    goto :goto_b
.end method

.method public isStarred()Z
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iq;->Kp:Lcom/google/android/gms/internal/iq$f;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Boolean;

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@f
    move-result v0

    #@10
    goto :goto_b
.end method

.method public isTrashed()Z
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iq;->Ks:Lcom/google/android/gms/internal/iq$h;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Boolean;

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@f
    move-result v0

    #@10
    goto :goto_b
.end method

.method public isViewed()Z
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/iq;->Kj:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Boolean;

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@f
    move-result v0

    #@10
    goto :goto_b
.end method
