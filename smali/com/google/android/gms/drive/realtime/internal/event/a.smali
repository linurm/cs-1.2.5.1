.class public Lcom/google/android/gms/drive/realtime/internal/event/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;",
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

.method static a(Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;Landroid/os/Parcel;I)V
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
    iget v2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->xM:I

    #@8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    #@b
    const/4 v1, 0x2

    #@c
    iget-object v2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->rR:Ljava/lang/String;

    #@e
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@11
    const/4 v1, 0x3

    #@12
    iget-object v2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lm:Ljava/lang/String;

    #@14
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@17
    const/4 v1, 0x4

    #@18
    iget-boolean v2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Ls:Z

    #@1a
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    #@1d
    const/4 v1, 0x5

    #@1e
    iget-object v2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lq:Ljava/lang/String;

    #@20
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@23
    const/4 v1, 0x6

    #@24
    iget-object v2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lt:Ljava/lang/String;

    #@26
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    #@29
    const/4 v1, 0x7

    #@2a
    iget-object v2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lu:Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;

    #@2c
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@2f
    const/16 v1, 0x8

    #@31
    iget-object v2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lv:Lcom/google/android/gms/drive/realtime/internal/event/TextDeletedDetails;

    #@33
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@36
    const/16 v1, 0x9

    #@38
    iget-object v2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lw:Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;

    #@3a
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@3d
    const/16 v1, 0xa

    #@3f
    iget-object v2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lx:Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;

    #@41
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@44
    const/16 v1, 0xb

    #@46
    iget-object v2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Ly:Lcom/google/android/gms/drive/realtime/internal/event/ValuesSetDetails;

    #@48
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@4b
    const/16 v1, 0xc

    #@4d
    iget-object v2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lz:Lcom/google/android/gms/drive/realtime/internal/event/ValueChangedDetails;

    #@4f
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@52
    const/16 v1, 0xd

    #@54
    iget-object v2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->LA:Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;

    #@56
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    #@59
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@5c
    return-void
.end method


