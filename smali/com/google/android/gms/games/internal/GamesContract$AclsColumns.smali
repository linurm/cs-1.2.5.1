.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$AclsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AclsColumns"
.end annotation


# static fields
.field public static final HR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    const-string v2, "specified_by_user"

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    const-string v2, "pacl"

    #@b
    aput-object v2, v0, v1

    #@d
    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$AclsColumns;->HR:[Ljava/lang/String;

    #@f
    return-void
.end method
