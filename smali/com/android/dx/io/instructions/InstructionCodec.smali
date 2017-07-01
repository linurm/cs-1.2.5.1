.class public abstract enum Lcom/android/dx/io/instructions/InstructionCodec;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/dx/io/instructions/InstructionCodec;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_00X:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_10T:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_10X:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_11N:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_11X:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_12X:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_20BC:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_20T:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_21C:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_21H:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_21S:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_21T:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_22B:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_22C:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_22CS:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_22S:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_22T:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_22X:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_23X:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_30T:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_31C:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_31I:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_31T:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_32S:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_32X:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_33X:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_35C:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_35MI:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_35MS:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_3RC:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_3RMI:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_3RMS:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_40SC:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_41C:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_51L:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_52C:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_5RC:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_FILL_ARRAY_DATA_PAYLOAD:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_PACKED_SWITCH_PAYLOAD:Lcom/android/dx/io/instructions/InstructionCodec;

.field public static final enum FORMAT_SPARSE_SWITCH_PAYLOAD:Lcom/android/dx/io/instructions/InstructionCodec;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    #@0
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$1;

    #@7
    const-string v1, "FORMAT_00X"

    #@9
    invoke-direct {v0, v1, v3}, Lcom/android/dx/io/instructions/InstructionCodec$1;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_00X:Lcom/android/dx/io/instructions/InstructionCodec;

    #@e
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$2;

    #@10
    const-string v1, "FORMAT_10X"

    #@12
    invoke-direct {v0, v1, v4}, Lcom/android/dx/io/instructions/InstructionCodec$2;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_10X:Lcom/android/dx/io/instructions/InstructionCodec;

    #@17
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$3;

    #@19
    const-string v1, "FORMAT_12X"

    #@1b
    invoke-direct {v0, v1, v5}, Lcom/android/dx/io/instructions/InstructionCodec$3;-><init>(Ljava/lang/String;I)V

    #@1e
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_12X:Lcom/android/dx/io/instructions/InstructionCodec;

    #@20
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$4;

    #@22
    const-string v1, "FORMAT_11N"

    #@24
    invoke-direct {v0, v1, v6}, Lcom/android/dx/io/instructions/InstructionCodec$4;-><init>(Ljava/lang/String;I)V

    #@27
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_11N:Lcom/android/dx/io/instructions/InstructionCodec;

    #@29
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$5;

    #@2b
    const-string v1, "FORMAT_11X"

    #@2d
    invoke-direct {v0, v1, v7}, Lcom/android/dx/io/instructions/InstructionCodec$5;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_11X:Lcom/android/dx/io/instructions/InstructionCodec;

    #@32
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$6;

    #@34
    const-string v1, "FORMAT_10T"

    #@36
    const/4 v2, 0x5

    #@37
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$6;-><init>(Ljava/lang/String;I)V

    #@3a
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_10T:Lcom/android/dx/io/instructions/InstructionCodec;

    #@3c
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$7;

    #@3e
    const-string v1, "FORMAT_20T"

    #@40
    const/4 v2, 0x6

    #@41
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$7;-><init>(Ljava/lang/String;I)V

    #@44
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_20T:Lcom/android/dx/io/instructions/InstructionCodec;

    #@46
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$8;

    #@48
    const-string v1, "FORMAT_20BC"

    #@4a
    const/4 v2, 0x7

    #@4b
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$8;-><init>(Ljava/lang/String;I)V

    #@4e
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_20BC:Lcom/android/dx/io/instructions/InstructionCodec;

    #@50
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$9;

    #@52
    const-string v1, "FORMAT_22X"

    #@54
    const/16 v2, 0x8

    #@56
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$9;-><init>(Ljava/lang/String;I)V

    #@59
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_22X:Lcom/android/dx/io/instructions/InstructionCodec;

    #@5b
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$10;

    #@5d
    const-string v1, "FORMAT_21T"

    #@5f
    const/16 v2, 0x9

    #@61
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$10;-><init>(Ljava/lang/String;I)V

    #@64
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_21T:Lcom/android/dx/io/instructions/InstructionCodec;

    #@66
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$11;

    #@68
    const-string v1, "FORMAT_21S"

    #@6a
    const/16 v2, 0xa

    #@6c
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$11;-><init>(Ljava/lang/String;I)V

    #@6f
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_21S:Lcom/android/dx/io/instructions/InstructionCodec;

    #@71
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$12;

    #@73
    const-string v1, "FORMAT_21H"

    #@75
    const/16 v2, 0xb

    #@77
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$12;-><init>(Ljava/lang/String;I)V

    #@7a
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_21H:Lcom/android/dx/io/instructions/InstructionCodec;

    #@7c
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$13;

    #@7e
    const-string v1, "FORMAT_21C"

    #@80
    const/16 v2, 0xc

    #@82
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$13;-><init>(Ljava/lang/String;I)V

    #@85
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_21C:Lcom/android/dx/io/instructions/InstructionCodec;

    #@87
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$14;

    #@89
    const-string v1, "FORMAT_23X"

    #@8b
    const/16 v2, 0xd

    #@8d
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$14;-><init>(Ljava/lang/String;I)V

    #@90
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_23X:Lcom/android/dx/io/instructions/InstructionCodec;

    #@92
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$15;

    #@94
    const-string v1, "FORMAT_22B"

    #@96
    const/16 v2, 0xe

    #@98
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$15;-><init>(Ljava/lang/String;I)V

    #@9b
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_22B:Lcom/android/dx/io/instructions/InstructionCodec;

    #@9d
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$16;

    #@9f
    const-string v1, "FORMAT_22T"

    #@a1
    const/16 v2, 0xf

    #@a3
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$16;-><init>(Ljava/lang/String;I)V

    #@a6
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_22T:Lcom/android/dx/io/instructions/InstructionCodec;

    #@a8
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$17;

    #@aa
    const-string v1, "FORMAT_22S"

    #@ac
    const/16 v2, 0x10

    #@ae
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$17;-><init>(Ljava/lang/String;I)V

    #@b1
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_22S:Lcom/android/dx/io/instructions/InstructionCodec;

    #@b3
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$18;

    #@b5
    const-string v1, "FORMAT_22C"

    #@b7
    const/16 v2, 0x11

    #@b9
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$18;-><init>(Ljava/lang/String;I)V

    #@bc
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_22C:Lcom/android/dx/io/instructions/InstructionCodec;

    #@be
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$19;

    #@c0
    const-string v1, "FORMAT_22CS"

    #@c2
    const/16 v2, 0x12

    #@c4
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$19;-><init>(Ljava/lang/String;I)V

    #@c7
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_22CS:Lcom/android/dx/io/instructions/InstructionCodec;

    #@c9
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$20;

    #@cb
    const-string v1, "FORMAT_30T"

    #@cd
    const/16 v2, 0x13

    #@cf
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$20;-><init>(Ljava/lang/String;I)V

    #@d2
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_30T:Lcom/android/dx/io/instructions/InstructionCodec;

    #@d4
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$21;

    #@d6
    const-string v1, "FORMAT_32X"

    #@d8
    const/16 v2, 0x14

    #@da
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$21;-><init>(Ljava/lang/String;I)V

    #@dd
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_32X:Lcom/android/dx/io/instructions/InstructionCodec;

    #@df
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$22;

    #@e1
    const-string v1, "FORMAT_31I"

    #@e3
    const/16 v2, 0x15

    #@e5
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$22;-><init>(Ljava/lang/String;I)V

    #@e8
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_31I:Lcom/android/dx/io/instructions/InstructionCodec;

    #@ea
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$23;

    #@ec
    const-string v1, "FORMAT_31T"

    #@ee
    const/16 v2, 0x16

    #@f0
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$23;-><init>(Ljava/lang/String;I)V

    #@f3
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_31T:Lcom/android/dx/io/instructions/InstructionCodec;

    #@f5
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$24;

    #@f7
    const-string v1, "FORMAT_31C"

    #@f9
    const/16 v2, 0x17

    #@fb
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$24;-><init>(Ljava/lang/String;I)V

    #@fe
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_31C:Lcom/android/dx/io/instructions/InstructionCodec;

    #@100
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$25;

    #@102
    const-string v1, "FORMAT_35C"

    #@104
    const/16 v2, 0x18

    #@106
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$25;-><init>(Ljava/lang/String;I)V

    #@109
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_35C:Lcom/android/dx/io/instructions/InstructionCodec;

    #@10b
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$26;

    #@10d
    const-string v1, "FORMAT_35MS"

    #@10f
    const/16 v2, 0x19

    #@111
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$26;-><init>(Ljava/lang/String;I)V

    #@114
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_35MS:Lcom/android/dx/io/instructions/InstructionCodec;

    #@116
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$27;

    #@118
    const-string v1, "FORMAT_35MI"

    #@11a
    const/16 v2, 0x1a

    #@11c
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$27;-><init>(Ljava/lang/String;I)V

    #@11f
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_35MI:Lcom/android/dx/io/instructions/InstructionCodec;

    #@121
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$28;

    #@123
    const-string v1, "FORMAT_3RC"

    #@125
    const/16 v2, 0x1b

    #@127
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$28;-><init>(Ljava/lang/String;I)V

    #@12a
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_3RC:Lcom/android/dx/io/instructions/InstructionCodec;

    #@12c
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$29;

    #@12e
    const-string v1, "FORMAT_3RMS"

    #@130
    const/16 v2, 0x1c

    #@132
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$29;-><init>(Ljava/lang/String;I)V

    #@135
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_3RMS:Lcom/android/dx/io/instructions/InstructionCodec;

    #@137
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$30;

    #@139
    const-string v1, "FORMAT_3RMI"

    #@13b
    const/16 v2, 0x1d

    #@13d
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$30;-><init>(Ljava/lang/String;I)V

    #@140
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_3RMI:Lcom/android/dx/io/instructions/InstructionCodec;

    #@142
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$31;

    #@144
    const-string v1, "FORMAT_51L"

    #@146
    const/16 v2, 0x1e

    #@148
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$31;-><init>(Ljava/lang/String;I)V

    #@14b
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_51L:Lcom/android/dx/io/instructions/InstructionCodec;

    #@14d
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$32;

    #@14f
    const-string v1, "FORMAT_33X"

    #@151
    const/16 v2, 0x1f

    #@153
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$32;-><init>(Ljava/lang/String;I)V

    #@156
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_33X:Lcom/android/dx/io/instructions/InstructionCodec;

    #@158
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$33;

    #@15a
    const-string v1, "FORMAT_32S"

    #@15c
    const/16 v2, 0x20

    #@15e
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$33;-><init>(Ljava/lang/String;I)V

    #@161
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_32S:Lcom/android/dx/io/instructions/InstructionCodec;

    #@163
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$34;

    #@165
    const-string v1, "FORMAT_40SC"

    #@167
    const/16 v2, 0x21

    #@169
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$34;-><init>(Ljava/lang/String;I)V

    #@16c
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_40SC:Lcom/android/dx/io/instructions/InstructionCodec;

    #@16e
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$35;

    #@170
    const-string v1, "FORMAT_41C"

    #@172
    const/16 v2, 0x22

    #@174
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$35;-><init>(Ljava/lang/String;I)V

    #@177
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_41C:Lcom/android/dx/io/instructions/InstructionCodec;

    #@179
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$36;

    #@17b
    const-string v1, "FORMAT_52C"

    #@17d
    const/16 v2, 0x23

    #@17f
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$36;-><init>(Ljava/lang/String;I)V

    #@182
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_52C:Lcom/android/dx/io/instructions/InstructionCodec;

    #@184
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$37;

    #@186
    const-string v1, "FORMAT_5RC"

    #@188
    const/16 v2, 0x24

    #@18a
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$37;-><init>(Ljava/lang/String;I)V

    #@18d
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_5RC:Lcom/android/dx/io/instructions/InstructionCodec;

    #@18f
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$38;

    #@191
    const-string v1, "FORMAT_PACKED_SWITCH_PAYLOAD"

    #@193
    const/16 v2, 0x25

    #@195
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$38;-><init>(Ljava/lang/String;I)V

    #@198
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_PACKED_SWITCH_PAYLOAD:Lcom/android/dx/io/instructions/InstructionCodec;

    #@19a
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$39;

    #@19c
    const-string v1, "FORMAT_SPARSE_SWITCH_PAYLOAD"

    #@19e
    const/16 v2, 0x26

    #@1a0
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$39;-><init>(Ljava/lang/String;I)V

    #@1a3
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_SPARSE_SWITCH_PAYLOAD:Lcom/android/dx/io/instructions/InstructionCodec;

    #@1a5
    new-instance v0, Lcom/android/dx/io/instructions/InstructionCodec$40;

    #@1a7
    const-string v1, "FORMAT_FILL_ARRAY_DATA_PAYLOAD"

    #@1a9
    const/16 v2, 0x27

    #@1ab
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec$40;-><init>(Ljava/lang/String;I)V

    #@1ae
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_FILL_ARRAY_DATA_PAYLOAD:Lcom/android/dx/io/instructions/InstructionCodec;

    #@1b0
    const/16 v0, 0x28

    #@1b2
    new-array v0, v0, [Lcom/android/dx/io/instructions/InstructionCodec;

    #@1b4
    sget-object v1, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_00X:Lcom/android/dx/io/instructions/InstructionCodec;

    #@1b6
    aput-object v1, v0, v3

    #@1b8
    sget-object v1, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_10X:Lcom/android/dx/io/instructions/InstructionCodec;

    #@1ba
    aput-object v1, v0, v4

    #@1bc
    sget-object v1, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_12X:Lcom/android/dx/io/instructions/InstructionCodec;

    #@1be
    aput-object v1, v0, v5

    #@1c0
    sget-object v1, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_11N:Lcom/android/dx/io/instructions/InstructionCodec;

    #@1c2
    aput-object v1, v0, v6

    #@1c4
    sget-object v1, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_11X:Lcom/android/dx/io/instructions/InstructionCodec;

    #@1c6
    aput-object v1, v0, v7

    #@1c8
    const/4 v1, 0x5

    #@1c9
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_10T:Lcom/android/dx/io/instructions/InstructionCodec;

    #@1cb
    aput-object v2, v0, v1

    #@1cd
    const/4 v1, 0x6

    #@1ce
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_20T:Lcom/android/dx/io/instructions/InstructionCodec;

    #@1d0
    aput-object v2, v0, v1

    #@1d2
    const/4 v1, 0x7

    #@1d3
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_20BC:Lcom/android/dx/io/instructions/InstructionCodec;

    #@1d5
    aput-object v2, v0, v1

    #@1d7
    const/16 v1, 0x8

    #@1d9
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_22X:Lcom/android/dx/io/instructions/InstructionCodec;

    #@1db
    aput-object v2, v0, v1

    #@1dd
    const/16 v1, 0x9

    #@1df
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_21T:Lcom/android/dx/io/instructions/InstructionCodec;

    #@1e1
    aput-object v2, v0, v1

    #@1e3
    const/16 v1, 0xa

    #@1e5
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_21S:Lcom/android/dx/io/instructions/InstructionCodec;

    #@1e7
    aput-object v2, v0, v1

    #@1e9
    const/16 v1, 0xb

    #@1eb
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_21H:Lcom/android/dx/io/instructions/InstructionCodec;

    #@1ed
    aput-object v2, v0, v1

    #@1ef
    const/16 v1, 0xc

    #@1f1
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_21C:Lcom/android/dx/io/instructions/InstructionCodec;

    #@1f3
    aput-object v2, v0, v1

    #@1f5
    const/16 v1, 0xd

    #@1f7
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_23X:Lcom/android/dx/io/instructions/InstructionCodec;

    #@1f9
    aput-object v2, v0, v1

    #@1fb
    const/16 v1, 0xe

    #@1fd
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_22B:Lcom/android/dx/io/instructions/InstructionCodec;

    #@1ff
    aput-object v2, v0, v1

    #@201
    const/16 v1, 0xf

    #@203
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_22T:Lcom/android/dx/io/instructions/InstructionCodec;

    #@205
    aput-object v2, v0, v1

    #@207
    const/16 v1, 0x10

    #@209
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_22S:Lcom/android/dx/io/instructions/InstructionCodec;

    #@20b
    aput-object v2, v0, v1

    #@20d
    const/16 v1, 0x11

    #@20f
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_22C:Lcom/android/dx/io/instructions/InstructionCodec;

    #@211
    aput-object v2, v0, v1

    #@213
    const/16 v1, 0x12

    #@215
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_22CS:Lcom/android/dx/io/instructions/InstructionCodec;

    #@217
    aput-object v2, v0, v1

    #@219
    const/16 v1, 0x13

    #@21b
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_30T:Lcom/android/dx/io/instructions/InstructionCodec;

    #@21d
    aput-object v2, v0, v1

    #@21f
    const/16 v1, 0x14

    #@221
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_32X:Lcom/android/dx/io/instructions/InstructionCodec;

    #@223
    aput-object v2, v0, v1

    #@225
    const/16 v1, 0x15

    #@227
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_31I:Lcom/android/dx/io/instructions/InstructionCodec;

    #@229
    aput-object v2, v0, v1

    #@22b
    const/16 v1, 0x16

    #@22d
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_31T:Lcom/android/dx/io/instructions/InstructionCodec;

    #@22f
    aput-object v2, v0, v1

    #@231
    const/16 v1, 0x17

    #@233
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_31C:Lcom/android/dx/io/instructions/InstructionCodec;

    #@235
    aput-object v2, v0, v1

    #@237
    const/16 v1, 0x18

    #@239
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_35C:Lcom/android/dx/io/instructions/InstructionCodec;

    #@23b
    aput-object v2, v0, v1

    #@23d
    const/16 v1, 0x19

    #@23f
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_35MS:Lcom/android/dx/io/instructions/InstructionCodec;

    #@241
    aput-object v2, v0, v1

    #@243
    const/16 v1, 0x1a

    #@245
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_35MI:Lcom/android/dx/io/instructions/InstructionCodec;

    #@247
    aput-object v2, v0, v1

    #@249
    const/16 v1, 0x1b

    #@24b
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_3RC:Lcom/android/dx/io/instructions/InstructionCodec;

    #@24d
    aput-object v2, v0, v1

    #@24f
    const/16 v1, 0x1c

    #@251
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_3RMS:Lcom/android/dx/io/instructions/InstructionCodec;

    #@253
    aput-object v2, v0, v1

    #@255
    const/16 v1, 0x1d

    #@257
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_3RMI:Lcom/android/dx/io/instructions/InstructionCodec;

    #@259
    aput-object v2, v0, v1

    #@25b
    const/16 v1, 0x1e

    #@25d
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_51L:Lcom/android/dx/io/instructions/InstructionCodec;

    #@25f
    aput-object v2, v0, v1

    #@261
    const/16 v1, 0x1f

    #@263
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_33X:Lcom/android/dx/io/instructions/InstructionCodec;

    #@265
    aput-object v2, v0, v1

    #@267
    const/16 v1, 0x20

    #@269
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_32S:Lcom/android/dx/io/instructions/InstructionCodec;

    #@26b
    aput-object v2, v0, v1

    #@26d
    const/16 v1, 0x21

    #@26f
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_40SC:Lcom/android/dx/io/instructions/InstructionCodec;

    #@271
    aput-object v2, v0, v1

    #@273
    const/16 v1, 0x22

    #@275
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_41C:Lcom/android/dx/io/instructions/InstructionCodec;

    #@277
    aput-object v2, v0, v1

    #@279
    const/16 v1, 0x23

    #@27b
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_52C:Lcom/android/dx/io/instructions/InstructionCodec;

    #@27d
    aput-object v2, v0, v1

    #@27f
    const/16 v1, 0x24

    #@281
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_5RC:Lcom/android/dx/io/instructions/InstructionCodec;

    #@283
    aput-object v2, v0, v1

    #@285
    const/16 v1, 0x25

    #@287
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_PACKED_SWITCH_PAYLOAD:Lcom/android/dx/io/instructions/InstructionCodec;

    #@289
    aput-object v2, v0, v1

    #@28b
    const/16 v1, 0x26

    #@28d
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_SPARSE_SWITCH_PAYLOAD:Lcom/android/dx/io/instructions/InstructionCodec;

    #@28f
    aput-object v2, v0, v1

    #@291
    const/16 v1, 0x27

    #@293
    sget-object v2, Lcom/android/dx/io/instructions/InstructionCodec;->FORMAT_FILL_ARRAY_DATA_PAYLOAD:Lcom/android/dx/io/instructions/InstructionCodec;

    #@295
    aput-object v2, v0, v1

    #@297
    sput-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->$VALUES:[Lcom/android/dx/io/instructions/InstructionCodec;

    #@299
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/dx/io/instructions/InstructionCodec$1;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic access$100(I)I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/android/dx/io/instructions/InstructionCodec;->byte0(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$1000(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Lcom/android/dx/io/instructions/InstructionCodec;->encodeRegisterList(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V

    #@3
    return-void
.end method

.method static synthetic access$1100(Lcom/android/dx/io/instructions/InstructionCodec;ILcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    invoke-static {p0, p1, p2}, Lcom/android/dx/io/instructions/InstructionCodec;->decodeRegisterRange(Lcom/android/dx/io/instructions/InstructionCodec;ILcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Lcom/android/dx/io/instructions/InstructionCodec;->encodeRegisterRange(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V

    #@3
    return-void
.end method

.method static synthetic access$1300(J)S
    .registers 4

    #@0
    invoke-static {p0, p1}, Lcom/android/dx/io/instructions/InstructionCodec;->unit0(J)S

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$1400(J)S
    .registers 4

    #@0
    invoke-static {p0, p1}, Lcom/android/dx/io/instructions/InstructionCodec;->unit1(J)S

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$1500(J)S
    .registers 4

    #@0
    invoke-static {p0, p1}, Lcom/android/dx/io/instructions/InstructionCodec;->unit2(J)S

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$1600(J)S
    .registers 4

    #@0
    invoke-static {p0, p1}, Lcom/android/dx/io/instructions/InstructionCodec;->unit3(J)S

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$1700(I)S
    .registers 2

    #@0
    invoke-static {p0}, Lcom/android/dx/io/instructions/InstructionCodec;->asUnsignedUnit(I)S

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$200(I)I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/android/dx/io/instructions/InstructionCodec;->byte1(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$300(I)I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/android/dx/io/instructions/InstructionCodec;->nibble2(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$400(I)I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/android/dx/io/instructions/InstructionCodec;->nibble3(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$500(II)I
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/android/dx/io/instructions/InstructionCodec;->makeByte(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$600(II)S
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/android/dx/io/instructions/InstructionCodec;->codeUnit(II)S

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$700(I)S
    .registers 2

    #@0
    invoke-static {p0}, Lcom/android/dx/io/instructions/InstructionCodec;->unit0(I)S

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$800(I)S
    .registers 2

    #@0
    invoke-static {p0}, Lcom/android/dx/io/instructions/InstructionCodec;->unit1(I)S

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$900(Lcom/android/dx/io/instructions/InstructionCodec;ILcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    invoke-static {p0, p1, p2}, Lcom/android/dx/io/instructions/InstructionCodec;->decodeRegisterList(Lcom/android/dx/io/instructions/InstructionCodec;ILcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static asUnsignedUnit(I)S
    .registers 3

    #@0
    const/high16 v0, -0x10000

    #@2
    and-int/2addr v0, p0

    #@3
    if-eqz v0, :cond_d

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string v1, "bogus unsigned code unit"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    int-to-short v0, p0

    #@e
    return v0
.end method

.method private static byte0(I)I
    .registers 2

    #@0
    and-int/lit16 v0, p0, 0xff

    #@2
    return v0
.end method

.method private static byte1(I)I
    .registers 2

    #@0
    shr-int/lit8 v0, p0, 0x8

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    return v0
.end method

.method private static byte2(I)I
    .registers 2

    #@0
    shr-int/lit8 v0, p0, 0x10

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    return v0
.end method

.method private static byte3(I)I
    .registers 2

    #@0
    ushr-int/lit8 v0, p0, 0x18

    #@2
    return v0
.end method

.method private static codeUnit(II)S
    .registers 4

    #@0
    and-int/lit16 v0, p0, -0x100

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string v1, "bogus lowByte"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    and-int/lit16 v0, p1, -0x100

    #@e
    if-eqz v0, :cond_18

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string v1, "bogus highByte"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    shl-int/lit8 v0, p1, 0x8

    #@1a
    or-int/2addr v0, p0

    #@1b
    int-to-short v0, v0

    #@1c
    return v0
.end method

.method private static codeUnit(IIII)S
    .registers 6

    #@0
    and-int/lit8 v0, p0, -0x10

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string v1, "bogus nibble0"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    and-int/lit8 v0, p1, -0x10

    #@e
    if-eqz v0, :cond_18

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string v1, "bogus nibble1"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    and-int/lit8 v0, p2, -0x10

    #@1a
    if-eqz v0, :cond_24

    #@1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string v1, "bogus nibble2"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    :cond_24
    and-int/lit8 v0, p3, -0x10

    #@26
    if-eqz v0, :cond_30

    #@28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2a
    const-string v1, "bogus nibble3"

    #@2c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0

    #@30
    :cond_30
    shl-int/lit8 v0, p1, 0x4

    #@32
    or-int/2addr v0, p0

    #@33
    shl-int/lit8 v1, p2, 0x8

    #@35
    or-int/2addr v0, v1

    #@36
    shl-int/lit8 v1, p3, 0xc

    #@38
    or-int/2addr v0, v1

    #@39
    int-to-short v0, v0

    #@3a
    return v0
.end method

.method private static decodeRegisterList(Lcom/android/dx/io/instructions/InstructionCodec;ILcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    const-wide/16 v6, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->byte0(I)I

    #@6
    move-result v2

    #@7
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->nibble2(I)I

    #@a
    move-result v12

    #@b
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->nibble3(I)I

    #@e
    move-result v0

    #@f
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    #@12
    move-result v3

    #@13
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    #@16
    move-result v1

    #@17
    invoke-static {v1}, Lcom/android/dx/io/instructions/InstructionCodec;->nibble0(I)I

    #@1a
    move-result v8

    #@1b
    invoke-static {v1}, Lcom/android/dx/io/instructions/InstructionCodec;->nibble1(I)I

    #@1e
    move-result v9

    #@1f
    invoke-static {v1}, Lcom/android/dx/io/instructions/InstructionCodec;->nibble2(I)I

    #@22
    move-result v10

    #@23
    invoke-static {v1}, Lcom/android/dx/io/instructions/InstructionCodec;->nibble3(I)I

    #@26
    move-result v11

    #@27
    invoke-static {v2}, Lcom/android/dx/io/OpcodeInfo;->getIndexType(I)Lcom/android/dx/io/IndexType;

    #@2a
    move-result-object v4

    #@2b
    packed-switch v0, :pswitch_data_76

    #@2e
    new-instance v1, Lcom/android/dx/util/DexException;

    #@30
    new-instance v2, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string v3, "bogus registerCount: "

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {v0}, Lcom/android/dx/util/Hex;->uNibble(I)Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v1

    #@4b
    :pswitch_4b
    new-instance v0, Lcom/android/dx/io/instructions/ZeroRegisterDecodedInstruction;

    #@4d
    move-object v1, p0

    #@4e
    invoke-direct/range {v0 .. v7}, Lcom/android/dx/io/instructions/ZeroRegisterDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJ)V

    #@51
    :goto_51
    return-object v0

    #@52
    :pswitch_52
    new-instance v0, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;

    #@54
    move-object v1, p0

    #@55
    invoke-direct/range {v0 .. v8}, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJI)V

    #@58
    goto :goto_51

    #@59
    :pswitch_59
    new-instance v0, Lcom/android/dx/io/instructions/TwoRegisterDecodedInstruction;

    #@5b
    move-object v1, p0

    #@5c
    invoke-direct/range {v0 .. v9}, Lcom/android/dx/io/instructions/TwoRegisterDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJII)V

    #@5f
    goto :goto_51

    #@60
    :pswitch_60
    new-instance v0, Lcom/android/dx/io/instructions/ThreeRegisterDecodedInstruction;

    #@62
    move-object v1, p0

    #@63
    invoke-direct/range {v0 .. v10}, Lcom/android/dx/io/instructions/ThreeRegisterDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJIII)V

    #@66
    goto :goto_51

    #@67
    :pswitch_67
    new-instance v0, Lcom/android/dx/io/instructions/FourRegisterDecodedInstruction;

    #@69
    move-object v1, p0

    #@6a
    invoke-direct/range {v0 .. v11}, Lcom/android/dx/io/instructions/FourRegisterDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJIIII)V

    #@6d
    goto :goto_51

    #@6e
    :pswitch_6e
    new-instance v0, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;

    #@70
    move-object v1, p0

    #@71
    invoke-direct/range {v0 .. v12}, Lcom/android/dx/io/instructions/FiveRegisterDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJIIIII)V

    #@74
    goto :goto_51

    #@75
    nop

    #@76
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_52
        :pswitch_59
        :pswitch_60
        :pswitch_67
        :pswitch_6e
    .end packed-switch
.end method

.method private static decodeRegisterRange(Lcom/android/dx/io/instructions/InstructionCodec;ILcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->byte0(I)I

    #@3
    move-result v2

    #@4
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->byte1(I)I

    #@7
    move-result v9

    #@8
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    #@b
    move-result v3

    #@c
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    #@f
    move-result v8

    #@10
    new-instance v0, Lcom/android/dx/io/instructions/RegisterRangeDecodedInstruction;

    #@12
    invoke-static {v2}, Lcom/android/dx/io/OpcodeInfo;->getIndexType(I)Lcom/android/dx/io/IndexType;

    #@15
    move-result-object v4

    #@16
    const/4 v5, 0x0

    #@17
    const-wide/16 v6, 0x0

    #@19
    move-object v1, p0

    #@1a
    invoke-direct/range {v0 .. v9}, Lcom/android/dx/io/instructions/RegisterRangeDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJII)V

    #@1d
    return-object v0
.end method

.method private static encodeRegisterList(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .registers 8

    #@0
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getE()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getRegisterCount()I

    #@b
    move-result v2

    #@c
    invoke-static {v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec;->makeByte(II)I

    #@f
    move-result v1

    #@10
    invoke-static {v0, v1}, Lcom/android/dx/io/instructions/InstructionCodec;->codeUnit(II)S

    #@13
    move-result v0

    #@14
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getIndexUnit()S

    #@17
    move-result v1

    #@18
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getA()I

    #@1b
    move-result v2

    #@1c
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getB()I

    #@1f
    move-result v3

    #@20
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getC()I

    #@23
    move-result v4

    #@24
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getD()I

    #@27
    move-result v5

    #@28
    invoke-static {v2, v3, v4, v5}, Lcom/android/dx/io/instructions/InstructionCodec;->codeUnit(IIII)S

    #@2b
    move-result v2

    #@2c
    invoke-interface {p1, v0, v1, v2}, Lcom/android/dx/io/instructions/CodeOutput;->write(SSS)V

    #@2f
    return-void
.end method

.method private static encodeRegisterRange(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getRegisterCount()I

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1}, Lcom/android/dx/io/instructions/InstructionCodec;->codeUnit(II)S

    #@b
    move-result v0

    #@c
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getIndexUnit()S

    #@f
    move-result v1

    #@10
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getAUnit()S

    #@13
    move-result v2

    #@14
    invoke-interface {p1, v0, v1, v2}, Lcom/android/dx/io/instructions/CodeOutput;->write(SSS)V

    #@17
    return-void
.end method

.method private static makeByte(II)I
    .registers 4

    #@0
    and-int/lit8 v0, p0, -0x10

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string v1, "bogus lowNibble"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    and-int/lit8 v0, p1, -0x10

    #@e
    if-eqz v0, :cond_18

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string v1, "bogus highNibble"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    shl-int/lit8 v0, p1, 0x4

    #@1a
    or-int/2addr v0, p0

    #@1b
    return v0
.end method

.method private static nibble0(I)I
    .registers 2

    #@0
    and-int/lit8 v0, p0, 0xf

    #@2
    return v0
.end method

.method private static nibble1(I)I
    .registers 2

    #@0
    shr-int/lit8 v0, p0, 0x4

    #@2
    and-int/lit8 v0, v0, 0xf

    #@4
    return v0
.end method

.method private static nibble2(I)I
    .registers 2

    #@0
    shr-int/lit8 v0, p0, 0x8

    #@2
    and-int/lit8 v0, v0, 0xf

    #@4
    return v0
.end method

.method private static nibble3(I)I
    .registers 2

    #@0
    shr-int/lit8 v0, p0, 0xc

    #@2
    and-int/lit8 v0, v0, 0xf

    #@4
    return v0
.end method

.method private static unit0(I)S
    .registers 2

    #@0
    int-to-short v0, p0

    #@1
    return v0
.end method

.method private static unit0(J)S
    .registers 4

    #@0
    long-to-int v0, p0

    #@1
    int-to-short v0, v0

    #@2
    return v0
.end method

.method private static unit1(I)S
    .registers 2

    #@0
    shr-int/lit8 v0, p0, 0x10

    #@2
    int-to-short v0, v0

    #@3
    return v0
.end method

.method private static unit1(J)S
    .registers 4

    #@0
    const/16 v0, 0x10

    #@2
    shr-long v0, p0, v0

    #@4
    long-to-int v0, v0

    #@5
    int-to-short v0, v0

    #@6
    return v0
.end method

.method private static unit2(J)S
    .registers 4

    #@0
    const/16 v0, 0x20

    #@2
    shr-long v0, p0, v0

    #@4
    long-to-int v0, v0

    #@5
    int-to-short v0, v0

    #@6
    return v0
.end method

.method private static unit3(J)S
    .registers 4

    #@0
    const/16 v0, 0x30

    #@2
    shr-long v0, p0, v0

    #@4
    long-to-int v0, v0

    #@5
    int-to-short v0, v0

    #@6
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dx/io/instructions/InstructionCodec;
    .registers 2

    #@0
    const-class v0, Lcom/android/dx/io/instructions/InstructionCodec;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/dx/io/instructions/InstructionCodec;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/dx/io/instructions/InstructionCodec;
    .registers 1

    #@0
    sget-object v0, Lcom/android/dx/io/instructions/InstructionCodec;->$VALUES:[Lcom/android/dx/io/instructions/InstructionCodec;

    #@2
    invoke-virtual {v0}, [Lcom/android/dx/io/instructions/InstructionCodec;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/android/dx/io/instructions/InstructionCodec;

    #@8
    return-object v0
.end method


# virtual methods
.method public abstract decode(ILcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation
.end method

.method public abstract encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
.end method
