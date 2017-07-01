.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$GameSearchSuggestionsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GameSearchSuggestionsColumns"
.end annotation


# static fields
.field public static final HR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    const-string v2, "suggestion"

    #@6
    aput-object v2, v0, v1

    #@8
    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$GameSearchSuggestionsColumns;->HR:[Ljava/lang/String;

    #@a
    return-void
.end method
