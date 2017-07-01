.class public final Lcom/android/dx/rop/type/Type;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/rop/type/TypeBearer;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/dx/rop/type/TypeBearer;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dx/rop/type/Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANNOTATION:Lcom/android/dx/rop/type/Type;

.field public static final BOOLEAN:Lcom/android/dx/rop/type/Type;

.field public static final BOOLEAN_ARRAY:Lcom/android/dx/rop/type/Type;

.field public static final BOOLEAN_CLASS:Lcom/android/dx/rop/type/Type;

.field public static final BT_ADDR:I = 0xa

.field public static final BT_BOOLEAN:I = 0x1

.field public static final BT_BYTE:I = 0x2

.field public static final BT_CHAR:I = 0x3

.field public static final BT_COUNT:I = 0xb

.field public static final BT_DOUBLE:I = 0x4

.field public static final BT_FLOAT:I = 0x5

.field public static final BT_INT:I = 0x6

.field public static final BT_LONG:I = 0x7

.field public static final BT_OBJECT:I = 0x9

.field public static final BT_SHORT:I = 0x8

.field public static final BT_VOID:I

.field public static final BYTE:Lcom/android/dx/rop/type/Type;

.field public static final BYTE_ARRAY:Lcom/android/dx/rop/type/Type;

.field public static final BYTE_CLASS:Lcom/android/dx/rop/type/Type;

.field public static final CHAR:Lcom/android/dx/rop/type/Type;

.field public static final CHARACTER_CLASS:Lcom/android/dx/rop/type/Type;

.field public static final CHAR_ARRAY:Lcom/android/dx/rop/type/Type;

.field public static final CLASS:Lcom/android/dx/rop/type/Type;

.field public static final CLONEABLE:Lcom/android/dx/rop/type/Type;

.field public static final DOUBLE:Lcom/android/dx/rop/type/Type;

.field public static final DOUBLE_ARRAY:Lcom/android/dx/rop/type/Type;

.field public static final DOUBLE_CLASS:Lcom/android/dx/rop/type/Type;

.field public static final FLOAT:Lcom/android/dx/rop/type/Type;

.field public static final FLOAT_ARRAY:Lcom/android/dx/rop/type/Type;

.field public static final FLOAT_CLASS:Lcom/android/dx/rop/type/Type;

.field public static final INT:Lcom/android/dx/rop/type/Type;

.field public static final INTEGER_CLASS:Lcom/android/dx/rop/type/Type;

.field public static final INT_ARRAY:Lcom/android/dx/rop/type/Type;

.field public static final KNOWN_NULL:Lcom/android/dx/rop/type/Type;

.field public static final LONG:Lcom/android/dx/rop/type/Type;

.field public static final LONG_ARRAY:Lcom/android/dx/rop/type/Type;

.field public static final LONG_CLASS:Lcom/android/dx/rop/type/Type;

.field public static final OBJECT:Lcom/android/dx/rop/type/Type;

.field public static final OBJECT_ARRAY:Lcom/android/dx/rop/type/Type;

.field public static final RETURN_ADDRESS:Lcom/android/dx/rop/type/Type;

.field public static final SERIALIZABLE:Lcom/android/dx/rop/type/Type;

.field public static final SHORT:Lcom/android/dx/rop/type/Type;

.field public static final SHORT_ARRAY:Lcom/android/dx/rop/type/Type;

.field public static final SHORT_CLASS:Lcom/android/dx/rop/type/Type;

.field public static final STRING:Lcom/android/dx/rop/type/Type;

.field public static final THROWABLE:Lcom/android/dx/rop/type/Type;

.field public static final VOID:Lcom/android/dx/rop/type/Type;

.field public static final VOID_CLASS:Lcom/android/dx/rop/type/Type;

.field private static final internTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/dx/rop/type/Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private arrayType:Lcom/android/dx/rop/type/Type;

.field private final basicType:I

.field private className:Ljava/lang/String;

.field private componentType:Lcom/android/dx/rop/type/Type;

