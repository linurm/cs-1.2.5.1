.class public final Lcom/google/android/gms/cast/Cast$CastOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/Cast$CastOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field Ad:Lcom/google/android/gms/cast/CastDevice;

.field Ae:Lcom/google/android/gms/cast/Cast$Listener;

.field private Af:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "CastDevice parameter cannot be null"

    #@5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    const-string v0, "CastListener parameter cannot be null"

    #@a
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->Ad:Lcom/google/android/gms/cast/CastDevice;

    #@f
    iput-object p2, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->Ae:Lcom/google/android/gms/cast/Cast$Listener;

    #@11
    const/4 v0, 0x0

    #@12
    iput v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->Af:I

    #@14
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;Lcom/google/android/gms/cast/Cast$1;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;-><init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)V

    #@3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->Af:I

    #@2
    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/Cast$CastOptions;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/cast/Cast$CastOptions;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/Cast$CastOptions;-><init>(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;Lcom/google/android/gms/cast/Cast$1;)V

    #@6
    return-object v0
.end method

.method public setVerboseLoggingEnabled(Z)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;
    .registers 3

    #@0
    if-eqz p1, :cond_9

    #@2
    iget v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->Af:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->Af:I

    #@8
    :goto_8
    return-object p0

    #@9
    :cond_9
    iget v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->Af:I

    #@b
    and-int/lit8 v0, v0, -0x2

    #@d
    iput v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->Af:I

    #@f
    goto :goto_8
.end method
