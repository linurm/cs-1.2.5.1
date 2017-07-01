.class final enum Lcom/android/dx/dex/file/MixedItemSection$SortType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/file/MixedItemSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SortType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/dx/dex/file/MixedItemSection$SortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dx/dex/file/MixedItemSection$SortType;

.field public static final enum INSTANCE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

.field public static final enum NONE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

.field public static final enum TYPE:Lcom/android/dx/dex/file/MixedItemSection$SortType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    new-instance v0, Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@5
    const-string v1, "NONE"

    #@7
    invoke-direct {v0, v1, v2}, Lcom/android/dx/dex/file/MixedItemSection$SortType;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Lcom/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@c
    new-instance v0, Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@e
    const-string v1, "TYPE"

    #@10
    invoke-direct {v0, v1, v3}, Lcom/android/dx/dex/file/MixedItemSection$SortType;-><init>(Ljava/lang/String;I)V

    #@13
    sput-object v0, Lcom/android/dx/dex/file/MixedItemSection$SortType;->TYPE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@15
    new-instance v0, Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@17
    const-string v1, "INSTANCE"

    #@19
    invoke-direct {v0, v1, v4}, Lcom/android/dx/dex/file/MixedItemSection$SortType;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v0, Lcom/android/dx/dex/file/MixedItemSection$SortType;->INSTANCE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@1e
    const/4 v0, 0x3

    #@1f
    new-array v0, v0, [Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@21
    sget-object v1, Lcom/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@23
    aput-object v1, v0, v2

    #@25
    sget-object v1, Lcom/android/dx/dex/file/MixedItemSection$SortType;->TYPE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@27
    aput-object v1, v0, v3

    #@29
    sget-object v1, Lcom/android/dx/dex/file/MixedItemSection$SortType;->INSTANCE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@2b
    aput-object v1, v0, v4

    #@2d
    sput-object v0, Lcom/android/dx/dex/file/MixedItemSection$SortType;->$VALUES:[Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@2f
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/dx/dex/file/MixedItemSection$SortType;
    .registers 2

    #@0
    const-class v0, Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/dx/dex/file/MixedItemSection$SortType;
    .registers 1

    #@0
    sget-object v0, Lcom/android/dx/dex/file/MixedItemSection$SortType;->$VALUES:[Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@2
    invoke-virtual {v0}, [Lcom/android/dx/dex/file/MixedItemSection$SortType;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/android/dx/dex/file/MixedItemSection$SortType;

    #@8
    return-object v0
.end method