.field private final descriptor:Ljava/lang/String;

.field private initializedType:Lcom/android/dx/rop/type/Type;

.field private final newAt:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    new-instance v0, Ljava/util/HashMap;

    #@2
    const/16 v1, 0x1f4

    #@4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@7
    sput-object v0, Lcom/android/dx/rop/type/Type;->internTable:Ljava/util/HashMap;

    #@9
    new-instance v0, Lcom/android/dx/rop/type/Type;

    #@b
    const-string v1, "Z"

    #@d
    const/4 v2, 0x1

    #@e
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    #@11
    sput-object v0, Lcom/android/dx/rop/type/Type;->BOOLEAN:Lcom/android/dx/rop/type/Type;

    #@13
    new-instance v0, Lcom/android/dx/rop/type/Type;

    #@15
    const-string v1, "B"

    #@17
    const/4 v2, 0x2

    #@18
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    #@1b
    sput-object v0, Lcom/android/dx/rop/type/Type;->BYTE:Lcom/android/dx/rop/type/Type;

    #@1d
    new-instance v0, Lcom/android/dx/rop/type/Type;

    #@1f
    const-string v1, "C"

    #@21
    const/4 v2, 0x3

    #@22
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    #@25
    sput-object v0, Lcom/android/dx/rop/type/Type;->CHAR:Lcom/android/dx/rop/type/Type;

    #@27
    new-instance v0, Lcom/android/dx/rop/type/Type;

    #@29
    const-string v1, "D"

    #@2b
    const/4 v2, 0x4

    #@2c
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    #@2f
    sput-object v0, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    #@31
    new-instance v0, Lcom/android/dx/rop/type/Type;

    #@33
    const-string v1, "F"

    #@35
    const/4 v2, 0x5

    #@36
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    #@39
    sput-object v0, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    #@3b
    new-instance v0, Lcom/android/dx/rop/type/Type;

    #@3d
    const-string v1, "I"

    #@3f
    const/4 v2, 0x6

    #@40
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    #@43
    sput-object v0, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    #@45
    new-instance v0, Lcom/android/dx/rop/type/Type;

    #@47
    const-string v1, "J"

    #@49
    const/4 v2, 0x7

    #@4a
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    #@4d
    sput-object v0, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    #@4f
    new-instance v0, Lcom/android/dx/rop/type/Type;

    #@51
    const-string v1, "S"

    #@53
    const/16 v2, 0x8

    #@55
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    #@58
    sput-object v0, Lcom/android/dx/rop/type/Type;->SHORT:Lcom/android/dx/rop/type/Type;

    #@5a
    new-instance v0, Lcom/android/dx/rop/type/Type;

    #@5c
    const-string v1, "V"

    #@5e
    const/4 v2, 0x0

    #@5f
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    #@62
    sput-object v0, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    #@64
    new-instance v0, Lcom/android/dx/rop/type/Type;

    #@66
    const-string v1, "<null>"

    #@68
    const/16 v2, 0x9

    #@6a
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    #@6d
    sput-object v0, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    #@6f
    new-instance v0, Lcom/android/dx/rop/type/Type;

    #@71
    const-string v1, "<addr>"

    #@73
    const/16 v2, 0xa

    #@75
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    #@78
    sput-object v0, Lcom/android/dx/rop/type/Type;->RETURN_ADDRESS:Lcom/android/dx/rop/type/Type;

    #@7a
    sget-object v0, Lcom/android/dx/rop/type/Type;->BOOLEAN:Lcom/android/dx/rop/type/Type;

    #@7c
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    #@7f
    sget-object v0, Lcom/android/dx/rop/type/Type;->BYTE:Lcom/android/dx/rop/type/Type;

    #@81
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    #@84
    sget-object v0, Lcom/android/dx/rop/type/Type;->CHAR:Lcom/android/dx/rop/type/Type;

    #@86
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    #@89
    sget-object v0, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    #@8b
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    #@8e
    sget-object v0, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    #@90
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    #@93
    sget-object v0, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    #@95
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    #@98
    sget-object v0, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    #@9a
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    #@9d
    sget-object v0, Lcom/android/dx/rop/type/Type;->SHORT:Lcom/android/dx/rop/type/Type;

    #@9f
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    #@a2
    const-string v0, "Ljava/lang/annotation/Annotation;"

    #@a4
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@a7
    move-result-object v0

    #@a8
    sput-object v0, Lcom/android/dx/rop/type/Type;->ANNOTATION:Lcom/android/dx/rop/type/Type;

    #@aa
    const-string v0, "Ljava/lang/Class;"

    #@ac
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@af
    move-result-object v0

    #@b0
    sput-object v0, Lcom/android/dx/rop/type/Type;->CLASS:Lcom/android/dx/rop/type/Type;

    #@b2
    const-string v0, "Ljava/lang/Cloneable;"

    #@b4
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@b7
    move-result-object v0

    #@b8
    sput-object v0, Lcom/android/dx/rop/type/Type;->CLONEABLE:Lcom/android/dx/rop/type/Type;

    #@ba
    const-string v0, "Ljava/lang/Object;"

    #@bc
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@bf
    move-result-object v0

    #@c0
    sput-object v0, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    #@c2
    const-string v0, "Ljava/io/Serializable;"

    #@c4
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@c7
    move-result-object v0

    #@c8
    sput-object v0, Lcom/android/dx/rop/type/Type;->SERIALIZABLE:Lcom/android/dx/rop/type/Type;

    #@ca
    const-string v0, "Ljava/lang/String;"

    #@cc
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@cf
    move-result-object v0

    #@d0
    sput-object v0, Lcom/android/dx/rop/type/Type;->STRING:Lcom/android/dx/rop/type/Type;

    #@d2
    const-string v0, "Ljava/lang/Throwable;"

    #@d4
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@d7
    move-result-object v0

    #@d8
    sput-object v0, Lcom/android/dx/rop/type/Type;->THROWABLE:Lcom/android/dx/rop/type/Type;

    #@da
    const-string v0, "Ljava/lang/Boolean;"

    #@dc
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@df
    move-result-object v0

    #@e0
    sput-object v0, Lcom/android/dx/rop/type/Type;->BOOLEAN_CLASS:Lcom/android/dx/rop/type/Type;

    #@e2
    const-string v0, "Ljava/lang/Byte;"

    #@e4
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@e7
    move-result-object v0

    #@e8
    sput-object v0, Lcom/android/dx/rop/type/Type;->BYTE_CLASS:Lcom/android/dx/rop/type/Type;

    #@ea
    const-string v0, "Ljava/lang/Character;"

    #@ec
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@ef
    move-result-object v0

    #@f0
    sput-object v0, Lcom/android/dx/rop/type/Type;->CHARACTER_CLASS:Lcom/android/dx/rop/type/Type;

    #@f2
    const-string v0, "Ljava/lang/Double;"

    #@f4
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@f7
    move-result-object v0

    #@f8
    sput-object v0, Lcom/android/dx/rop/type/Type;->DOUBLE_CLASS:Lcom/android/dx/rop/type/Type;

    #@fa
    const-string v0, "Ljava/lang/Float;"

    #@fc
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@ff
    move-result-object v0

    #@100
    sput-object v0, Lcom/android/dx/rop/type/Type;->FLOAT_CLASS:Lcom/android/dx/rop/type/Type;

    #@102
    const-string v0, "Ljava/lang/Integer;"

    #@104
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@107
    move-result-object v0

    #@108
    sput-object v0, Lcom/android/dx/rop/type/Type;->INTEGER_CLASS:Lcom/android/dx/rop/type/Type;

    #@10a
    const-string v0, "Ljava/lang/Long;"

    #@10c
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@10f
    move-result-object v0

    #@110
    sput-object v0, Lcom/android/dx/rop/type/Type;->LONG_CLASS:Lcom/android/dx/rop/type/Type;

    #@112
    const-string v0, "Ljava/lang/Short;"

    #@114
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@117
    move-result-object v0

    #@118
    sput-object v0, Lcom/android/dx/rop/type/Type;->SHORT_CLASS:Lcom/android/dx/rop/type/Type;

    #@11a
    const-string v0, "Ljava/lang/Void;"

    #@11c
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@11f
    move-result-object v0

    #@120
    sput-object v0, Lcom/android/dx/rop/type/Type;->VOID_CLASS:Lcom/android/dx/rop/type/Type;

    #@122
    sget-object v0, Lcom/android/dx/rop/type/Type;->BOOLEAN:Lcom/android/dx/rop/type/Type;

    #@124
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getArrayType()Lcom/android/dx/rop/type/Type;

    #@127
    move-result-object v0

    #@128
    sput-object v0, Lcom/android/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/android/dx/rop/type/Type;

    #@12a
    sget-object v0, Lcom/android/dx/rop/type/Type;->BYTE:Lcom/android/dx/rop/type/Type;

    #@12c
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getArrayType()Lcom/android/dx/rop/type/Type;

    #@12f
    move-result-object v0

    #@130
    sput-object v0, Lcom/android/dx/rop/type/Type;->BYTE_ARRAY:Lcom/android/dx/rop/type/Type;

    #@132
    sget-object v0, Lcom/android/dx/rop/type/Type;->CHAR:Lcom/android/dx/rop/type/Type;

    #@134
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getArrayType()Lcom/android/dx/rop/type/Type;

    #@137
    move-result-object v0

    #@138
    sput-object v0, Lcom/android/dx/rop/type/Type;->CHAR_ARRAY:Lcom/android/dx/rop/type/Type;

    #@13a
    sget-object v0, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    #@13c
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getArrayType()Lcom/android/dx/rop/type/Type;

    #@13f
    move-result-object v0

    #@140
    sput-object v0, Lcom/android/dx/rop/type/Type;->DOUBLE_ARRAY:Lcom/android/dx/rop/type/Type;

    #@142
    sget-object v0, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    #@144
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getArrayType()Lcom/android/dx/rop/type/Type;

    #@147
    move-result-object v0

    #@148
    sput-object v0, Lcom/android/dx/rop/type/Type;->FLOAT_ARRAY:Lcom/android/dx/rop/type/Type;

    #@14a
    sget-object v0, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    #@14c
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getArrayType()Lcom/android/dx/rop/type/Type;

    #@14f
    move-result-object v0

    #@150
    sput-object v0, Lcom/android/dx/rop/type/Type;->INT_ARRAY:Lcom/android/dx/rop/type/Type;

    #@152
    sget-object v0, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    #@154
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getArrayType()Lcom/android/dx/rop/type/Type;

    #@157
    move-result-object v0

    #@158
    sput-object v0, Lcom/android/dx/rop/type/Type;->LONG_ARRAY:Lcom/android/dx/rop/type/Type;

    #@15a
    sget-object v0, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    #@15c
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getArrayType()Lcom/android/dx/rop/type/Type;

    #@15f
    move-result-object v0

    #@160
    sput-object v0, Lcom/android/dx/rop/type/Type;->OBJECT_ARRAY:Lcom/android/dx/rop/type/Type;

    #@162
    sget-object v0, Lcom/android/dx/rop/type/Type;->SHORT:Lcom/android/dx/rop/type/Type;

    #@164
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getArrayType()Lcom/android/dx/rop/type/Type;

    #@167
    move-result-object v0

    #@168
    sput-object v0, Lcom/android/dx/rop/type/Type;->SHORT_ARRAY:Lcom/android/dx/rop/type/Type;

    #@16a
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;II)V

    #@4
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    if-nez p1, :cond_e

    #@6
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string v1, "descriptor == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    if-ltz p2, :cond_14

    #@10
    const/16 v0, 0xb

    #@12
    if-lt p2, v0, :cond_1c

    #@14
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string v1, "bad basicType"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    :cond_1c
    const/4 v0, -0x1

    #@1d
    if-ge p3, v0, :cond_27

    #@1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    const-string v1, "newAt < -1"

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    :cond_27
    iput-object p1, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@29
    iput p2, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    #@2b
    iput p3, p0, Lcom/android/dx/rop/type/Type;->newAt:I

    #@2d
    iput-object v1, p0, Lcom/android/dx/rop/type/Type;->arrayType:Lcom/android/dx/rop/type/Type;

    #@2f
    iput-object v1, p0, Lcom/android/dx/rop/type/Type;->componentType:Lcom/android/dx/rop/type/Type;

    #@31
    iput-object v1, p0, Lcom/android/dx/rop/type/Type;->initializedType:Lcom/android/dx/rop/type/Type;

    #@33
    return-void