# virtual methods
.method public aT(Landroid/os/Parcel;)Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;
    .registers 19

    #@0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@3
    move-result v15

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v3, 0x0

    #@6
    const/4 v4, 0x0

    #@7
    const/4 v5, 0x0

    #@8
    const/4 v6, 0x0

    #@9
    const/4 v7, 0x0

    #@a
    const/4 v8, 0x0

    #@b
    const/4 v9, 0x0

    #@c
    const/4 v10, 0x0

    #@d
    const/4 v11, 0x0

    #@e
    const/4 v12, 0x0

    #@f
    const/4 v13, 0x0

    #@10
    const/4 v14, 0x0

    #@11
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@14
    move-result v1

    #@15
    if-ge v1, v15, :cond_a8

    #@17
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@1a
    move-result v1

    #@1b
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@1e
    move-result v16

    #@1f
    packed-switch v16, :pswitch_data_d0

    #@22
    move-object/from16 v0, p1

    #@24
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    #@27
    goto :goto_11

    #@28
    :pswitch_28
    move-object/from16 v0, p1

    #@2a
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@2d
    move-result v2

    #@2e
    goto :goto_11

    #@2f
    :pswitch_2f
    move-object/from16 v0, p1

    #@31
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    goto :goto_11

    #@36
    :pswitch_36
    move-object/from16 v0, p1

    #@38
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    goto :goto_11

    #@3d
    :pswitch_3d
    move-object/from16 v0, p1

    #@3f
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@42
    move-result v5

    #@43
    goto :goto_11

    #@44
    :pswitch_44
    move-object/from16 v0, p1

    #@46
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    goto :goto_11

    #@4b
    :pswitch_4b
    move-object/from16 v0, p1

    #@4d
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    goto :goto_11

    #@52
    :pswitch_52
    sget-object v8, Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    #@54
    move-object/from16 v0, p1

    #@56
    invoke-static {v0, v1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@59
    move-result-object v1

    #@5a
    check-cast v1, Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;

    #@5c
    move-object v8, v1

    #@5d
    goto :goto_11

    #@5e
    :pswitch_5e
    sget-object v9, Lcom/google/android/gms/drive/realtime/internal/event/TextDeletedDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    #@60
    move-object/from16 v0, p1

    #@62
    invoke-static {v0, v1, v9}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@65
    move-result-object v1

    #@66
    check-cast v1, Lcom/google/android/gms/drive/realtime/internal/event/TextDeletedDetails;

    #@68
    move-object v9, v1

    #@69
    goto :goto_11

    #@6a
    :pswitch_6a
    sget-object v10, Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6c
    move-object/from16 v0, p1

    #@6e
    invoke-static {v0, v1, v10}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@71
    move-result-object v1

    #@72
    check-cast v1, Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;

    #@74
    move-object v10, v1

    #@75
    goto :goto_11

    #@76
    :pswitch_76
    sget-object v11, Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    #@78
    move-object/from16 v0, p1

    #@7a
    invoke-static {v0, v1, v11}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@7d
    move-result-object v1

    #@7e
    check-cast v1, Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;

    #@80
    move-object v11, v1

    #@81
    goto :goto_11

    #@82
    :pswitch_82
    sget-object v12, Lcom/google/android/gms/drive/realtime/internal/event/ValuesSetDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    #@84
    move-object/from16 v0, p1

    #@86
    invoke-static {v0, v1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@89
    move-result-object v1

    #@8a
    check-cast v1, Lcom/google/android/gms/drive/realtime/internal/event/ValuesSetDetails;

    #@8c
    move-object v12, v1

    #@8d
    goto :goto_11

    #@8e
    :pswitch_8e
    sget-object v13, Lcom/google/android/gms/drive/realtime/internal/event/ValueChangedDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    #@90
    move-object/from16 v0, p1

    #@92
    invoke-static {v0, v1, v13}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@95
    move-result-object v1

    #@96
    check-cast v1, Lcom/google/android/gms/drive/realtime/internal/event/ValueChangedDetails;

    #@98
    move-object v13, v1

    #@99
    goto/16 :goto_11

    #@9b
    :pswitch_9b
    sget-object v14, Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9d
    move-object/from16 v0, p1

    #@9f
    invoke-static {v0, v1, v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    #@a2
    move-result-object v1

    #@a3
    check-cast v1, Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;

    #@a5
    move-object v14, v1

    #@a6
    goto/16 :goto_11

    #@a8
    :cond_a8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@ab
    move-result v1

    #@ac
    if-eq v1, v15, :cond_c9

    #@ae
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@b0
    new-instance v2, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string v3, "Overread allowed size end="

    #@b7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v2

    #@bb
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@be
    move-result-object v2

    #@bf
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v2

    #@c3
    move-object/from16 v0, p1

    #@c5
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@c8
    throw v1

    #@c9
    :cond_c9
    new-instance v1, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;

    #@cb
    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;-><init>(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;Lcom/google/android/gms/drive/realtime/internal/event/TextDeletedDetails;Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;Lcom/google/android/gms/drive/realtime/internal/event/ValuesSetDetails;Lcom/google/android/gms/drive/realtime/internal/event/ValueChangedDetails;Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;)V

    #@ce
    return-object v1

    #@cf
    nop

    #@d0
    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_28
        :pswitch_2f
        :pswitch_36
        :pswitch_3d
        :pswitch_44
        :pswitch_4b
        :pswitch_52
        :pswitch_5e
        :pswitch_6a
        :pswitch_76
        :pswitch_82
        :pswitch_8e
        :pswitch_9b
    .end packed-switch
.end method

.method public bQ(I)[Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/realtime/internal/event/a;->aT(Landroid/os/Parcel;)Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/realtime/internal/event/a;->bQ(I)[Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
