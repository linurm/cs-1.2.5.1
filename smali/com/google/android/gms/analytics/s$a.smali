.class final enum Lcom/google/android/gms/analytics/s$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/analytics/s$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum uA:Lcom/google/android/gms/analytics/s$a;

.field public static final enum uB:Lcom/google/android/gms/analytics/s$a;

.field public static final enum uC:Lcom/google/android/gms/analytics/s$a;

.field public static final enum uD:Lcom/google/android/gms/analytics/s$a;

.field public static final enum uE:Lcom/google/android/gms/analytics/s$a;

.field private static final synthetic uF:[Lcom/google/android/gms/analytics/s$a;

.field public static final enum uy:Lcom/google/android/gms/analytics/s$a;

.field public static final enum uz:Lcom/google/android/gms/analytics/s$a;


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
    new-instance v0, Lcom/google/android/gms/analytics/s$a;

    #@7
    const-string v1, "CONNECTING"

    #@9
    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/analytics/s$a;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Lcom/google/android/gms/analytics/s$a;->uy:Lcom/google/android/gms/analytics/s$a;

    #@e
    new-instance v0, Lcom/google/android/gms/analytics/s$a;

    #@10
    const-string v1, "CONNECTED_SERVICE"

    #@12
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/analytics/s$a;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/google/android/gms/analytics/s$a;->uz:Lcom/google/android/gms/analytics/s$a;

    #@17
    new-instance v0, Lcom/google/android/gms/analytics/s$a;

    #@19
    const-string v1, "CONNECTED_LOCAL"

    #@1b
    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/analytics/s$a;-><init>(Ljava/lang/String;I)V

    #@1e
    sput-object v0, Lcom/google/android/gms/analytics/s$a;->uA:Lcom/google/android/gms/analytics/s$a;

    #@20
    new-instance v0, Lcom/google/android/gms/analytics/s$a;

    #@22
    const-string v1, "BLOCKED"

    #@24
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/analytics/s$a;-><init>(Ljava/lang/String;I)V

    #@27
    sput-object v0, Lcom/google/android/gms/analytics/s$a;->uB:Lcom/google/android/gms/analytics/s$a;

    #@29
    new-instance v0, Lcom/google/android/gms/analytics/s$a;

    #@2b
    const-string v1, "PENDING_CONNECTION"

    #@2d
    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/analytics/s$a;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v0, Lcom/google/android/gms/analytics/s$a;->uC:Lcom/google/android/gms/analytics/s$a;

    #@32
    new-instance v0, Lcom/google/android/gms/analytics/s$a;

    #@34
    const-string v1, "PENDING_DISCONNECT"

    #@36
    const/4 v2, 0x5

    #@37
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/s$a;-><init>(Ljava/lang/String;I)V

    #@3a
    sput-object v0, Lcom/google/android/gms/analytics/s$a;->uD:Lcom/google/android/gms/analytics/s$a;

    #@3c
    new-instance v0, Lcom/google/android/gms/analytics/s$a;

    #@3e
    const-string v1, "DISCONNECTED"

    #@40
    const/4 v2, 0x6

    #@41
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/s$a;-><init>(Ljava/lang/String;I)V

    #@44
    sput-object v0, Lcom/google/android/gms/analytics/s$a;->uE:Lcom/google/android/gms/analytics/s$a;

    #@46
    const/4 v0, 0x7

    #@47
    new-array v0, v0, [Lcom/google/android/gms/analytics/s$a;

    #@49
    sget-object v1, Lcom/google/android/gms/analytics/s$a;->uy:Lcom/google/android/gms/analytics/s$a;

    #@4b
    aput-object v1, v0, v3

    #@4d
    sget-object v1, Lcom/google/android/gms/analytics/s$a;->uz:Lcom/google/android/gms/analytics/s$a;

    #@4f
    aput-object v1, v0, v4

    #@51
    sget-object v1, Lcom/google/android/gms/analytics/s$a;->uA:Lcom/google/android/gms/analytics/s$a;

    #@53
    aput-object v1, v0, v5

    #@55
    sget-object v1, Lcom/google/android/gms/analytics/s$a;->uB:Lcom/google/android/gms/analytics/s$a;

    #@57
    aput-object v1, v0, v6

    #@59
    sget-object v1, Lcom/google/android/gms/analytics/s$a;->uC:Lcom/google/android/gms/analytics/s$a;

    #@5b
    aput-object v1, v0, v7

    #@5d
    const/4 v1, 0x5

    #@5e
    sget-object v2, Lcom/google/android/gms/analytics/s$a;->uD:Lcom/google/android/gms/analytics/s$a;

    #@60
    aput-object v2, v0, v1

    #@62
    const/4 v1, 0x6

    #@63
    sget-object v2, Lcom/google/android/gms/analytics/s$a;->uE:Lcom/google/android/gms/analytics/s$a;

    #@65
    aput-object v2, v0, v1

    #@67
    sput-object v0, Lcom/google/android/gms/analytics/s$a;->uF:[Lcom/google/android/gms/analytics/s$a;

    #@69
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/analytics/s$a;
    .registers 2

    #@0
    const-class v0, Lcom/google/android/gms/analytics/s$a;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/analytics/s$a;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/analytics/s$a;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/analytics/s$a;->uF:[Lcom/google/android/gms/analytics/s$a;

    #@2
    invoke-virtual {v0}, [Lcom/google/android/gms/analytics/s$a;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/google/android/gms/analytics/s$a;

    #@8
    return-object v0
.end method