.end method

.method public static intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;
    .registers 6

    #@0
    const/4 v1, 0x1

    #@1
    sget-object v2, Lcom/android/dx/rop/type/Type;->internTable:Ljava/util/HashMap;

    #@3
    monitor-enter v2

    #@4
    :try_start_4
    sget-object v0, Lcom/android/dx/rop/type/Type;->internTable:Ljava/util/HashMap;

    #@6
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/dx/rop/type/Type;

    #@c
    monitor-exit v2

    #@d
    if-eqz v0, :cond_13

    #@f
    :goto_f
    return-object v0

    #@10
    :catchall_10
    move-exception v0

    #@11
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    #@12
    throw v0

    #@13
    :cond_13
    const/4 v0, 0x0

    #@14
    :try_start_14
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
    :try_end_17
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_17} :catch_29
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_17} :catch_32

    #@17
    move-result v0

    #@18
    const/16 v2, 0x5b

    #@1a
    if-ne v0, v2, :cond_3b

    #@1c
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getArrayType()Lcom/android/dx/rop/type/Type;

    #@27
    move-result-object v0

    #@28
    goto :goto_f

    #@29
    :catch_29
    move-exception v0

    #@2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2c
    const-string v1, "descriptor is empty"

    #@2e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    :catch_32
    move-exception v0

    #@33
    new-instance v0, Ljava/lang/NullPointerException;

    #@35
    const-string v1, "descriptor == null"

    #@37
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    :cond_3b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3e
    move-result v2

    #@3f
    const/16 v3, 0x4c

    #@41
    if-ne v0, v3, :cond_4d

    #@43
    add-int/lit8 v0, v2, -0x1

    #@45
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@48
    move-result v0

    #@49
    const/16 v3, 0x3b

    #@4b
    if-eq v0, v3, :cond_66

    #@4d
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4f
    new-instance v1, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string v2, "bad descriptor: "

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v0

    #@66
    :cond_66
    move v0, v1

    #@67
    :goto_67
    add-int/lit8 v3, v2, -0x1

    #@69
    if-ge v0, v3, :cond_b7

    #@6b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@6e
    move-result v3

    #@6f
    sparse-switch v3, :sswitch_data_c4

    #@72
    :cond_72
    add-int/lit8 v0, v0, 0x1

    #@74
    goto :goto_67

    #@75
    :sswitch_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@77
    new-instance v1, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string v2, "bad descriptor: "

    #@7e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v1

    #@82
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v1

    #@8a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8d
    throw v0

    #@8e
    :sswitch_8e
    if-eq v0, v1, :cond_9e

    #@90
    add-int/lit8 v3, v2, -0x1

    #@92
    if-eq v0, v3, :cond_9e

    #@94
    add-int/lit8 v3, v0, -0x1

    #@96
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@99
    move-result v3

    #@9a
    const/16 v4, 0x2f

    #@9c
    if-ne v3, v4, :cond_72

    #@9e
    :cond_9e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a0
    new-instance v1, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string v2, "bad descriptor: "

    #@a7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v1

    #@ab
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v1

    #@af
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v1

    #@b3
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b6
    throw v0

    #@b7
    :cond_b7
    new-instance v0, Lcom/android/dx/rop/type/Type;

    #@b9
    const/16 v1, 0x9

    #@bb
    invoke-direct {v0, p0, v1}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    #@be
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    #@c1
    move-result-object v0

    #@c2
    goto/16 :goto_f

    #@c4
    :sswitch_data_c4
    .sparse-switch
        0x28 -> :sswitch_75
        0x29 -> :sswitch_75
        0x2e -> :sswitch_75
        0x2f -> :sswitch_8e
        0x3b -> :sswitch_75
        0x5b -> :sswitch_75
    .end sparse-switch
