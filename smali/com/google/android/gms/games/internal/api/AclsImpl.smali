.class public final Lcom/google/android/gms/games/internal/api/AclsImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/internal/game/Acls;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/api/AclsImpl$LoadNotifyAclImpl;,
        Lcom/google/android/gms/games/internal/api/AclsImpl$UpdateNotifyAclImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static x(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/internal/game/Acls$LoadAclResult;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/games/internal/api/AclsImpl$1;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/api/AclsImpl$1;-><init>(Lcom/google/android/gms/common/api/Status;)V

    #@5
    return-object v0
.end method

.method static synthetic y(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/internal/game/Acls$LoadAclResult;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/internal/api/AclsImpl;->x(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/internal/game/Acls$LoadAclResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
