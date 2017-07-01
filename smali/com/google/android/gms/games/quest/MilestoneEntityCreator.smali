.class public Lcom/google/android/gms/games/quest/MilestoneEntityCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/quest/MilestoneEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_DESCRIPTION:I


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static a(Lcom/google/android/gms/games/quest/MilestoneEntity;Landroid/os/Parcel;I)V
    .registers 8

    #@0
    const/4 v4, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@4
    move-result v0

    #@5
    const/4 v1, 0x1

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->getMilestoneId()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@d
    const/16 v1, 0x3e8

    #@f
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->getVersionCode()I

    #@12
    move-result v2

    #@13
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@16
    const/4 v1, 0x2

    #@17
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->getCurrentProgress()J

    #@1a
    move-result-wide v2

    #@1b
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@1e
    const/4 v1, 0x3

    #@1f
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->getTargetProgress()J

    #@22
    move-result-wide v2

    #@23
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    #@26
    const/4 v1, 0x4

    #@27
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->getCompletionRewardData()[B

    #@2a
    move-result-object v2

    #@2b
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[BZ)V

    #@2e
    const/4 v1, 0x5

    #@2f
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->getState()I

    #@32
    move-result v2

    #@33
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@36
    const/4 v1, 0x6

    #@37
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->getEventId()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@3e
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@41
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/quest/MilestoneEntity;
    .registers 14

    #@0
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v3, 0x0

    #@4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@7
    move-result v0

    #@8
    move-object v8, v3

    #@9
    move-object v10, v3

    #@a
    move-wide v6, v4

    #@b
    move v9, v2

    #@c
    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@f
    move-result v1

    #@10
    if-ge v1, v0, :cond_44

    #@12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@15
    move-result v1

    #@16
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@19
    move-result v11

    #@1a
    sparse-switch v11, :sswitch_data_6a

    #@1d
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@20
    goto :goto_c

    #@21
    :sswitch_21
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    goto :goto_c

    #@26
    :sswitch_26
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@29
    move-result v2

    #@2a
    goto :goto_c

    #@2b
    :sswitch_2b
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@2e
    move-result-wide v4

    #@2f
    goto :goto_c

    #@30
    :sswitch_30
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@33
    move-result-wide v6

    #@34
    goto :goto_c

    #@35
    :sswitch_35
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->r(Landroid/os/Parcel;I)[B

    #@38
    move-result-object v8

    #@39
    goto :goto_c

    #@3a
    :sswitch_3a
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@3d
    move-result v9

    #@3e
    goto :goto_c

    #@3f
    :sswitch_3f
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@42
    move-result-object v10

    #@43
    goto :goto_c

    #@44
    :cond_44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@47
    move-result v1

    #@48
    if-eq v1, v0, :cond_63

    #@4a
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@4c
    new-instance v2, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string v3, "Overread allowed size end="

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@62
    throw v1

    #@63
    :cond_63
    new-instance v1, Lcom/google/android/gms/games/quest/MilestoneEntity;

    #@65
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/games/quest/MilestoneEntity;-><init>(ILjava/lang/String;JJ[BILjava/lang/String;)V

    #@68
    return-object v1

    #@69
    nop

    #@6a
    :sswitch_data_6a
    .sparse-switch
        0x1 -> :sswitch_21
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_30
        0x4 -> :sswitch_35
        0x5 -> :sswitch_3a
        0x6 -> :sswitch_3f
        0x3e8 -> :sswitch_26
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/quest/MilestoneEntityCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/quest/MilestoneEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/games/quest/MilestoneEntity;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/games/quest/MilestoneEntity;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/quest/MilestoneEntityCreator;->newArray(I)[Lcom/google/android/gms/games/quest/MilestoneEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