.end method

.method public static internClassName(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;
    .registers 3

    #@0
    if-nez p0, :cond_a

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string v1, "name == null"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    const-string v0, "["

    #@c
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_17

    #@12
    invoke-static {p0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@15
    move-result-object v0

    #@16
    :goto_16
    return-object v0

    #@17
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const/16 v1, 0x4c

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    const/16 v1, 0x3b

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@33
    move-result-object v0

    #@34
    goto :goto_16
.end method

.method public static internReturnType(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;
    .registers 3

    #@0
    :try_start_0
    const-string v0, "V"

    #@2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_14

    #@8
    sget-object v0, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_b

    #@a
    :goto_a
    return-object v0

    #@b
    :catch_b
    move-exception v0

    #@c
    new-instance v0, Ljava/lang/NullPointerException;

    #@e
    const-string v1, "descriptor == null"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    :cond_14
    invoke-static {p0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@17
    move-result-object v0

    #@18
    goto :goto_a
.end method

.method private static putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;
    .registers 4

    #@0
    sget-object v1, Lcom/android/dx/rop/type/Type;->internTable:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    sget-object v0, Lcom/android/dx/rop/type/Type;->internTable:Ljava/util/HashMap;

    #@9
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/dx/rop/type/Type;

    #@f
    if-eqz v0, :cond_13

    #@11
    monitor-exit v1

    #@12
    :goto_12
    return-object v0

    #@13
    :cond_13
    sget-object v0, Lcom/android/dx/rop/type/Type;->internTable:Ljava/util/HashMap;

    #@15
    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    monitor-exit v1

    #@19
    move-object v0, p0

    #@1a
    goto :goto_12

    #@1b
    :catchall_1b
    move-exception v0

    #@1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    #@1d
    throw v0
.end method


# virtual methods
.method public asUninitialized(I)Lcom/android/dx/rop/type/Type;
    .registers 5

    #@0
    if-gez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string v1, "newAt < 0"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->isReference()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_2b

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string v2, "not a reference type: "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    iget-object v2, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    :cond_2b
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->isUninitialized()Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_4c

    #@31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@33
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string v2, "already uninitialized: "

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    iget-object v2, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v0

    #@4c
    :cond_4c
    new-instance v0, Lcom/android/dx/rop/type/Type;

    #@4e
    new-instance v1, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const/16 v2, 0x4e

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-static {p1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    iget-object v2, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    const/16 v2, 0x9

    #@6d
    invoke-direct {v0, v1, v2, p1}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;II)V

    #@70
    iput-object p0, v0, Lcom/android/dx/rop/type/Type;->initializedType:Lcom/android/dx/rop/type/Type;

    #@72
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    #@75
    move-result-object v0

    #@76
    return-object v0
.end method

.method public compareTo(Lcom/android/dx/rop/type/Type;)I
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@2
    iget-object v1, p1, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    #@0
    check-cast p1, Lcom/android/dx/rop/type/Type;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/type/Type;->compareTo(Lcom/android/dx/rop/type/Type;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    if-ne p0, p1, :cond_4

    #@2
    const/4 v0, 0x1

    #@3
    :goto_3
    return v0

    #@4
    :cond_4
    instance-of v0, p1, Lcom/android/dx/rop/type/Type;

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    goto :goto_3

    #@a
    :cond_a
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@c
    check-cast p1, Lcom/android/dx/rop/type/Type;

    #@e
    iget-object v1, p1, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    goto :goto_3
.end method

.method public getArrayType()Lcom/android/dx/rop/type/Type;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->arrayType:Lcom/android/dx/rop/type/Type;

    #@2
    if-nez v0, :cond_26

    #@4
    new-instance v0, Lcom/android/dx/rop/type/Type;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const/16 v2, 0x5b

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    iget-object v2, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    const/16 v2, 0x9

    #@1d
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    #@20
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->putIntern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lcom/android/dx/rop/type/Type;->arrayType:Lcom/android/dx/rop/type/Type;

    #@26
    :cond_26
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->arrayType:Lcom/android/dx/rop/type/Type;

    #@28
    return-object v0
.end method

.method public getBasicFrameType()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    #@2
    packed-switch v0, :pswitch_data_a

    #@5
    :pswitch_5
    iget v0, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    #@7
    :goto_7
    return v0

    #@8
    :pswitch_8
    const/4 v0, 0x6

    #@9
    goto :goto_7

    #@a
    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public getBasicType()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    #@2
    return v0
.end method

.method public getCategory()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    #@2
    packed-switch v0, :pswitch_data_a

    #@5
    :pswitch_5
    const/4 v0, 0x1

    #@6
    :goto_6
    return v0

    #@7
    :pswitch_7
    const/4 v0, 0x2

    #@8
    goto :goto_6

    #@9
    nop

    #@a
    :pswitch_data_a
    .packed-switch 0x4
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public getClassName()Ljava/lang/String;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->className:Ljava/lang/String;

    #@2
    if-nez v0, :cond_34

    #@4
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->isReference()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_25

    #@a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string v2, "not an object type: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    iget-object v2, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    :cond_25
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@27
    const/4 v1, 0x0

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@2b
    move-result v0

    #@2c
    const/16 v1, 0x5b

    #@2e
    if-ne v0, v1, :cond_37

    #@30
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@32
    iput-object v0, p0, Lcom/android/dx/rop/type/Type;->className:Ljava/lang/String;

    #@34
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->className:Ljava/lang/String;

    #@36
    return-object v0

    #@37
    :cond_37
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@39
    const/4 v1, 0x1

    #@3a
    iget-object v2, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@3c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@3f
    move-result v2

    #@40
    add-int/lit8 v2, v2, -0x1

    #@42
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    iput-object v0, p0, Lcom/android/dx/rop/type/Type;->className:Ljava/lang/String;

    #@48
    goto :goto_34
.end method

.method public getComponentType()Lcom/android/dx/rop/type/Type;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->componentType:Lcom/android/dx/rop/type/Type;

    #@2
    if-nez v0, :cond_37

    #@4
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v0

    #@b
    const/16 v1, 0x5b

    #@d
    if-eq v0, v1, :cond_2a

    #@f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string v2, "not an array type: "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    :cond_2a
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@2c
    const/4 v1, 0x1

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@34
    move-result-object v0

    #@35
    iput-object v0, p0, Lcom/android/dx/rop/type/Type;->componentType:Lcom/android/dx/rop/type/Type;

    #@37
    :cond_37
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->componentType:Lcom/android/dx/rop/type/Type;

    #@39
    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getFrameType()Lcom/android/dx/rop/type/Type;
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    #@2
    packed-switch v0, :pswitch_data_a

    #@5
    :goto_5
    :pswitch_5
    return-object p0

    #@6
    :pswitch_6
    sget-object p0, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    #@8
    goto :goto_5

    #@9
    nop

    #@a
    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public bridge synthetic getFrameType()Lcom/android/dx/rop/type/TypeBearer;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->getFrameType()Lcom/android/dx/rop/type/Type;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getInitializedType()Lcom/android/dx/rop/type/Type;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->initializedType:Lcom/android/dx/rop/type/Type;

    #@2
    if-nez v0, :cond_1f

    #@4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v2, "initialized type: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    iget-object v2, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    :cond_1f
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->initializedType:Lcom/android/dx/rop/type/Type;

    #@21
    return-object v0
.end method

.method public getNewAt()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/rop/type/Type;->newAt:I

    #@2
    return v0
.end method

.method public getType()Lcom/android/dx/rop/type/Type;
    .registers 1

    #@0
    return-object p0
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isArray()Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@3
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v1

    #@7
    const/16 v2, 0x5b

    #@9
    if-ne v1, v2, :cond_c

    #@b
    const/4 v0, 0x1

    #@c
    :cond_c
    return v0
.end method

.method public isArrayOrKnownNull()Z
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->isArray()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_e

    #@6
    sget-object v0, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    #@8
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_10

    #@e
    :cond_e
    const/4 v0, 0x1

    #@f
    :goto_f
    return v0

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    goto :goto_f
.end method

.method public isCategory1()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    #@2
    packed-switch v0, :pswitch_data_a

    #@5
    :pswitch_5
    const/4 v0, 0x1

    #@6
    :goto_6
    return v0

    #@7
    :pswitch_7
    const/4 v0, 0x0

    #@8
    goto :goto_6

    #@9
    nop

    #@a
    :pswitch_data_a
    .packed-switch 0x4
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public isCategory2()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    #@2
    packed-switch v0, :pswitch_data_a

    #@5
    :pswitch_5
    const/4 v0, 0x0

    #@6
    :goto_6
    return v0

    #@7
    :pswitch_7
    const/4 v0, 0x1

    #@8
    goto :goto_6

    #@9
    nop

    #@a
    :pswitch_data_a
    .packed-switch 0x4
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public isConstant()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isIntlike()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    #@2
    packed-switch v0, :pswitch_data_a

    #@5
    :pswitch_5
    const/4 v0, 0x0

    #@6
    :goto_6
    return v0

    #@7
    :pswitch_7
    const/4 v0, 0x1

    #@8
    goto :goto_6

    #@9
    nop

    #@a
    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public isPrimitive()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    #@2
    packed-switch v0, :pswitch_data_a

    #@5
    const/4 v0, 0x0

    #@6
    :goto_6
    return v0

    #@7
    :pswitch_7
    const/4 v0, 0x1

    #@8
    goto :goto_6

    #@9
    nop

    #@a
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public isReference()Z
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    #@2
    const/16 v1, 0x9

    #@4
    if-ne v0, v1, :cond_8

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
.end method

.method public isUninitialized()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/rop/type/Type;->newAt:I

    #@2
    if-ltz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public toHuman()Ljava/lang/String;
    .registers 4

    #@0
    iget v0, p0, Lcom/android/dx/rop/type/Type;->basicType:I

    #@2
    packed-switch v0, :pswitch_data_52

    #@5
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@7
    :goto_7
    return-object v0

    #@8
    :pswitch_8
    const-string v0, "void"

    #@a
    goto :goto_7

    #@b
    :pswitch_b
    const-string v0, "boolean"

    #@d
    goto :goto_7

    #@e
    :pswitch_e
    const-string v0, "byte"

    #@10
    goto :goto_7

    #@11
    :pswitch_11
    const-string v0, "char"

    #@13
    goto :goto_7

    #@14
    :pswitch_14
    const-string v0, "double"

    #@16
    goto :goto_7

    #@17
    :pswitch_17
    const-string v0, "float"

    #@19
    goto :goto_7

    #@1a
    :pswitch_1a
    const-string v0, "int"

    #@1c
    goto :goto_7

    #@1d
    :pswitch_1d
    const-string v0, "long"

    #@1f
    goto :goto_7

    #@20
    :pswitch_20
    const-string v0, "short"

    #@22
    goto :goto_7

    #@23
    :pswitch_23
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->isArray()Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_45

    #@29
    new-instance v0, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->getComponentType()Lcom/android/dx/rop/type/Type;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    const-string v1, "[]"

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    goto :goto_7

    #@45
    :cond_45
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    const-string v1, "/"

    #@4b
    const-string v2, "."

    #@4d
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    goto :goto_7

    #@52
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    #@2
    return-object v0
.end method
