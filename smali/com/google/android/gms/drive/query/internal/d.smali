.class public Lcom/google/android/gms/drive/query/internal/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/drive/query/internal/FilterHolder;",
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

.method static a(Lcom/google/android/gms/drive/query/internal/FilterHolder;Landroid/os/Parcel;I)V
    .registers 7

    #@0
    const/4 v3, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@4
    move-result v0

    #@5
    const/4 v1, 0x1

    #@6
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KP:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    #@8
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@b
    const/16 v1, 0x3e8

    #@d
    iget v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->xM:I

    #@f
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@12
    const/4 v1, 0x2

    #@13
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KQ:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    #@15
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@18
    const/4 v1, 0x3

    #@19
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KR:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    #@1b
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@1e
    const/4 v1, 0x4

    #@1f
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KS:Lcom/google/android/gms/drive/query/internal/NotFilter;

    #@21
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@24
    const/4 v1, 0x5

    #@25
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KT:Lcom/google/android/gms/drive/query/internal/InFilter;

    #@27
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@2a
    const/4 v1, 0x6

    #@2b
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KU:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    #@2d
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@30
    const/4 v1, 0x7

    #@31
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KV:Lcom/google/android/gms/drive/query/internal/HasFilter;

    #@33
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@36
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@39
    return-void
.end method


# virtual methods
.method public aI(Landroid/os/Parcel;)Lcom/google/android/gms/drive/query/internal/FilterHolder;
    .registers 13

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@4
    move-result v9

    #@5
    const/4 v1, 0x0

    #@6
    move-object v3, v2

    #@7
    move-object v4, v2

    #@8
    move-object v5, v2

    #@9
    move-object v6, v2

    #@a
    move-object v7, v2

    #@b
    move-object v8, v2

    #@c
    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@f
    move-result v0

    #@10
    if-ge v0, v9, :cond_6c

    #@12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@15
    move-result v0

    #@16
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@19
    move-result v10

    #@1a
    sparse-switch v10, :sswitch_data_92

    #@1d
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@20
    goto :goto_c

    #@21
    :sswitch_21
    sget-object v2, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;->CREATOR:Lcom/google/android/gms/drive/query/internal/a;

    #@23
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    #@29
    move-object v2, v0

    #@2a
    goto :goto_c

    #@2b
    :sswitch_2b
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@2e
    move-result v1

    #@2f
    goto :goto_c

    #@30
    :sswitch_30
    sget-object v3, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@32
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    #@38
    move-object v3, v0

    #@39
    goto :goto_c

    #@3a
    :sswitch_3a
    sget-object v4, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3c
    invoke-static {p1, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    #@42
    move-object v4, v0

    #@43
    goto :goto_c

    #@44
    :sswitch_44
    sget-object v5, Lcom/google/android/gms/drive/query/internal/NotFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@46
    invoke-static {p1, v0, v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@49
    move-result-object v0

    #@4a
    check-cast v0, Lcom/google/android/gms/drive/query/internal/NotFilter;

    #@4c
    move-object v5, v0

    #@4d
    goto :goto_c

    #@4e
    :sswitch_4e
    sget-object v6, Lcom/google/android/gms/drive/query/internal/InFilter;->CREATOR:Lcom/google/android/gms/drive/query/internal/g;

    #@50
    invoke-static {p1, v0, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@53
    move-result-object v0

    #@54
    check-cast v0, Lcom/google/android/gms/drive/query/internal/InFilter;

    #@56
    move-object v6, v0

    #@57
    goto :goto_c

    #@58
    :sswitch_58
    sget-object v7, Lcom/google/android/gms/drive/query/internal/MatchAllFilter;->CREATOR:Lcom/google/android/gms/drive/query/internal/i;

    #@5a
    invoke-static {p1, v0, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@5d
    move-result-object v0

    #@5e
    check-cast v0, Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    #@60
    move-object v7, v0

    #@61
    goto :goto_c

    #@62
    :sswitch_62
    sget-object v8, Lcom/google/android/gms/drive/query/internal/HasFilter;->CREATOR:Lcom/google/android/gms/drive/query/internal/f;

    #@64
    invoke-static {p1, v0, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@67
    move-result-object v0

    #@68
    check-cast v0, Lcom/google/android/gms/drive/query/internal/HasFilter;

    #@6a
    move-object v8, v0

    #@6b
    goto :goto_c

    #@6c
    :cond_6c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@6f
    move-result v0

    #@70
    if-eq v0, v9, :cond_8b

    #@72
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@74
    new-instance v1, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string v2, "Overread allowed size end="

    #@7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v1

    #@87
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@8a
    throw v0

    #@8b
    :cond_8b
    new-instance v0, Lcom/google/android/gms/drive/query/internal/FilterHolder;

    #@8d
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(ILcom/google/android/gms/drive/query/internal/ComparisonFilter;Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;Lcom/google/android/gms/drive/query/internal/LogicalFilter;Lcom/google/android/gms/drive/query/internal/NotFilter;Lcom/google/android/gms/drive/query/internal/InFilter;Lcom/google/android/gms/drive/query/internal/MatchAllFilter;Lcom/google/android/gms/drive/query/internal/HasFilter;)V

    #@90
    return-object v0

    #@91
    nop

    #@92
    :sswitch_data_92
    .sparse-switch
        0x1 -> :sswitch_21
        0x2 -> :sswitch_30
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_44
        0x5 -> :sswitch_4e
        0x6 -> :sswitch_58
        0x7 -> :sswitch_62
        0x3e8 -> :sswitch_2b
    .end sparse-switch
.end method

.method public bE(I)[Lcom/google/android/gms/drive/query/internal/FilterHolder;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/drive/query/internal/FilterHolder;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/query/internal/d;->aI(Landroid/os/Parcel;)Lcom/google/android/gms/drive/query/internal/FilterHolder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/query/internal/d;->bE(I)[Lcom/google/android/gms/drive/query/internal/FilterHolder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
