.class Lcom/google/android/gms/internal/gh$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic Cc:Lcom/google/android/gms/internal/gh;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/gh;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/gh$b;->Cc:Lcom/google/android/gms/internal/gh;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/gh;Lcom/google/android/gms/internal/gh$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gh$b;-><init>(Lcom/google/android/gms/internal/gh;)V

    #@3
    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$b;->Cc:Lcom/google/android/gms/internal/gh;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/gh;->j(Lcom/google/android/gms/internal/gh;)V

    #@5
    return-void
.end method
