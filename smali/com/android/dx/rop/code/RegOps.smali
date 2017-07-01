.class public final Lcom/android/dx/rop/code/RegOps;
.super Ljava/lang/Object;


# static fields
.field public static final ADD:I = 0xe

.field public static final AGET:I = 0x26

.field public static final AND:I = 0x14

.field public static final APUT:I = 0x27

.field public static final ARRAY_LENGTH:I = 0x22

.field public static final CHECK_CAST:I = 0x2b

.field public static final CMPG:I = 0x1c

.field public static final CMPL:I = 0x1b

.field public static final CONST:I = 0x5

.field public static final CONV:I = 0x1d

.field public static final DIV:I = 0x11

.field public static final FILLED_NEW_ARRAY:I = 0x2a

.field public static final FILL_ARRAY_DATA:I = 0x39

.field public static final GET_FIELD:I = 0x2d

.field public static final GET_STATIC:I = 0x2e

.field public static final GOTO:I = 0x6

.field public static final IF_EQ:I = 0x7

.field public static final IF_GE:I = 0xa

.field public static final IF_GT:I = 0xc

.field public static final IF_LE:I = 0xb

.field public static final IF_LT:I = 0x9

.field public static final IF_NE:I = 0x8

.field public static final INSTANCE_OF:I = 0x2c

.field public static final INVOKE_DIRECT:I = 0x34

.field public static final INVOKE_INTERFACE:I = 0x35

.field public static final INVOKE_STATIC:I = 0x31

.field public static final INVOKE_SUPER:I = 0x33

.field public static final INVOKE_VIRTUAL:I = 0x32

.field public static final MARK_LOCAL:I = 0x36

.field public static final MONITOR_ENTER:I = 0x24

.field public static final MONITOR_EXIT:I = 0x25

.field public static final MOVE:I = 0x2

.field public static final MOVE_EXCEPTION:I = 0x4

.field public static final MOVE_PARAM:I = 0x3

.field public static final MOVE_RESULT:I = 0x37

.field public static final MOVE_RESULT_PSEUDO:I = 0x38

.field public static final MUL:I = 0x10

.field public static final NEG:I = 0x13

.field public static final NEW_ARRAY:I = 0x29

.field public static final NEW_INSTANCE:I = 0x28

.field public static final NOP:I = 0x1

.field public static final NOT:I = 0x1a

.field public static final OR:I = 0x15

.field public static final PUT_FIELD:I = 0x2f

.field public static final PUT_STATIC:I = 0x30

.field public static final REM:I = 0x12

.field public static final RETURN:I = 0x21

.field public static final SHL:I = 0x17

.field public static final SHR:I = 0x18

.field public static final SUB:I = 0xf

.field public static final SWITCH:I = 0xd

.field public static final THROW:I = 0x23

.field public static final TO_BYTE:I = 0x1e

.field public static final TO_CHAR:I = 0x1f

.field public static final TO_SHORT:I = 0x20

.field public static final USHR:I = 0x19

