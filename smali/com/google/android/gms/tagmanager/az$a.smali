.class final enum Lcom/google/android/gms/tagmanager/az$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/tagmanager/az$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum afY:Lcom/google/android/gms/tagmanager/az$a;

.field public static final enum afZ:Lcom/google/android/gms/tagmanager/az$a;

.field public static final enum aga:Lcom/google/android/gms/tagmanager/az$a;

.field private static final synthetic agb:[Lcom/google/android/gms/tagmanager/az$a;


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
    new-instance v0, Lcom/google/android/gms/tagmanager/az$a;

    #@5
    const-string v1, "NONE"

    #@7
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/az$a;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Lcom/google/android/gms/tagmanager/az$a;->afY:Lcom/google/android/gms/tagmanager/az$a;

    #@c
    new-instance v0, Lcom/google/android/gms/tagmanager/az$a;

    #@e
    const-string v1, "URL"

    #@10
    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/tagmanager/az$a;-><init>(Ljava/lang/String;I)V

    #@13
    sput-object v0, Lcom/google/android/gms/tagmanager/az$a;->afZ:Lcom/google/android/gms/tagmanager/az$a;

    #@15
    new-instance v0, Lcom/google/android/gms/tagmanager/az$a;

    #@17
    const-string v1, "BACKSLASH"

    #@19
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/tagmanager/az$a;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v0, Lcom/google/android/gms/tagmanager/az$a;->aga:Lcom/google/android/gms/tagmanager/az$a;

    #@1e
    const/4 v0, 0x3

    #@1f
    new-array v0, v0, [Lcom/google/android/gms/tagmanager/az$a;

    #@21
    sget-object v1, Lcom/google/android/gms/tagmanager/az$a;->afY:Lcom/google/android/gms/tagmanager/az$a;

    #@23
    aput-object v1, v0, v2

    #@25
    sget-object v1, Lcom/google/android/gms/tagmanager/az$a;->afZ:Lcom/google/android/gms/tagmanager/az$a;

    #@27
    aput-object v1, v0, v3

    #@29
    sget-object v1, Lcom/google/android/gms/tagmanager/az$a;->aga:Lcom/google/android/gms/tagmanager/az$a;

    #@2b
    aput-object v1, v0, v4

    #@2d
    sput-object v0, Lcom/google/android/gms/tagmanager/az$a;->agb:[Lcom/google/android/gms/tagmanager/az$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/az$a;
    .registers 2

    #@0
    const-class v0, Lcom/google/android/gms/tagmanager/az$a;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/tagmanager/az$a;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/tagmanager/az$a;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/az$a;->agb:[Lcom/google/android/gms/tagmanager/az$a;

    #@2
    invoke-virtual {v0}, [Lcom/google/android/gms/tagmanager/az$a;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/google/android/gms/tagmanager/az$a;

    #@8
    return-object v0
.end method
