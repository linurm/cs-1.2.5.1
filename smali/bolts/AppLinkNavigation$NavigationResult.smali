.class public final enum Lbolts/AppLinkNavigation$NavigationResult;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbolts/AppLinkNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavigationResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbolts/AppLinkNavigation$NavigationResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbolts/AppLinkNavigation$NavigationResult;

.field public static final enum APP:Lbolts/AppLinkNavigation$NavigationResult;

.field public static final enum FAILED:Lbolts/AppLinkNavigation$NavigationResult;

.field public static final enum WEB:Lbolts/AppLinkNavigation$NavigationResult;


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
    new-instance v0, Lbolts/AppLinkNavigation$NavigationResult;

    #@5
    const-string v1, "FAILED"

    #@7
    invoke-direct {v0, v1, v2}, Lbolts/AppLinkNavigation$NavigationResult;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Lbolts/AppLinkNavigation$NavigationResult;->FAILED:Lbolts/AppLinkNavigation$NavigationResult;

    #@c
    new-instance v0, Lbolts/AppLinkNavigation$NavigationResult;

    #@e
    const-string v1, "WEB"

    #@10
    invoke-direct {v0, v1, v3}, Lbolts/AppLinkNavigation$NavigationResult;-><init>(Ljava/lang/String;I)V

    #@13
    sput-object v0, Lbolts/AppLinkNavigation$NavigationResult;->WEB:Lbolts/AppLinkNavigation$NavigationResult;

    #@15
    new-instance v0, Lbolts/AppLinkNavigation$NavigationResult;

    #@17
    const-string v1, "APP"

    #@19
    invoke-direct {v0, v1, v4}, Lbolts/AppLinkNavigation$NavigationResult;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v0, Lbolts/AppLinkNavigation$NavigationResult;->APP:Lbolts/AppLinkNavigation$NavigationResult;

    #@1e
    const/4 v0, 0x3

    #@1f
    new-array v0, v0, [Lbolts/AppLinkNavigation$NavigationResult;

    #@21
    sget-object v1, Lbolts/AppLinkNavigation$NavigationResult;->FAILED:Lbolts/AppLinkNavigation$NavigationResult;

    #@23
    aput-object v1, v0, v2

    #@25
    sget-object v1, Lbolts/AppLinkNavigation$NavigationResult;->WEB:Lbolts/AppLinkNavigation$NavigationResult;

    #@27
    aput-object v1, v0, v3

    #@29
    sget-object v1, Lbolts/AppLinkNavigation$NavigationResult;->APP:Lbolts/AppLinkNavigation$NavigationResult;

    #@2b
    aput-object v1, v0, v4

    #@2d
    sput-object v0, Lbolts/AppLinkNavigation$NavigationResult;->$VALUES:[Lbolts/AppLinkNavigation$NavigationResult;

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

.method public static valueOf(Ljava/lang/String;)Lbolts/AppLinkNavigation$NavigationResult;
    .registers 2

    #@0
    const-class v0, Lbolts/AppLinkNavigation$NavigationResult;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lbolts/AppLinkNavigation$NavigationResult;

    #@8
    return-object v0
.end method

.method public static values()[Lbolts/AppLinkNavigation$NavigationResult;
    .registers 1

    #@0
    sget-object v0, Lbolts/AppLinkNavigation$NavigationResult;->$VALUES:[Lbolts/AppLinkNavigation$NavigationResult;

    #@2
    invoke-virtual {v0}, [Lbolts/AppLinkNavigation$NavigationResult;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lbolts/AppLinkNavigation$NavigationResult;

    #@8
    return-object v0
.end method
