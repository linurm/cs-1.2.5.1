.class public final enum Lcom/android/dx/dex/file/ItemType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/android/dx/util/ToHuman;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/dx/dex/file/ItemType;",
        ">;",
        "Lcom/android/dx/util/ToHuman;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATIONS_DIRECTORY_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_SET_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_SET_REF_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_SET_REF_LIST:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_CLASS_DATA_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_CLASS_DEF_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_CODE_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_DEBUG_INFO_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ENCODED_ARRAY_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_EXCEPTION_HANDLER_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_FIELD_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_HEADER_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_MAP_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_MAP_LIST:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_METHOD_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_PROTO_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_STRING_DATA_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_STRING_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_TYPE_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_TYPE_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_TYPE_LIST:Lcom/android/dx/dex/file/ItemType;


# instance fields
.field private final humanName:Ljava/lang/String;

.field private final mapValue:I

.field private final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    #@0
    const/4 v9, 0x3

    #@1
    const/4 v8, 0x2

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    const/4 v5, -0x1

    #@5
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    #@7
    const-string v1, "TYPE_HEADER_ITEM"

    #@9
    const-string v2, "header_item"

    #@b
    invoke-direct {v0, v1, v6, v6, v2}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@e
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_HEADER_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@10
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    #@12
    const-string v1, "TYPE_STRING_ID_ITEM"

    #@14
    const-string v2, "string_id_item"

    #@16
    invoke-direct {v0, v1, v7, v7, v2}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@19
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_STRING_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@1b
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    #@1d
    const-string v1, "TYPE_TYPE_ID_ITEM"

    #@1f
    const-string v2, "type_id_item"

    #@21
    invoke-direct {v0, v1, v8, v8, v2}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@24
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_TYPE_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@26
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    #@28
    const-string v1, "TYPE_PROTO_ID_ITEM"

    #@2a
    const-string v2, "proto_id_item"

    #@2c
    invoke-direct {v0, v1, v9, v9, v2}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@2f
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_PROTO_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@31
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    #@33
    const-string v1, "TYPE_FIELD_ID_ITEM"

    #@35
    const/4 v2, 0x4

    #@36
    const/4 v3, 0x4

    #@37
    const-string v4, "field_id_item"

    #@39
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@3c
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_FIELD_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@3e
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    #@40
    const-string v1, "TYPE_METHOD_ID_ITEM"

    #@42
    const/4 v2, 0x5

    #@43
    const/4 v3, 0x5

    #@44
    const-string v4, "method_id_item"

    #@46
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@49
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_METHOD_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@4b
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    #@4d
    const-string v1, "TYPE_CLASS_DEF_ITEM"

    #@4f
    const/4 v2, 0x6

    #@50
    const/4 v3, 0x6

    #@51
    const-string v4, "class_def_item"

    #@53
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@56
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_CLASS_DEF_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@58
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    #@5a
    const-string v1, "TYPE_MAP_LIST"

    #@5c
    const/4 v2, 0x7

    #@5d
    const/16 v3, 0x1000

    #@5f
    const-string v4, "map_list"

    #@61
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@64
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/android/dx/dex/file/ItemType;

    #@66
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    #@68
    const-string v1, "TYPE_TYPE_LIST"

    #@6a
    const/16 v2, 0x8

    #@6c
    const/16 v3, 0x1001

    #@6e
    const-string v4, "type_list"

    #@70
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@73
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_TYPE_LIST:Lcom/android/dx/dex/file/ItemType;

    #@75
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    #@77
    const-string v1, "TYPE_ANNOTATION_SET_REF_LIST"

    #@79
    const/16 v2, 0x9

    #@7b
    const/16 v3, 0x1002

    #@7d
    const-string v4, "annotation_set_ref_list"

    #@7f
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@82
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_LIST:Lcom/android/dx/dex/file/ItemType;

    #@84
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    #@86
    const-string v1, "TYPE_ANNOTATION_SET_ITEM"

    #@88
    const/16 v2, 0xa

    #@8a
    const/16 v3, 0x1003

    #@8c
    const-string v4, "annotation_set_item"

    #@8e
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@91
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@93
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    #@95
    const-string v1, "TYPE_CLASS_DATA_ITEM"

    #@97
    const/16 v2, 0xb

    #@99
    const/16 v3, 0x2000

    #@9b
    const-string v4, "class_data_item"

    #@9d
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@a0
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_CLASS_DATA_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@a2
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    #@a4
    const-string v1, "TYPE_CODE_ITEM"

    #@a6
    const/16 v2, 0xc

    #@a8
    const/16 v3, 0x2001

    #@aa
    const-string v4, "code_item"

    #@ac
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@af
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_CODE_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@b1
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    #@b3
    const-string v1, "TYPE_STRING_DATA_ITEM"

    #@b5
    const/16 v2, 0xd

    #@b7
    const/16 v3, 0x2002

    #@b9
    const-string v4, "string_data_item"

    #@bb
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@be
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_STRING_DATA_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@c0
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    #@c2
    const-string v1, "TYPE_DEBUG_INFO_ITEM"

    #@c4
    const/16 v2, 0xe

    #@c6
    const/16 v3, 0x2003

    #@c8
    const-string v4, "debug_info_item"

    #@ca
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@cd
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_DEBUG_INFO_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@cf
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    #@d1
    const-string v1, "TYPE_ANNOTATION_ITEM"

    #@d3
    const/16 v2, 0xf

    #@d5
    const/16 v3, 0x2004

    #@d7
    const-string v4, "annotation_item"

    #@d9
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@dc
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@de
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    #@e0
    const-string v1, "TYPE_ENCODED_ARRAY_ITEM"

    #@e2
    const/16 v2, 0x10

    #@e4
    const/16 v3, 0x2005

    #@e6
    const-string v4, "encoded_array_item"

    #@e8
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@eb
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ENCODED_ARRAY_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@ed
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    #@ef
    const-string v1, "TYPE_ANNOTATIONS_DIRECTORY_ITEM"

    #@f1
    const/16 v2, 0x11

    #@f3
    const/16 v3, 0x2006

    #@f5
    const-string v4, "annotations_directory_item"

    #@f7
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@fa
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATIONS_DIRECTORY_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@fc
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    #@fe
    const-string v1, "TYPE_MAP_ITEM"

    #@100
    const/16 v2, 0x12

    #@102
    const-string v3, "map_item"

    #@104
    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@107
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_MAP_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@109
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    #@10b
    const-string v1, "TYPE_TYPE_ITEM"

    #@10d
    const/16 v2, 0x13

    #@10f
    const-string v3, "type_item"

    #@111
    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@114
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_TYPE_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@116
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    #@118
    const-string v1, "TYPE_EXCEPTION_HANDLER_ITEM"

    #@11a
    const/16 v2, 0x14

    #@11c
    const-string v3, "exception_handler_item"

    #@11e
    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@121
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_EXCEPTION_HANDLER_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@123
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    #@125
    const-string v1, "TYPE_ANNOTATION_SET_REF_ITEM"

    #@127
    const/16 v2, 0x15

    #@129
    const-string v3, "annotation_set_ref_item"

    #@12b
    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    #@12e
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@130
    const/16 v0, 0x16

    #@132
    new-array v0, v0, [Lcom/android/dx/dex/file/ItemType;

    #@134
    sget-object v1, Lcom/android/dx/dex/file/ItemType;->TYPE_HEADER_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@136
    aput-object v1, v0, v6

    #@138
    sget-object v1, Lcom/android/dx/dex/file/ItemType;->TYPE_STRING_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@13a
    aput-object v1, v0, v7

    #@13c
    sget-object v1, Lcom/android/dx/dex/file/ItemType;->TYPE_TYPE_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@13e
    aput-object v1, v0, v8

    #@140
    sget-object v1, Lcom/android/dx/dex/file/ItemType;->TYPE_PROTO_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@142
    aput-object v1, v0, v9

    #@144
    const/4 v1, 0x4

    #@145
    sget-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_FIELD_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@147
    aput-object v2, v0, v1

    #@149
    const/4 v1, 0x5

    #@14a
    sget-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_METHOD_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@14c
    aput-object v2, v0, v1

    #@14e
    const/4 v1, 0x6

    #@14f
    sget-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_CLASS_DEF_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@151
    aput-object v2, v0, v1

    #@153
    const/4 v1, 0x7

    #@154
    sget-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/android/dx/dex/file/ItemType;

    #@156
    aput-object v2, v0, v1

    #@158
    const/16 v1, 0x8

    #@15a
    sget-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_TYPE_LIST:Lcom/android/dx/dex/file/ItemType;

    #@15c
    aput-object v2, v0, v1

    #@15e
    const/16 v1, 0x9

    #@160
    sget-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_LIST:Lcom/android/dx/dex/file/ItemType;

    #@162
    aput-object v2, v0, v1

    #@164
    const/16 v1, 0xa

    #@166
    sget-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@168
    aput-object v2, v0, v1

    #@16a
    const/16 v1, 0xb

    #@16c
    sget-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_CLASS_DATA_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@16e
    aput-object v2, v0, v1

    #@170
    const/16 v1, 0xc

    #@172
    sget-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_CODE_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@174
    aput-object v2, v0, v1

    #@176
    const/16 v1, 0xd

    #@178
    sget-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_STRING_DATA_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@17a
    aput-object v2, v0, v1

    #@17c
    const/16 v1, 0xe

    #@17e
    sget-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_DEBUG_INFO_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@180
    aput-object v2, v0, v1

    #@182
    const/16 v1, 0xf

    #@184
    sget-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@186
    aput-object v2, v0, v1

    #@188
    const/16 v1, 0x10

    #@18a
    sget-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_ENCODED_ARRAY_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@18c
    aput-object v2, v0, v1

    #@18e
    const/16 v1, 0x11

    #@190
    sget-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATIONS_DIRECTORY_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@192
    aput-object v2, v0, v1

    #@194
    const/16 v1, 0x12

    #@196
    sget-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_MAP_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@198
    aput-object v2, v0, v1

    #@19a
    const/16 v1, 0x13

    #@19c
    sget-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_TYPE_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@19e
    aput-object v2, v0, v1

    #@1a0
    const/16 v1, 0x14

    #@1a2
    sget-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_EXCEPTION_HANDLER_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@1a4
    aput-object v2, v0, v1

    #@1a6
    const/16 v1, 0x15

    #@1a8
    sget-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@1aa
    aput-object v2, v0, v1

    #@1ac
    sput-object v0, Lcom/android/dx/dex/file/ItemType;->$VALUES:[Lcom/android/dx/dex/file/ItemType;

    #@1ae
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    iput p3, p0, Lcom/android/dx/dex/file/ItemType;->mapValue:I

    #@5
    iput-object p4, p0, Lcom/android/dx/dex/file/ItemType;->typeName:Ljava/lang/String;

    #@7
    const-string v0, "_item"

    #@9
    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1a

    #@f
    const/4 v0, 0x0

    #@10
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    #@13
    move-result v1

    #@14
    add-int/lit8 v1, v1, -0x5

    #@16
    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@19
    move-result-object p4

    #@1a
    :cond_1a
    const/16 v0, 0x5f

    #@1c
    const/16 v1, 0x20

    #@1e
    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lcom/android/dx/dex/file/ItemType;->humanName:Ljava/lang/String;

    #@24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dx/dex/file/ItemType;
    .registers 2

    #@0
    const-class v0, Lcom/android/dx/dex/file/ItemType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/dx/dex/file/ItemType;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/dx/dex/file/ItemType;
    .registers 1

    #@0
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->$VALUES:[Lcom/android/dx/dex/file/ItemType;

    #@2
    invoke-virtual {v0}, [Lcom/android/dx/dex/file/ItemType;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/android/dx/dex/file/ItemType;

    #@8
    return-object v0
.end method


# virtual methods
.method public getMapValue()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/dex/file/ItemType;->mapValue:I

    #@2
    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/ItemType;->typeName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/ItemType;->humanName:Ljava/lang/String;

    #@2
    return-object v0
.end method
