.class public final Lcom/android/dx/dex/code/LocalList;
.super Lcom/android/dx/util/FixedSizeList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/code/LocalList$Disposition;,
        Lcom/android/dx/dex/code/LocalList$Entry;,
        Lcom/android/dx/dex/code/LocalList$MakeState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final EMPTY:Lcom/android/dx/dex/code/LocalList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/dex/code/LocalList;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/android/dx/dex/code/LocalList;-><init>(I)V

    #@6
    sput-object v0, Lcom/android/dx/dex/code/LocalList;->EMPTY:Lcom/android/dx/dex/code/LocalList;

    #@8
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    #@3
    return-void
.end method

.method private static debugVerify(Lcom/android/dx/dex/code/LocalList;)V
    .registers 6

    #@0
    :try_start_0
    invoke-static {p0}, Lcom/android/dx/dex/code/LocalList;->debugVerify0(Lcom/android/dx/dex/code/LocalList;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    #@3
    return-void

    #@4
    :catch_4
    move-exception v1

    #@5
    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalList;->size()I

    #@8
    move-result v2

    #@9
    const/4 v0, 0x0

    #@a
    :goto_a
    if-ge v0, v2, :cond_18

    #@c
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@e
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@15
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_a

    #@18
    :cond_18
    throw v1
.end method

.method private static debugVerify0(Lcom/android/dx/dex/code/LocalList;)V
    .registers 12

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalList;->size()I

    #@4
    move-result v4

    #@5
    const/high16 v0, 0x10000

    #@7
    new-array v5, v0, [Lcom/android/dx/dex/code/LocalList$Entry;

    #@9
    move v3, v1

    #@a
    :goto_a
    if-ge v3, v4, :cond_11a

    #@c
    invoke-virtual {p0, v3}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    #@f
    move-result-object v6

    #@10
    invoke-virtual {v6}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    #@13
    move-result v7

    #@14
    invoke-virtual {v6}, Lcom/android/dx/dex/code/LocalList$Entry;->isStart()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_5f

    #@1a
    aget-object v0, v5, v7

    #@1c
    if-eqz v0, :cond_59

    #@1e
    invoke-virtual {v6, v0}, Lcom/android/dx/dex/code/LocalList$Entry;->matches(Lcom/android/dx/dex/code/LocalList$Entry;)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_59

    #@24
    new-instance v1, Ljava/lang/RuntimeException;

    #@26
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string v3, "redundant start at "

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v6}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    #@34
    move-result v3

    #@35
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    const-string v3, ": got "

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    const-string v3, "; had "

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@58
    throw v1

    #@59
    :cond_59
    aput-object v6, v5, v7

    #@5b
    :goto_5b
    add-int/lit8 v0, v3, 0x1

    #@5d
    move v3, v0

    #@5e
    goto :goto_a

    #@5f
    :cond_5f
    aget-object v0, v5, v7

    #@61
    if-nez v0, :cond_84

    #@63
    new-instance v0, Ljava/lang/RuntimeException;

    #@65
    new-instance v1, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string v2, "redundant end at "

    #@6c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {v6}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    #@73
    move-result v2

    #@74
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@77
    move-result-object v2

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v1

    #@80
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@83
    throw v0

    #@84
    :cond_84
    invoke-virtual {v6}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    #@87
    move-result v8

    #@88
    add-int/lit8 v0, v3, 0x1

    #@8a
    move v2, v0

    #@8b
    move v0, v1

    #@8c
    :goto_8c
    if-ge v2, v4, :cond_98

    #@8e
    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    #@91
    move-result-object v9

    #@92
    invoke-virtual {v9}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    #@95
    move-result v10

    #@96
    if-eq v10, v8, :cond_bf

    #@98
    :cond_98
    if-nez v0, :cond_115

    #@9a
    invoke-virtual {v6}, Lcom/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/android/dx/dex/code/LocalList$Disposition;

    #@9d
    move-result-object v0

    #@9e
    sget-object v2, Lcom/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

    #@a0
    if-ne v0, v2, :cond_115

    #@a2
    new-instance v0, Ljava/lang/RuntimeException;

    #@a4
    new-instance v1, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string v2, "improper end replacement claim at "

    #@ab
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v1

    #@af
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@b2
    move-result-object v2

    #@b3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v1

    #@b7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v1

    #@bb
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@be
    throw v0

    #@bf
    :cond_bf
    invoke-virtual {v9}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegisterSpec()Lcom/android/dx/rop/code/RegisterSpec;

    #@c2
    move-result-object v10

    #@c3
    invoke-virtual {v10}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@c6
    move-result v10

    #@c7
    if-ne v10, v7, :cond_f5

    #@c9
    invoke-virtual {v9}, Lcom/android/dx/dex/code/LocalList$Entry;->isStart()Z

    #@cc
    move-result v0

    #@cd
    if-eqz v0, :cond_f8

    #@cf
    invoke-virtual {v6}, Lcom/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/android/dx/dex/code/LocalList$Disposition;

    #@d2
    move-result-object v0

    #@d3
    sget-object v9, Lcom/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

    #@d5
    if-eq v0, v9, :cond_f4

    #@d7
    new-instance v0, Ljava/lang/RuntimeException;

    #@d9
    new-instance v1, Ljava/lang/StringBuilder;

    #@db
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@de
    const-string v2, "improperly marked end at "

    #@e0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v1

    #@e4
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@e7
    move-result-object v2

    #@e8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v1

    #@ec
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ef
    move-result-object v1

    #@f0
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f3
    throw v0

    #@f4
    :cond_f4
    const/4 v0, 0x1

    #@f5
    :cond_f5
    add-int/lit8 v2, v2, 0x1

    #@f7
    goto :goto_8c

    #@f8
    :cond_f8
    new-instance v0, Ljava/lang/RuntimeException;

    #@fa
    new-instance v1, Ljava/lang/StringBuilder;

    #@fc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ff
    const-string v2, "redundant end at "

    #@101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v1

    #@105
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@108
    move-result-object v2

    #@109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v1

    #@10d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@110
    move-result-object v1

    #@111
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@114
    throw v0

    #@115
    :cond_115
    const/4 v0, 0x0

    #@116
    aput-object v0, v5, v7

    #@118
    goto/16 :goto_5b

    #@11a
    :cond_11a
    return-void
.end method

.method public static make(Lcom/android/dx/dex/code/DalvInsnList;)Lcom/android/dx/dex/code/LocalList;
    .registers 6

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->size()I

    #@3
    move-result v3

    #@4
    new-instance v4, Lcom/android/dx/dex/code/LocalList$MakeState;

    #@6
    invoke-direct {v4, v3}, Lcom/android/dx/dex/code/LocalList$MakeState;-><init>(I)V

    #@9
    const/4 v0, 0x0

    #@a
    move v2, v0

    #@b
    :goto_b
    if-ge v2, v3, :cond_4d

    #@d
    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/DalvInsnList;->get(I)Lcom/android/dx/dex/code/DalvInsn;

    #@10
    move-result-object v1

    #@11
    instance-of v0, v1, Lcom/android/dx/dex/code/LocalSnapshot;

    #@13
    if-eqz v0, :cond_27

    #@15
    move-object v0, v1

    #@16
    check-cast v0, Lcom/android/dx/dex/code/LocalSnapshot;

    #@18
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalSnapshot;->getLocals()Lcom/android/dx/rop/code/RegisterSpecSet;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v1}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    #@1f
    move-result v1

    #@20
    invoke-virtual {v4, v1, v0}, Lcom/android/dx/dex/code/LocalList$MakeState;->snapshot(ILcom/android/dx/rop/code/RegisterSpecSet;)V

    #@23
    :cond_23
    :goto_23
    add-int/lit8 v0, v2, 0x1

    #@25
    move v2, v0

    #@26
    goto :goto_b

    #@27
    :cond_27
    instance-of v0, v1, Lcom/android/dx/dex/code/LocalStart;

    #@29
    if-eqz v0, :cond_3a

    #@2b
    move-object v0, v1

    #@2c
    check-cast v0, Lcom/android/dx/dex/code/LocalStart;

    #@2e
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalStart;->getLocal()Lcom/android/dx/rop/code/RegisterSpec;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v1}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    #@35
    move-result v1

    #@36
    invoke-virtual {v4, v1, v0}, Lcom/android/dx/dex/code/LocalList$MakeState;->startLocal(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@39
    goto :goto_23

    #@3a
    :cond_3a
    instance-of v0, v1, Lcom/android/dx/dex/code/LocalEnd;

    #@3c
    if-eqz v0, :cond_23

    #@3e
    move-object v0, v1

    #@3f
    check-cast v0, Lcom/android/dx/dex/code/LocalEnd;

    #@41
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalEnd;->getLocal()Lcom/android/dx/rop/code/RegisterSpec;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v1}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    #@48
    move-result v1

    #@49
    invoke-virtual {v4, v1, v0}, Lcom/android/dx/dex/code/LocalList$MakeState;->endLocal(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@4c
    goto :goto_23

    #@4d
    :cond_4d
    invoke-virtual {v4}, Lcom/android/dx/dex/code/LocalList$MakeState;->finish()Lcom/android/dx/dex/code/LocalList;

    #@50
    move-result-object v0

    #@51
    return-object v0
.end method


# virtual methods
.method public debugPrint(Ljava/io/PrintStream;Ljava/lang/String;)V
    .registers 6

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalList;->size()I

    #@3
    move-result v1

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    if-ge v0, v1, :cond_14

    #@7
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@a
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_5

    #@14
    :cond_14
    return-void
.end method

.method public get(I)Lcom/android/dx/dex/code/LocalList$Entry;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/LocalList;->get0(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/dx/dex/code/LocalList$Entry;

    #@6
    return-object v0
.end method

.method public set(ILcom/android/dx/dex/code/LocalList$Entry;)V
    .registers 3

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/code/LocalList;->set0(ILjava/lang/Object;)V

    #@3
    return-void
.end method
