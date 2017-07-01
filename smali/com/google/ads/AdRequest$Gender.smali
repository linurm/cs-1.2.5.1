.class public final enum Lcom/google/ads/AdRequest$Gender;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/AdRequest$Gender;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FEMALE:Lcom/google/ads/AdRequest$Gender;

.field public static final enum MALE:Lcom/google/ads/AdRequest$Gender;

.field public static final enum UNKNOWN:Lcom/google/ads/AdRequest$Gender;

.field private static final synthetic b:[Lcom/google/ads/AdRequest$Gender;


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
    new-instance v0, Lcom/google/ads/AdRequest$Gender;

    #@5
    const-string v1, "UNKNOWN"

    #@7
    invoke-direct {v0, v1, v2}, Lcom/google/ads/AdRequest$Gender;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Lcom/google/ads/AdRequest$Gender;->UNKNOWN:Lcom/google/ads/AdRequest$Gender;

    #@c
    new-instance v0, Lcom/google/ads/AdRequest$Gender;

    #@e
    const-string v1, "MALE"

    #@10
    invoke-direct {v0, v1, v3}, Lcom/google/ads/AdRequest$Gender;-><init>(Ljava/lang/String;I)V

    #@13
    sput-object v0, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    #@15
    new-instance v0, Lcom/google/ads/AdRequest$Gender;

    #@17
    const-string v1, "FEMALE"

    #@19
    invoke-direct {v0, v1, v4}, Lcom/google/ads/AdRequest$Gender;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v0, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;

    #@1e
    const/4 v0, 0x3

    #@1f
    new-array v0, v0, [Lcom/google/ads/AdRequest$Gender;

    #@21
    sget-object v1, Lcom/google/ads/AdRequest$Gender;->UNKNOWN:Lcom/google/ads/AdRequest$Gender;

    #@23
    aput-object v1, v0, v2

    #@25
    sget-object v1, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    #@27
    aput-object v1, v0, v3

    #@29
    sget-object v1, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;

    #@2b
    aput-object v1, v0, v4

    #@2d
    sput-object v0, Lcom/google/ads/AdRequest$Gender;->b:[Lcom/google/ads/AdRequest$Gender;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/AdRequest$Gender;
    .registers 2

    #@0
    const-class v0, Lcom/google/ads/AdRequest$Gender;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/ads/AdRequest$Gender;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/google/ads/AdRequest$Gender;
    .registers 1

    #@0
    sget-object v0, Lcom/google/ads/AdRequest$Gender;->b:[Lcom/google/ads/AdRequest$Gender;

    #@2
    invoke-virtual {v0}, [Lcom/google/ads/AdRequest$Gender;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/google/ads/AdRequest$Gender;

    #@8
    return-object v0
.end method
