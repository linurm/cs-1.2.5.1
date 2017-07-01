.class public Lcom/google/android/gms/wearable/DataMap;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "DataMap"


# instance fields
.field private final alk:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@a
    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    #@0
    instance-of v0, p2, Ljava/lang/String;

    #@2
    if-eqz v0, :cond_a

    #@4
    check-cast p2, Ljava/lang/String;

    #@6
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    :cond_9
    :goto_9
    return-void

    #@a
    :cond_a
    instance-of v0, p2, Ljava/lang/Integer;

    #@c
    if-eqz v0, :cond_18

    #@e
    check-cast p2, Ljava/lang/Integer;

    #@10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@13
    move-result v0

    #@14
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@17
    goto :goto_9

    #@18
    :cond_18
    instance-of v0, p2, Ljava/lang/Long;

    #@1a
    if-eqz v0, :cond_26

    #@1c
    check-cast p2, Ljava/lang/Long;

    #@1e
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    #@21
    move-result-wide v0

    #@22
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@25
    goto :goto_9

    #@26
    :cond_26
    instance-of v0, p2, Ljava/lang/Double;

    #@28
    if-eqz v0, :cond_34

    #@2a
    check-cast p2, Ljava/lang/Double;

    #@2c
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    #@2f
    move-result-wide v0

    #@30
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    #@33
    goto :goto_9

    #@34
    :cond_34
    instance-of v0, p2, Ljava/lang/Float;

    #@36
    if-eqz v0, :cond_42

    #@38
    check-cast p2, Ljava/lang/Float;

    #@3a
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    #@3d
    move-result v0

    #@3e
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@41
    goto :goto_9

    #@42
    :cond_42
    instance-of v0, p2, Ljava/lang/Boolean;

    #@44
    if-eqz v0, :cond_50

    #@46
    check-cast p2, Ljava/lang/Boolean;

    #@48
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@4b
    move-result v0

    #@4c
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@4f
    goto :goto_9

    #@50
    :cond_50
    instance-of v0, p2, Ljava/lang/Byte;

    #@52
    if-eqz v0, :cond_5e

    #@54
    check-cast p2, Ljava/lang/Byte;

    #@56
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    #@59
    move-result v0

    #@5a
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    #@5d
    goto :goto_9

    #@5e
    :cond_5e
    instance-of v0, p2, [B

    #@60
    if-eqz v0, :cond_68

    #@62
    check-cast p2, [B

    #@64
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    #@67
    goto :goto_9

    #@68
    :cond_68
    instance-of v0, p2, [Ljava/lang/String;

    #@6a
    if-eqz v0, :cond_72

    #@6c
    check-cast p2, [Ljava/lang/String;

    #@6e
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@71
    goto :goto_9

    #@72
    :cond_72
    instance-of v0, p2, [J

    #@74
    if-eqz v0, :cond_7c

    #@76
    check-cast p2, [J

    #@78
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    #@7b
    goto :goto_9

    #@7c
    :cond_7c
    instance-of v0, p2, [F

    #@7e
    if-eqz v0, :cond_86

    #@80
    check-cast p2, [F

    #@82
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    #@85
    goto :goto_9

    #@86
    :cond_86
    instance-of v0, p2, Lcom/google/android/gms/wearable/Asset;

    #@88
    if-eqz v0, :cond_91

    #@8a
    check-cast p2, Lcom/google/android/gms/wearable/Asset;

    #@8c
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@8f
    goto/16 :goto_9

    #@91
    :cond_91
    instance-of v0, p2, Lcom/google/android/gms/wearable/DataMap;

    #@93
    if-eqz v0, :cond_a0

    #@95
    check-cast p2, Lcom/google/android/gms/wearable/DataMap;

    #@97
    invoke-virtual {p2}, Lcom/google/android/gms/wearable/DataMap;->toBundle()Landroid/os/Bundle;

    #@9a
    move-result-object v0

    #@9b
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@9e
    goto/16 :goto_9

    #@a0
    :cond_a0
    instance-of v0, p2, Ljava/util/ArrayList;

    #@a2
    if-eqz v0, :cond_9

    #@a4
    move-object v0, p2

    #@a5
    check-cast v0, Ljava/util/ArrayList;

    #@a7
    invoke-static {v0}, Lcom/google/android/gms/wearable/DataMap;->c(Ljava/util/ArrayList;)I

    #@aa
    move-result v0

    #@ab
    packed-switch v0, :pswitch_data_f0

    #@ae
    goto/16 :goto_9

    #@b0
    :pswitch_b0
    check-cast p2, Ljava/util/ArrayList;

    #@b2
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@b5
    goto/16 :goto_9

    #@b7
    :pswitch_b7
    check-cast p2, Ljava/util/ArrayList;

    #@b9
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@bc
    goto/16 :goto_9

    #@be
    :pswitch_be
    check-cast p2, Ljava/util/ArrayList;

    #@c0
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@c3
    goto/16 :goto_9

    #@c5
    :pswitch_c5
    check-cast p2, Ljava/util/ArrayList;

    #@c7
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@ca
    goto/16 :goto_9

    #@cc
    :pswitch_cc
    new-instance v1, Ljava/util/ArrayList;

    #@ce
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@d1
    check-cast p2, Ljava/util/ArrayList;

    #@d3
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@d6
    move-result-object v2

    #@d7
    :goto_d7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@da
    move-result v0

    #@db
    if-eqz v0, :cond_eb

    #@dd
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e0
    move-result-object v0

    #@e1
    check-cast v0, Lcom/google/android/gms/wearable/DataMap;

    #@e3
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/DataMap;->toBundle()Landroid/os/Bundle;

    #@e6
    move-result-object v0

    #@e7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ea
    goto :goto_d7

    #@eb
    :cond_eb
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@ee
    goto/16 :goto_9

    #@f0
    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_b0
        :pswitch_b7
        :pswitch_c5
        :pswitch_be
        :pswitch_cc
    .end packed-switch
.end method

.method private static a(Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    #@0
    instance-of v0, p2, Ljava/lang/String;

    #@2
    if-eqz v0, :cond_a

    #@4
    check-cast p2, Ljava/lang/String;

    #@6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    :cond_9
    :goto_9
    return-void

    #@a
    :cond_a
    instance-of v0, p2, Ljava/lang/Integer;

    #@c
    if-eqz v0, :cond_18

    #@e
    check-cast p2, Ljava/lang/Integer;

    #@10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@13
    move-result v0

    #@14
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    #@17
    goto :goto_9

    #@18
    :cond_18
    instance-of v0, p2, Ljava/lang/Long;

    #@1a
    if-eqz v0, :cond_26

    #@1c
    check-cast p2, Ljava/lang/Long;

    #@1e
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    #@21
    move-result-wide v0

    #@22
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->putLong(Ljava/lang/String;J)V

    #@25
    goto :goto_9

    #@26
    :cond_26
    instance-of v0, p2, Ljava/lang/Double;

    #@28
    if-eqz v0, :cond_34

    #@2a
    check-cast p2, Ljava/lang/Double;

    #@2c
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    #@2f
    move-result-wide v0

    #@30
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->putDouble(Ljava/lang/String;D)V

    #@33
    goto :goto_9

    #@34
    :cond_34
    instance-of v0, p2, Ljava/lang/Float;

    #@36
    if-eqz v0, :cond_42

    #@38
    check-cast p2, Ljava/lang/Float;

    #@3a
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    #@3d
    move-result v0

    #@3e
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/DataMap;->putFloat(Ljava/lang/String;F)V

    #@41
    goto :goto_9

    #@42
    :cond_42
    instance-of v0, p2, Ljava/lang/Boolean;

    #@44
    if-eqz v0, :cond_50

    #@46
    check-cast p2, Ljava/lang/Boolean;

    #@48
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@4b
    move-result v0

    #@4c
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/DataMap;->putBoolean(Ljava/lang/String;Z)V

    #@4f
    goto :goto_9

    #@50
    :cond_50
    instance-of v0, p2, Ljava/lang/Byte;

    #@52
    if-eqz v0, :cond_5e

    #@54
    check-cast p2, Ljava/lang/Byte;

    #@56
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    #@59
    move-result v0

    #@5a
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/DataMap;->putByte(Ljava/lang/String;B)V

    #@5d
    goto :goto_9

    #@5e
    :cond_5e
    instance-of v0, p2, [B

    #@60
    if-eqz v0, :cond_68

    #@62
    check-cast p2, [B

    #@64
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/DataMap;->putByteArray(Ljava/lang/String;[B)V

    #@67
    goto :goto_9

    #@68
    :cond_68
    instance-of v0, p2, [Ljava/lang/String;

    #@6a
    if-eqz v0, :cond_72

    #@6c
    check-cast p2, [Ljava/lang/String;

    #@6e
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/DataMap;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@71
    goto :goto_9

    #@72
    :cond_72
    instance-of v0, p2, [J

    #@74
    if-eqz v0, :cond_7c

    #@76
    check-cast p2, [J

    #@78
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/DataMap;->putLongArray(Ljava/lang/String;[J)V

    #@7b
    goto :goto_9

    #@7c
    :cond_7c
    instance-of v0, p2, [F

    #@7e
    if-eqz v0, :cond_86

    #@80
    check-cast p2, [F

    #@82
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/DataMap;->putFloatArray(Ljava/lang/String;[F)V

    #@85
    goto :goto_9

    #@86
    :cond_86
    instance-of v0, p2, Lcom/google/android/gms/wearable/Asset;

    #@88
    if-eqz v0, :cond_91

    #@8a
    check-cast p2, Lcom/google/android/gms/wearable/Asset;

    #@8c
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/DataMap;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V

    #@8f
    goto/16 :goto_9

    #@91
    :cond_91
    instance-of v0, p2, Landroid/os/Bundle;

    #@93
    if-eqz v0, :cond_a0

    #@95
    check-cast p2, Landroid/os/Bundle;

    #@97
    invoke-static {p2}, Lcom/google/android/gms/wearable/DataMap;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/wearable/DataMap;

    #@9a
    move-result-object v0

    #@9b
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/DataMap;->putDataMap(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;)V

    #@9e
    goto/16 :goto_9

    #@a0
    :cond_a0
    instance-of v0, p2, Ljava/util/ArrayList;

    #@a2
    if-eqz v0, :cond_9

    #@a4
    move-object v0, p2

    #@a5
    check-cast v0, Ljava/util/ArrayList;

    #@a7
    invoke-static {v0}, Lcom/google/android/gms/wearable/DataMap;->c(Ljava/util/ArrayList;)I

    #@aa
    move-result v0

    #@ab
    packed-switch v0, :pswitch_data_d8

    #@ae
    :pswitch_ae
    goto/16 :goto_9

    #@b0
    :pswitch_b0
    check-cast p2, Ljava/util/ArrayList;

    #@b2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/DataMap;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@b5
    goto/16 :goto_9

    #@b7
    :pswitch_b7
    check-cast p2, Ljava/util/ArrayList;

    #@b9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/DataMap;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@bc
    goto/16 :goto_9

    #@be
    :pswitch_be
    check-cast p2, Ljava/util/ArrayList;

    #@c0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/DataMap;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@c3
    goto/16 :goto_9

    #@c5
    :pswitch_c5
    check-cast p2, Ljava/util/ArrayList;

    #@c7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/wearable/DataMap;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@ca
    goto/16 :goto_9

    #@cc
    :pswitch_cc
    check-cast p2, Ljava/util/ArrayList;

    #@ce
    invoke-static {p2}, Lcom/google/android/gms/wearable/DataMap;->arrayListFromBundleArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    #@d1
    move-result-object v0

    #@d2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/DataMap;->putDataMapArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@d5
    goto/16 :goto_9

    #@d7
    nop

    #@d8
    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_b0
        :pswitch_b7
        :pswitch_c5
        :pswitch_be
        :pswitch_ae
        :pswitch_cc
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V
    .registers 11

    #@0
    const-string v4, "<null>"

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v3, p3

    #@6
    move-object v5, p4

    #@7
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/DataMap;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    #@a
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V
    .registers 8

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "Key "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    const-string v1, " expected "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    const-string v1, " but value was a "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    const-string v1, ".  The default value "

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    const-string v1, " was returned."

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    const-string v1, "DataMap"

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    const-string v0, "DataMap"

    #@3d
    const-string v1, "Attempt to cast generated internal exception:"

    #@3f
    invoke-static {v0, v1, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@42
    return-void
.end method

.method private static a(Lcom/google/android/gms/wearable/Asset;Lcom/google/android/gms/wearable/Asset;)Z
    .registers 4

    #@0
    if-eqz p0, :cond_4

    #@2
    if-nez p1, :cond_a

    #@4
    :cond_4
    if-ne p0, p1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7

    #@a
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/Asset;->getDigest()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_21

    #@14
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/Asset;->getDigest()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/Asset;->getDigest()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v0

    #@20
    goto :goto_7

    #@21
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/Asset;->getData()[B

    #@24
    move-result-object v0

    #@25
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/Asset;->getData()[B

    #@28
    move-result-object v1

    #@29
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@2c
    move-result v0

    #@2d
    goto :goto_7
.end method

.method private static a(Lcom/google/android/gms/wearable/DataMap;Lcom/google/android/gms/wearable/DataMap;)Z
    .registers 8

    #@0
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/DataMap;->size()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataMap;->size()I

    #@9
    move-result v1

    #@a
    if-eq v0, v1, :cond_e

    #@c
    move v0, v3

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/DataMap;->keySet()Ljava/util/Set;

    #@11
    move-result-object v0

    #@12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v5

    #@16
    :cond_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_a6

    #@1c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/lang/String;

    #@22
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/DataMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/DataMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    instance-of v0, v1, Lcom/google/android/gms/wearable/Asset;

    #@2c
    if-eqz v0, :cond_40

    #@2e
    instance-of v0, v2, Lcom/google/android/gms/wearable/Asset;

    #@30
    if-eqz v0, :cond_a9

    #@32
    move-object v0, v1

    #@33
    check-cast v0, Lcom/google/android/gms/wearable/Asset;

    #@35
    move-object v1, v2

    #@36
    check-cast v1, Lcom/google/android/gms/wearable/Asset;

    #@38
    invoke-static {v0, v1}, Lcom/google/android/gms/wearable/DataMap;->a(Lcom/google/android/gms/wearable/Asset;Lcom/google/android/gms/wearable/Asset;)Z

    #@3b
    move-result v0

    #@3c
    if-nez v0, :cond_16

    #@3e
    move v0, v3

    #@3f
    goto :goto_d

    #@40
    :cond_40
    instance-of v0, v1, [Ljava/lang/String;

    #@42
    if-eqz v0, :cond_54

    #@44
    instance-of v0, v2, [Ljava/lang/String;

    #@46
    if-eqz v0, :cond_a9

    #@48
    check-cast v1, [Ljava/lang/String;

    #@4a
    check-cast v2, [Ljava/lang/String;

    #@4c
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@4f
    move-result v0

    #@50
    if-nez v0, :cond_16

    #@52
    move v0, v3

    #@53
    goto :goto_d

    #@54
    :cond_54
    instance-of v0, v1, [J

    #@56
    if-eqz v0, :cond_68

    #@58
    instance-of v0, v2, [J

    #@5a
    if-eqz v0, :cond_a9

    #@5c
    check-cast v1, [J

    #@5e
    check-cast v2, [J

    #@60
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    #@63
    move-result v0

    #@64
    if-nez v0, :cond_16

    #@66
    move v0, v3

    #@67
    goto :goto_d

    #@68
    :cond_68
    instance-of v0, v1, [F

    #@6a
    if-eqz v0, :cond_7c

    #@6c
    instance-of v0, v2, [F

    #@6e
    if-eqz v0, :cond_a9

    #@70
    check-cast v1, [F

    #@72
    check-cast v2, [F

    #@74
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    #@77
    move-result v0

    #@78
    if-nez v0, :cond_16

    #@7a
    move v0, v3

    #@7b
    goto :goto_d

    #@7c
    :cond_7c
    instance-of v0, v1, [B

    #@7e
    if-eqz v0, :cond_91

    #@80
    instance-of v0, v2, [B

    #@82
    if-eqz v0, :cond_a9

    #@84
    check-cast v1, [B

    #@86
    check-cast v2, [B

    #@88
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@8b
    move-result v0

    #@8c
    if-nez v0, :cond_16

    #@8e
    move v0, v3

    #@8f
    goto/16 :goto_d

    #@91
    :cond_91
    if-eqz v1, :cond_95

    #@93
    if-nez v2, :cond_9d

    #@95
    :cond_95
    if-ne v1, v2, :cond_9a

    #@97
    move v0, v4

    #@98
    goto/16 :goto_d

    #@9a
    :cond_9a
    move v0, v3

    #@9b
    goto/16 :goto_d

    #@9d
    :cond_9d
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@a0
    move-result v0

    #@a1
    if-nez v0, :cond_16

    #@a3
    move v0, v3

    #@a4
    goto/16 :goto_d

    #@a6
    :cond_a6
    move v0, v4

    #@a7
    goto/16 :goto_d

    #@a9
    :cond_a9
    move v0, v3

    #@aa
    goto/16 :goto_d
.end method

.method public static arrayListFromBundleArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wearable/DataMap;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1d

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/os/Bundle;

    #@15
    invoke-static {v0}, Lcom/google/android/gms/wearable/DataMap;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/wearable/DataMap;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    goto :goto_9

    #@1d
    :cond_1d
    return-object v1
.end method

.method private static c(Ljava/util/ArrayList;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)I"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v0

    #@c
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_30

    #@12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    if-eqz v1, :cond_c

    #@18
    instance-of v2, v1, Ljava/lang/Integer;

    #@1a
    if-eqz v2, :cond_1e

    #@1c
    const/4 v0, 0x2

    #@1d
    goto :goto_7

    #@1e
    :cond_1e
    instance-of v2, v1, Ljava/lang/String;

    #@20
    if-eqz v2, :cond_24

    #@22
    const/4 v0, 0x3

    #@23
    goto :goto_7

    #@24
    :cond_24
    instance-of v2, v1, Lcom/google/android/gms/wearable/DataMap;

    #@26
    if-eqz v2, :cond_2a

    #@28
    const/4 v0, 0x4

    #@29
    goto :goto_7

    #@2a
    :cond_2a
    instance-of v1, v1, Landroid/os/Bundle;

    #@2c
    if-eqz v1, :cond_c

    #@2e
    const/4 v0, 0x5

    #@2f
    goto :goto_7

    #@30
    :cond_30
    const/4 v0, 0x1

    #@31
    goto :goto_7
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/wearable/DataMap;
    .registers 5

    #@0
    const-class v0, Lcom/google/android/gms/wearable/Asset;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@9
    new-instance v1, Lcom/google/android/gms/wearable/DataMap;

    #@b
    invoke-direct {v1}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    #@e
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@11
    move-result-object v0

    #@12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v2

    #@16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_2a

    #@1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/lang/String;

    #@22
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    invoke-static {v1, v0, v3}, Lcom/google/android/gms/wearable/DataMap;->a(Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Ljava/lang/Object;)V

    #@29
    goto :goto_16

    #@2a
    :cond_2a
    return-object v1
.end method

.method public static fromByteArray([B)Lcom/google/android/gms/wearable/DataMap;
    .registers 4

    #@0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/lv$a;

    #@2
    invoke-static {p0}, Lcom/google/android/gms/internal/lw;->n([B)Lcom/google/android/gms/internal/lw;

    #@5
    move-result-object v1

    #@6
    new-instance v2, Ljava/util/ArrayList;

    #@8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@b
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/lv$a;-><init>(Lcom/google/android/gms/internal/lw;Ljava/util/List;)V

    #@e
    invoke-static {v0}, Lcom/google/android/gms/internal/lv;->a(Lcom/google/android/gms/internal/lv$a;)Lcom/google/android/gms/wearable/DataMap;
    :try_end_11
    .catch Lcom/google/android/gms/internal/md; {:try_start_0 .. :try_end_11} :catch_13

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    :catch_13
    move-exception v0

    #@14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@16
    const-string v2, "Unable to convert data"

    #@18
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1b
    throw v1
.end method


# virtual methods
.method public clear()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    instance-of v0, p1, Lcom/google/android/gms/wearable/DataMap;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    check-cast p1, Lcom/google/android/gms/wearable/DataMap;

    #@8
    invoke-static {p0, p1}, Lcom/google/android/gms/wearable/DataMap;->a(Lcom/google/android/gms/wearable/DataMap;Lcom/google/android/gms/wearable/DataMap;)Z

    #@b
    move-result v0

    #@c
    goto :goto_5
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAsset(Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_b

    #@9
    move-object v0, v1

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    :try_start_b
    check-cast v0, Lcom/google/android/gms/wearable/Asset;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_e

    #@d
    goto :goto_a

    #@e
    :catch_e
    move-exception v2

    #@f
    const-string v3, "Asset"

    #@11
    invoke-direct {p0, p1, v0, v3, v2}, Lcom/google/android/gms/wearable/DataMap;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@14
    move-object v0, v1

    #@15
    goto :goto_a
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/DataMap;->getBoolean(Ljava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 10

    #@0
    iget-object v1, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    if-nez v3, :cond_9

    #@8
    :goto_8
    return p2

    #@9
    :cond_9
    :try_start_9
    move-object v0, v3

    #@a
    check-cast v0, Ljava/lang/Boolean;

    #@c
    move-object v1, v0

    #@d
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_10} :catch_12

    #@10
    move-result p2

    #@11
    goto :goto_8

    #@12
    :catch_12
    move-exception v6

    #@13
    const-string v4, "Boolean"

    #@15
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@18
    move-result-object v5

    #@19
    move-object v1, p0

    #@1a
    move-object v2, p1

    #@1b
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/wearable/DataMap;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    #@1e
    goto :goto_8
.end method

.method public getByte(Ljava/lang/String;)B
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/DataMap;->getByte(Ljava/lang/String;B)B

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getByte(Ljava/lang/String;B)B
    .registers 10

    #@0
    iget-object v1, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    if-nez v3, :cond_9

    #@8
    :goto_8
    return p2

    #@9
    :cond_9
    :try_start_9
    move-object v0, v3

    #@a
    check-cast v0, Ljava/lang/Byte;

    #@c
    move-object v1, v0

    #@d
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_10} :catch_12

    #@10
    move-result p2

    #@11
    goto :goto_8

    #@12
    :catch_12
    move-exception v6

    #@13
    const-string v4, "Byte"

    #@15
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@18
    move-result-object v5

    #@19
    move-object v1, p0

    #@1a
    move-object v2, p1

    #@1b
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/wearable/DataMap;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    #@1e
    goto :goto_8
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_b

    #@9
    move-object v0, v1

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    :try_start_b
    check-cast v0, [B
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_e

    #@d
    goto :goto_a

    #@e
    :catch_e
    move-exception v2

    #@f
    const-string v3, "byte[]"

    #@11
    invoke-direct {p0, p1, v0, v3, v2}, Lcom/google/android/gms/wearable/DataMap;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@14
    move-object v0, v1

    #@15
    goto :goto_a
.end method

.method public getDataMap(Ljava/lang/String;)Lcom/google/android/gms/wearable/DataMap;
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_b

    #@9
    move-object v0, v1

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    :try_start_b
    check-cast v0, Lcom/google/android/gms/wearable/DataMap;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_e

    #@d
    goto :goto_a

    #@e
    :catch_e
    move-exception v2

    #@f
    const-string v3, "DataMap"

    #@11
    invoke-direct {p0, p1, v0, v3, v2}, Lcom/google/android/gms/wearable/DataMap;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@14
    move-object v0, v1

    #@15
    goto :goto_a
.end method

.method public getDataMapArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wearable/DataMap;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_b

    #@9
    move-object v0, v1

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    :try_start_b
    check-cast v0, Ljava/util/ArrayList;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_e

    #@d
    goto :goto_a

    #@e
    :catch_e
    move-exception v2

    #@f
    const-string v3, "ArrayList<DataMap>"

    #@11
    invoke-direct {p0, p1, v0, v3, v2}, Lcom/google/android/gms/wearable/DataMap;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@14
    move-object v0, v1

    #@15
    goto :goto_a
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 4

    #@0
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->getDouble(Ljava/lang/String;D)D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 12

    #@0
    iget-object v1, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    if-nez v3, :cond_9

    #@8
    :goto_8
    return-wide p2

    #@9
    :cond_9
    :try_start_9
    move-object v0, v3

    #@a
    check-cast v0, Ljava/lang/Double;

    #@c
    move-object v1, v0

    #@d
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_10} :catch_12

    #@10
    move-result-wide p2

    #@11
    goto :goto_8

    #@12
    :catch_12
    move-exception v6

    #@13
    const-string v4, "Double"

    #@15
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@18
    move-result-object v5

    #@19
    move-object v1, p0

    #@1a
    move-object v2, p1

    #@1b
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/wearable/DataMap;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    #@1e
    goto :goto_8
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/DataMap;->getFloat(Ljava/lang/String;F)F

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 10

    #@0
    iget-object v1, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    if-nez v3, :cond_9

    #@8
    :goto_8
    return p2

    #@9
    :cond_9
    :try_start_9
    move-object v0, v3

    #@a
    check-cast v0, Ljava/lang/Float;

    #@c
    move-object v1, v0

    #@d
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_10} :catch_12

    #@10
    move-result p2

    #@11
    goto :goto_8

    #@12
    :catch_12
    move-exception v6

    #@13
    const-string v4, "Float"

    #@15
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@18
    move-result-object v5

    #@19
    move-object v1, p0

    #@1a
    move-object v2, p1

    #@1b
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/wearable/DataMap;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    #@1e
    goto :goto_8
.end method

.method public getFloatArray(Ljava/lang/String;)[F
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_b

    #@9
    move-object v0, v1

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    :try_start_b
    check-cast v0, [F
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_e

    #@d
    goto :goto_a

    #@e
    :catch_e
    move-exception v2

    #@f
    const-string v3, "float[]"

    #@11
    invoke-direct {p0, p1, v0, v3, v2}, Lcom/google/android/gms/wearable/DataMap;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@14
    move-object v0, v1

    #@15
    goto :goto_a
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/DataMap;->getInt(Ljava/lang/String;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 7

    #@0
    iget-object v1, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    if-nez v2, :cond_9

    #@8
    :goto_8
    return p2

    #@9
    :cond_9
    :try_start_9
    move-object v0, v2

    #@a
    check-cast v0, Ljava/lang/Integer;

    #@c
    move-object v1, v0

    #@d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_10} :catch_12

    #@10
    move-result p2

    #@11
    goto :goto_8

    #@12
    :catch_12
    move-exception v1

    #@13
    const-string v3, "Integer"

    #@15
    invoke-direct {p0, p1, v2, v3, v1}, Lcom/google/android/gms/wearable/DataMap;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@18
    goto :goto_8
.end method

.method public getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_b

    #@9
    move-object v0, v1

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    :try_start_b
    check-cast v0, Ljava/util/ArrayList;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_e

    #@d
    goto :goto_a

    #@e
    :catch_e
    move-exception v2

    #@f
    const-string v3, "ArrayList<Integer>"

    #@11
    invoke-direct {p0, p1, v0, v3, v2}, Lcom/google/android/gms/wearable/DataMap;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@14
    move-object v0, v1

    #@15
    goto :goto_a
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 4

    #@0
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->getLong(Ljava/lang/String;J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 8

    #@0
    iget-object v1, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    if-nez v2, :cond_9

    #@8
    :goto_8
    return-wide p2

    #@9
    :cond_9
    :try_start_9
    move-object v0, v2

    #@a
    check-cast v0, Ljava/lang/Long;

    #@c
    move-object v1, v0

    #@d
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_10} :catch_12

    #@10
    move-result-wide p2

    #@11
    goto :goto_8

    #@12
    :catch_12
    move-exception v1

    #@13
    const-string v3, "long"

    #@15
    invoke-direct {p0, p1, v2, v3, v1}, Lcom/google/android/gms/wearable/DataMap;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@18
    goto :goto_8
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_b

    #@9
    move-object v0, v1

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    :try_start_b
    check-cast v0, [J
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_e

    #@d
    goto :goto_a

    #@e
    :catch_e
    move-exception v2

    #@f
    const-string v3, "long[]"

    #@11
    invoke-direct {p0, p1, v0, v3, v2}, Lcom/google/android/gms/wearable/DataMap;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@14
    move-object v0, v1

    #@15
    goto :goto_a
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_b

    #@9
    move-object v0, v1

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    :try_start_b
    check-cast v0, Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_e

    #@d
    goto :goto_a

    #@e
    :catch_e
    move-exception v2

    #@f
    const-string v3, "String"

    #@11
    invoke-direct {p0, p1, v0, v3, v2}, Lcom/google/android/gms/wearable/DataMap;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@14
    move-object v0, v1

    #@15
    goto :goto_a
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/DataMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_7

    #@6
    :goto_6
    return-object p2

    #@7
    :cond_7
    move-object p2, v0

    #@8
    goto :goto_6
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_b

    #@9
    move-object v0, v1

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    :try_start_b
    check-cast v0, [Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_e

    #@d
    goto :goto_a

    #@e
    :catch_e
    move-exception v2

    #@f
    const-string v3, "String[]"

    #@11
    invoke-direct {p0, p1, v0, v3, v2}, Lcom/google/android/gms/wearable/DataMap;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@14
    move-object v0, v1

    #@15
    goto :goto_a
.end method

.method public getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_b

    #@9
    move-object v0, v1

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    :try_start_b
    check-cast v0, Ljava/util/ArrayList;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_e

    #@d
    goto :goto_a

    #@e
    :catch_e
    move-exception v2

    #@f
    const-string v3, "ArrayList<String>"

    #@11
    invoke-direct {p0, p1, v0, v3, v2}, Lcom/google/android/gms/wearable/DataMap;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@14
    move-object v0, v1

    #@15
    goto :goto_a
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v0, v0, 0x1d

    #@8
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public putAll(Lcom/google/android/gms/wearable/DataMap;)V
    .registers 6

    #@0
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataMap;->keySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1e

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    iget-object v2, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@16
    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/DataMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    goto :goto_8

    #@1e
    :cond_1e
    return-void
.end method

.method public putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    return-void
.end method

.method public putByte(Ljava/lang/String;B)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method public putDataMap(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method public putDataMapArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wearable/DataMap;",
            ">;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    return-void
.end method

.method public putFloatArray(Ljava/lang/String;[F)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    return-void
.end method

.method public putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    return-void
.end method

.method public putLongArray(Ljava/lang/String;[J)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method public putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public size()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 5

    #@0
    new-instance v1, Landroid/os/Bundle;

    #@2
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@7
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_25

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/String;

    #@1b
    iget-object v3, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@1d
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    invoke-static {v1, v0, v3}, Lcom/google/android/gms/wearable/DataMap;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    #@24
    goto :goto_f

    #@25
    :cond_25
    return-object v1
.end method

.method public toByteArray()[B
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/lv;->a(Lcom/google/android/gms/wearable/DataMap;)Lcom/google/android/gms/internal/lv$a;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Lcom/google/android/gms/internal/lv$a;->amp:Lcom/google/android/gms/internal/lw;

    #@6
    invoke-static {v0}, Lcom/google/android/gms/internal/me;->d(Lcom/google/android/gms/internal/me;)[B

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->alk:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