.field public static final XOR:I = 0x16


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static flippedIfOpcode(I)I
    .registers 4

    #@0
    packed-switch p0, :pswitch_data_28

    #@3
    new-instance v0, Ljava/lang/RuntimeException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string v2, "Unrecognized IF regop: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    :pswitch_1c
    const/16 p0, 0xc

    #@1e
    :goto_1e
    :pswitch_1e
    return p0

    #@1f
    :pswitch_1f
    const/16 p0, 0xb

    #@21
    goto :goto_1e

    #@22
    :pswitch_22
    const/16 p0, 0xa

    #@24
    goto :goto_1e

    #@25
    :pswitch_25
    const/16 p0, 0x9

    #@27
    goto :goto_1e

    #@28
    :pswitch_data_28
    .packed-switch 0x7
        :pswitch_1e
        :pswitch_1e
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method public static opName(I)Ljava/lang/String;
    .registers 3

    #@0
    packed-switch p0, :pswitch_data_d2

    #@3
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string v1, "unknown-"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    invoke-static {p0}, Lcom/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    :goto_1a
    return-object v0

    #@1b
    :pswitch_1b
    const-string v0, "nop"

    #@1d
    goto :goto_1a

    #@1e
    :pswitch_1e
    const-string v0, "move"

    #@20
    goto :goto_1a

    #@21
    :pswitch_21
    const-string v0, "move-param"

    #@23
    goto :goto_1a

    #@24
    :pswitch_24
    const-string v0, "move-exception"

    #@26
    goto :goto_1a

    #@27
    :pswitch_27
    const-string v0, "const"

    #@29
    goto :goto_1a

    #@2a
    :pswitch_2a
    const-string v0, "goto"

    #@2c
    goto :goto_1a

    #@2d
    :pswitch_2d
    const-string v0, "if-eq"

    #@2f
    goto :goto_1a

    #@30
    :pswitch_30
    const-string v0, "if-ne"

    #@32
    goto :goto_1a

    #@33
    :pswitch_33
    const-string v0, "if-lt"

    #@35
    goto :goto_1a

    #@36
    :pswitch_36
    const-string v0, "if-ge"

    #@38
    goto :goto_1a

    #@39
    :pswitch_39
    const-string v0, "if-le"

    #@3b
    goto :goto_1a

    #@3c
    :pswitch_3c
    const-string v0, "if-gt"

    #@3e
    goto :goto_1a

    #@3f
    :pswitch_3f
    const-string v0, "switch"

    #@41
    goto :goto_1a

    #@42
    :pswitch_42
    const-string v0, "add"

    #@44
    goto :goto_1a

    #@45
    :pswitch_45
    const-string v0, "sub"

    #@47
    goto :goto_1a

    #@48
    :pswitch_48
    const-string v0, "mul"

    #@4a
    goto :goto_1a

    #@4b
    :pswitch_4b
    const-string v0, "div"

    #@4d
    goto :goto_1a

    #@4e
    :pswitch_4e
    const-string v0, "rem"

    #@50
    goto :goto_1a

    #@51
    :pswitch_51
    const-string v0, "neg"

    #@53
    goto :goto_1a

    #@54
    :pswitch_54
    const-string v0, "and"

    #@56
    goto :goto_1a

    #@57
    :pswitch_57
    const-string v0, "or"

    #@59
    goto :goto_1a

    #@5a
    :pswitch_5a
    const-string v0, "xor"

    #@5c
    goto :goto_1a

    #@5d
    :pswitch_5d
    const-string v0, "shl"

    #@5f
    goto :goto_1a

    #@60
    :pswitch_60
    const-string v0, "shr"

    #@62
    goto :goto_1a

    #@63
    :pswitch_63
    const-string v0, "ushr"

    #@65
    goto :goto_1a

    #@66
    :pswitch_66
    const-string v0, "not"

    #@68
    goto :goto_1a

    #@69
    :pswitch_69
    const-string v0, "cmpl"

    #@6b
    goto :goto_1a

    #@6c
    :pswitch_6c
    const-string v0, "cmpg"

    #@6e
    goto :goto_1a

    #@6f
    :pswitch_6f
    const-string v0, "conv"

    #@71
    goto :goto_1a

    #@72
    :pswitch_72
    const-string v0, "to-byte"

    #@74
    goto :goto_1a

    #@75
    :pswitch_75
    const-string v0, "to-char"

    #@77
    goto :goto_1a

    #@78
    :pswitch_78
    const-string v0, "to-short"

    #@7a
    goto :goto_1a

    #@7b
    :pswitch_7b
    const-string v0, "return"

    #@7d
    goto :goto_1a

    #@7e
    :pswitch_7e
    const-string v0, "array-length"

    #@80
    goto :goto_1a

    #@81
    :pswitch_81
    const-string v0, "throw"

    #@83
    goto :goto_1a

    #@84
    :pswitch_84
    const-string v0, "monitor-enter"

    #@86
    goto :goto_1a

    #@87
    :pswitch_87
    const-string v0, "monitor-exit"

    #@89
    goto :goto_1a

    #@8a
    :pswitch_8a
    const-string v0, "aget"

    #@8c
    goto :goto_1a

    #@8d
    :pswitch_8d
    const-string v0, "aput"

    #@8f
    goto :goto_1a

    #@90
    :pswitch_90
    const-string v0, "new-instance"

    #@92
    goto :goto_1a

    #@93
    :pswitch_93
    const-string v0, "new-array"

    #@95
    goto :goto_1a

    #@96
    :pswitch_96
    const-string v0, "filled-new-array"

    #@98
    goto :goto_1a

    #@99
    :pswitch_99
    const-string v0, "check-cast"

    #@9b
    goto/16 :goto_1a

    #@9d
    :pswitch_9d
    const-string v0, "instance-of"

    #@9f
    goto/16 :goto_1a

    #@a1
    :pswitch_a1
    const-string v0, "get-field"

    #@a3
    goto/16 :goto_1a

    #@a5
    :pswitch_a5
    const-string v0, "get-static"

    #@a7
    goto/16 :goto_1a

    #@a9
    :pswitch_a9
    const-string v0, "put-field"

    #@ab
    goto/16 :goto_1a

    #@ad
    :pswitch_ad
    const-string v0, "put-static"

    #@af
    goto/16 :goto_1a

    #@b1
    :pswitch_b1
    const-string v0, "invoke-static"

    #@b3
    goto/16 :goto_1a

    #@b5
    :pswitch_b5
    const-string v0, "invoke-virtual"

    #@b7
    goto/16 :goto_1a

    #@b9
    :pswitch_b9
    const-string v0, "invoke-super"

    #@bb
    goto/16 :goto_1a

    #@bd
    :pswitch_bd
    const-string v0, "invoke-direct"

    #@bf
    goto/16 :goto_1a

    #@c1
    :pswitch_c1
    const-string v0, "invoke-interface"

    #@c3
    goto/16 :goto_1a

    #@c5
    :pswitch_c5
    const-string v0, "move-result"

    #@c7
    goto/16 :goto_1a

    #@c9
    :pswitch_c9
    const-string v0, "move-result-pseudo"

    #@cb
    goto/16 :goto_1a

    #@cd
    :pswitch_cd
    const-string v0, "fill-array-data"

    #@cf
    goto/16 :goto_1a

    #@d1
    nop

    #@d2
    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
        :pswitch_51
        :pswitch_54
        :pswitch_57
        :pswitch_5a
        :pswitch_5d
        :pswitch_60
        :pswitch_63
        :pswitch_66
        :pswitch_69
        :pswitch_6c
        :pswitch_6f
        :pswitch_72
        :pswitch_75
        :pswitch_78
        :pswitch_7b
        :pswitch_7e
        :pswitch_81
        :pswitch_84
        :pswitch_87
        :pswitch_8a
        :pswitch_8d
        :pswitch_90
        :pswitch_93
        :pswitch_96
        :pswitch_99
        :pswitch_9d
        :pswitch_a1
        :pswitch_a5
        :pswitch_a9
        :pswitch_ad
        :pswitch_b1
        :pswitch_b5
        :pswitch_b9
        :pswitch_bd
        :pswitch_c1
        :pswitch_3
        :pswitch_c5
        :pswitch_c9
        :pswitch_cd
    .end packed-switch
.end method
