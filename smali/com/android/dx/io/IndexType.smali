.class public final enum Lcom/android/dx/io/IndexType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/dx/io/IndexType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dx/io/IndexType;

.field public static final enum FIELD_OFFSET:Lcom/android/dx/io/IndexType;

.field public static final enum FIELD_REF:Lcom/android/dx/io/IndexType;

.field public static final enum INLINE_METHOD:Lcom/android/dx/io/IndexType;

.field public static final enum METHOD_REF:Lcom/android/dx/io/IndexType;

.field public static final enum NONE:Lcom/android/dx/io/IndexType;

.field public static final enum STRING_REF:Lcom/android/dx/io/IndexType;

.field public static final enum TYPE_REF:Lcom/android/dx/io/IndexType;

.field public static final enum UNKNOWN:Lcom/android/dx/io/IndexType;

.field public static final enum VARIES:Lcom/android/dx/io/IndexType;

.field public static final enum VTABLE_OFFSET:Lcom/android/dx/io/IndexType;


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
    new-instance v0, Lcom/android/dx/io/IndexType;

    #@7
    const-string v1, "UNKNOWN"

    #@9
    invoke-direct {v0, v1, v3}, Lcom/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Lcom/android/dx/io/IndexType;->UNKNOWN:Lcom/android/dx/io/IndexType;

    #@e
    new-instance v0, Lcom/android/dx/io/IndexType;

    #@10
    const-string v1, "NONE"

    #@12
    invoke-direct {v0, v1, v4}, Lcom/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/android/dx/io/IndexType;->NONE:Lcom/android/dx/io/IndexType;

    #@17
    new-instance v0, Lcom/android/dx/io/IndexType;

    #@19
    const-string v1, "VARIES"

    #@1b
    invoke-direct {v0, v1, v5}, Lcom/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    #@1e
    sput-object v0, Lcom/android/dx/io/IndexType;->VARIES:Lcom/android/dx/io/IndexType;

    #@20
    new-instance v0, Lcom/android/dx/io/IndexType;

    #@22
    const-string v1, "TYPE_REF"

    #@24
    invoke-direct {v0, v1, v6}, Lcom/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    #@27
    sput-object v0, Lcom/android/dx/io/IndexType;->TYPE_REF:Lcom/android/dx/io/IndexType;

    #@29
    new-instance v0, Lcom/android/dx/io/IndexType;

    #@2b
    const-string v1, "STRING_REF"

    #@2d
    invoke-direct {v0, v1, v7}, Lcom/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v0, Lcom/android/dx/io/IndexType;->STRING_REF:Lcom/android/dx/io/IndexType;

    #@32
    new-instance v0, Lcom/android/dx/io/IndexType;

    #@34
    const-string v1, "METHOD_REF"

    #@36
    const/4 v2, 0x5

    #@37
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    #@3a
    sput-object v0, Lcom/android/dx/io/IndexType;->METHOD_REF:Lcom/android/dx/io/IndexType;

    #@3c
    new-instance v0, Lcom/android/dx/io/IndexType;

    #@3e
    const-string v1, "FIELD_REF"

    #@40
    const/4 v2, 0x6

    #@41
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    #@44
    sput-object v0, Lcom/android/dx/io/IndexType;->FIELD_REF:Lcom/android/dx/io/IndexType;

    #@46
    new-instance v0, Lcom/android/dx/io/IndexType;

    #@48
    const-string v1, "INLINE_METHOD"

    #@4a
    const/4 v2, 0x7

    #@4b
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    #@4e
    sput-object v0, Lcom/android/dx/io/IndexType;->INLINE_METHOD:Lcom/android/dx/io/IndexType;

    #@50
    new-instance v0, Lcom/android/dx/io/IndexType;

    #@52
    const-string v1, "VTABLE_OFFSET"

    #@54
    const/16 v2, 0x8

    #@56
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    #@59
    sput-object v0, Lcom/android/dx/io/IndexType;->VTABLE_OFFSET:Lcom/android/dx/io/IndexType;

    #@5b
    new-instance v0, Lcom/android/dx/io/IndexType;

    #@5d
    const-string v1, "FIELD_OFFSET"

    #@5f
    const/16 v2, 0x9

    #@61
    invoke-direct {v0, v1, v2}, Lcom/android/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    #@64
    sput-object v0, Lcom/android/dx/io/IndexType;->FIELD_OFFSET:Lcom/android/dx/io/IndexType;

    #@66
    const/16 v0, 0xa

    #@68
    new-array v0, v0, [Lcom/android/dx/io/IndexType;

    #@6a
    sget-object v1, Lcom/android/dx/io/IndexType;->UNKNOWN:Lcom/android/dx/io/IndexType;

    #@6c
    aput-object v1, v0, v3

    #@6e
    sget-object v1, Lcom/android/dx/io/IndexType;->NONE:Lcom/android/dx/io/IndexType;

    #@70
    aput-object v1, v0, v4

    #@72
    sget-object v1, Lcom/android/dx/io/IndexType;->VARIES:Lcom/android/dx/io/IndexType;

    #@74
    aput-object v1, v0, v5

    #@76
    sget-object v1, Lcom/android/dx/io/IndexType;->TYPE_REF:Lcom/android/dx/io/IndexType;

    #@78
    aput-object v1, v0, v6

    #@7a
    sget-object v1, Lcom/android/dx/io/IndexType;->STRING_REF:Lcom/android/dx/io/IndexType;

    #@7c
    aput-object v1, v0, v7

    #@7e
    const/4 v1, 0x5

    #@7f
    sget-object v2, Lcom/android/dx/io/IndexType;->METHOD_REF:Lcom/android/dx/io/IndexType;

    #@81
    aput-object v2, v0, v1

    #@83
    const/4 v1, 0x6

    #@84
    sget-object v2, Lcom/android/dx/io/IndexType;->FIELD_REF:Lcom/android/dx/io/IndexType;

    #@86
    aput-object v2, v0, v1

    #@88
    const/4 v1, 0x7

    #@89
    sget-object v2, Lcom/android/dx/io/IndexType;->INLINE_METHOD:Lcom/android/dx/io/IndexType;

    #@8b
    aput-object v2, v0, v1

    #@8d
    const/16 v1, 0x8

    #@8f
    sget-object v2, Lcom/android/dx/io/IndexType;->VTABLE_OFFSET:Lcom/android/dx/io/IndexType;

    #@91
    aput-object v2, v0, v1

    #@93
    const/16 v1, 0x9

    #@95
    sget-object v2, Lcom/android/dx/io/IndexType;->FIELD_OFFSET:Lcom/android/dx/io/IndexType;

    #@97
    aput-object v2, v0, v1

    #@99
    sput-object v0, Lcom/android/dx/io/IndexType;->$VALUES:[Lcom/android/dx/io/IndexType;

    #@9b
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/dx/io/IndexType;
    .registers 2

    #@0
    const-class v0, Lcom/android/dx/io/IndexType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/dx/io/IndexType;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/dx/io/IndexType;
    .registers 1

    #@0
    sget-object v0, Lcom/android/dx/io/IndexType;->$VALUES:[Lcom/android/dx/io/IndexType;

    #@2
    invoke-virtual {v0}, [Lcom/android/dx/io/IndexType;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/android/dx/io/IndexType;

    #@8
    return-object v0
.end method
