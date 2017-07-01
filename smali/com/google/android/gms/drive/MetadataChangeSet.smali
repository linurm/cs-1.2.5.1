.class public final Lcom/google/android/gms/drive/MetadataChangeSet;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    }
.end annotation


# static fields
.field public static final HV:Lcom/google/android/gms/drive/MetadataChangeSet;


# instance fields
.field private final HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/drive/MetadataChangeSet;

    #@2
    invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->gF()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/MetadataChangeSet;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    #@9
    sput-object v0, Lcom/google/android/gms/drive/MetadataChangeSet;->HV:Lcom/google/android/gms/drive/MetadataChangeSet;

    #@b
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@9
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@2
    sget-object v1, Lcom/google/android/gms/internal/iq;->JW:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public getIndexableText()Ljava/lang/String;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@2
    sget-object v1, Lcom/google/android/gms/internal/iq;->Kb:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public getLastViewedByMeDate()Ljava/util/Date;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@2
    sget-object v1, Lcom/google/android/gms/internal/is;->Kx:Lcom/google/android/gms/internal/is$b;

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/Date;

    #@a
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@2
    sget-object v1, Lcom/google/android/gms/internal/iq;->Kk:Lcom/google/android/gms/internal/iq$c;

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@2
    sget-object v1, Lcom/google/android/gms/internal/iq;->Kr:Lcom/google/android/gms/internal/iq$g;

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public gm()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@2
    return-object v0
.end method

.method public isPinned()Ljava/lang/Boolean;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@2
    sget-object v1, Lcom/google/android/gms/internal/iq;->Kf:Lcom/google/android/gms/internal/iq$b;

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/Boolean;

    #@a
    return-object v0
.end method

.method public isStarred()Ljava/lang/Boolean;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@2
    sget-object v1, Lcom/google/android/gms/internal/iq;->Kp:Lcom/google/android/gms/internal/iq$f;

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/Boolean;

    #@a
    return-object v0
.end method

.method public isViewed()Ljava/lang/Boolean;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->HW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@2
    sget-object v1, Lcom/google/android/gms/internal/iq;->Kj:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/Boolean;

    #@a
    return-object v0
.end method
