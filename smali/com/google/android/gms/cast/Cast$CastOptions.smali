.class public final Lcom/google/android/gms/cast/Cast$CastOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/Cast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CastOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/Cast$CastOptions$Builder;
    }
.end annotation


# instance fields
.field final Aa:Lcom/google/android/gms/cast/CastDevice;

.field final Ab:Lcom/google/android/gms/cast/Cast$Listener;

.field private final Ac:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iget-object v0, p1, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->Ad:Lcom/google/android/gms/cast/CastDevice;

    #@5
    iput-object v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->Aa:Lcom/google/android/gms/cast/CastDevice;

    #@7
    iget-object v0, p1, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->Ae:Lcom/google/android/gms/cast/Cast$Listener;

    #@9
    iput-object v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->Ab:Lcom/google/android/gms/cast/Cast$Listener;

    #@b
    invoke-static {p1}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->a(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;)I

    #@e
    move-result v0

    #@f
    iput v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->Ac:I

    #@11
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;Lcom/google/android/gms/cast/Cast$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/Cast$CastOptions;-><init>(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;)V

    #@3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/cast/Cast$CastOptions;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->Ac:I

    #@2
    return v0
.end method

.method public static builder(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;-><init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;Lcom/google/android/gms/cast/Cast$1;)V

    #@6
    return-object v0
.end method
