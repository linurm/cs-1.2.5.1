.class public Lcom/google/android/gms/drive/DriveId;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final HN:Ljava/lang/String;

.field final HO:J

.field final HP:J

.field private volatile HQ:Ljava/lang/String;

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/drive/c;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/c;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;JJ)V
    .registers 14

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->HQ:Ljava/lang/String;

    #@8
    iput p1, p0, Lcom/google/android/gms/drive/DriveId;->xM:I

    #@a
    iput-object p2, p0, Lcom/google/android/gms/drive/DriveId;->HN:Ljava/lang/String;

    #@c
    const-string v0, ""

    #@e
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_29

    #@14
    move v0, v1

    #@15
    :goto_15
    invoke-static {v0}, Lcom/google/android/gms/internal/hm;->C(Z)V

    #@18
    if-nez p2, :cond_20

    #@1a
    const-wide/16 v4, -0x1

    #@1c
    cmp-long v0, p3, v4

    #@1e
    if-eqz v0, :cond_21

    #@20
    :cond_20
    move v2, v1

    #@21
    :cond_21
    invoke-static {v2}, Lcom/google/android/gms/internal/hm;->C(Z)V

    #@24
    iput-wide p3, p0, Lcom/google/android/gms/drive/DriveId;->HO:J

    #@26
    iput-wide p5, p0, Lcom/google/android/gms/drive/DriveId;->HP:J

    #@28
    return-void

    #@29
    :cond_29
    move v0, v2

    #@2a
    goto :goto_15
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 14

    #@0
    const/4 v2, 0x1

    #@1
    move-object v1, p0

    #@2
    move-object v3, p1

    #@3
    move-wide v4, p2

    #@4
    move-wide v6, p4

    #@5
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/drive/DriveId;-><init>(ILjava/lang/String;JJ)V

    #@8
    return-void
.end method

.method public static aL(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;
    .registers 7

    #@0
    const-wide/16 v2, -0x1

    #@2
    invoke-static {p0}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    new-instance v0, Lcom/google/android/gms/drive/DriveId;

    #@7
    move-object v1, p0

    #@8
    move-wide v4, v2

    #@9
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/DriveId;-><init>(Ljava/lang/String;JJ)V

    #@c
    return-object v0
.end method

.method public static decodeFromString(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;
    .registers 4

    #@0
    const-string v0, "DriveId:"

    #@2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v2, "Invalid DriveId: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@1c
    const-string v0, "DriveId:"

    #@1e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@21
    move-result v0

    #@22
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    const/16 v1, 0xa

    #@28
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@2b
    move-result-object v0

    #@2c
    invoke-static {v0}, Lcom/google/android/gms/drive/DriveId;->f([B)Lcom/google/android/gms/drive/DriveId;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method

.method static f([B)Lcom/google/android/gms/drive/DriveId;
    .registers 9

    #@0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/drive/internal/af;->g([B)Lcom/google/android/gms/drive/internal/af;
    :try_end_3
    .catch Lcom/google/android/gms/internal/md; {:try_start_0 .. :try_end_3} :catch_1b

    #@3
    move-result-object v0

    #@4
    const-string v1, ""

    #@6
    iget-object v2, v0, Lcom/google/android/gms/drive/internal/af;->Jt:Ljava/lang/String;

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_22

    #@e
    const/4 v3, 0x0

    #@f
    :goto_f
    new-instance v1, Lcom/google/android/gms/drive/DriveId;

    #@11
    iget v2, v0, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    #@13
    iget-wide v4, v0, Lcom/google/android/gms/drive/internal/af;->Ju:J

    #@15
    iget-wide v6, v0, Lcom/google/android/gms/drive/internal/af;->Jv:J

    #@17
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/drive/DriveId;-><init>(ILjava/lang/String;JJ)V

    #@1a
    return-object v1

    #@1b
    :catch_1b
    move-exception v0

    #@1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@21
    throw v0

    #@22
    :cond_22
    iget-object v3, v0, Lcom/google/android/gms/drive/internal/af;->Jt:Ljava/lang/String;

    #@24
    goto :goto_f
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final encodeToString()Ljava/lang/String;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->HQ:Ljava/lang/String;

    #@2
    if-nez v0, :cond_23

    #@4
    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->gk()[B

    #@7
    move-result-object v0

    #@8
    const/16 v1, 0xa

    #@a
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string v2, "DriveId:"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->HQ:Ljava/lang/String;

    #@23
    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->HQ:Ljava/lang/String;

    #@25
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    #@0
    const-wide/16 v6, -0x1

    #@2
    const/4 v0, 0x0

    #@3
    instance-of v1, p1, Lcom/google/android/gms/drive/DriveId;

    #@5
    if-nez v1, :cond_8

    #@7
    :cond_7
    :goto_7
    return v0

    #@8
    :cond_8
    check-cast p1, Lcom/google/android/gms/drive/DriveId;

    #@a
    iget-wide v2, p1, Lcom/google/android/gms/drive/DriveId;->HP:J

    #@c
    iget-wide v4, p0, Lcom/google/android/gms/drive/DriveId;->HP:J

    #@e
    cmp-long v1, v2, v4

    #@10
    if-eqz v1, :cond_1a

    #@12
    const-string v1, "DriveId"

    #@14
    const-string v2, "Attempt to compare invalid DriveId detected. Has local storage been cleared?"

    #@16
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    goto :goto_7

    #@1a
    :cond_1a
    iget-wide v2, p1, Lcom/google/android/gms/drive/DriveId;->HO:J

    #@1c
    cmp-long v1, v2, v6

    #@1e
    if-nez v1, :cond_2f

    #@20
    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->HO:J

    #@22
    cmp-long v1, v2, v6

    #@24
    if-nez v1, :cond_2f

    #@26
    iget-object v0, p1, Lcom/google/android/gms/drive/DriveId;->HN:Ljava/lang/String;

    #@28
    iget-object v1, p0, Lcom/google/android/gms/drive/DriveId;->HN:Ljava/lang/String;

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    goto :goto_7

    #@2f
    :cond_2f
    iget-wide v2, p1, Lcom/google/android/gms/drive/DriveId;->HO:J

    #@31
    iget-wide v4, p0, Lcom/google/android/gms/drive/DriveId;->HO:J

    #@33
    cmp-long v1, v2, v4

    #@35
    if-nez v1, :cond_7

    #@37
    const/4 v0, 0x1

    #@38
    goto :goto_7
.end method

.method public getResourceId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->HN:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method final gk()[B
    .registers 5

    #@0
    new-instance v1, Lcom/google/android/gms/drive/internal/af;

    #@2
    invoke-direct {v1}, Lcom/google/android/gms/drive/internal/af;-><init>()V

    #@5
    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->xM:I

    #@7
    iput v0, v1, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    #@9
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->HN:Ljava/lang/String;

    #@b
    if-nez v0, :cond_1e

    #@d
    const-string v0, ""

    #@f
    :goto_f
    iput-object v0, v1, Lcom/google/android/gms/drive/internal/af;->Jt:Ljava/lang/String;

    #@11
    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->HO:J

    #@13
    iput-wide v2, v1, Lcom/google/android/gms/drive/internal/af;->Ju:J

    #@15
    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->HP:J

    #@17
    iput-wide v2, v1, Lcom/google/android/gms/drive/internal/af;->Jv:J

    #@19
    invoke-static {v1}, Lcom/google/android/gms/internal/me;->d(Lcom/google/android/gms/internal/me;)[B

    #@1c
    move-result-object v0

    #@1d
    return-object v0

    #@1e
    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->HN:Ljava/lang/String;

    #@20
    goto :goto_f
.end method

.method public hashCode()I
    .registers 5

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->HO:J

    #@2
    const-wide/16 v2, -0x1

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_f

    #@8
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->HN:Ljava/lang/String;

    #@a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@d
    move-result v0

    #@e
    :goto_e
    return v0

    #@f
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->HP:J

    #@16
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->HO:J

    #@20
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@2f
    move-result v0

    #@30
    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->encodeToString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/c;->a(Lcom/google/android/gms/drive/DriveId;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
