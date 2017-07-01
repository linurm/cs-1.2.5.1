.class final Lcom/google/android/gms/internal/ga$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final yS:I

.field private final yz:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;I)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/ga$b;->yz:Lcom/google/android/gms/common/api/Status;

    #@5
    iput p2, p0, Lcom/google/android/gms/internal/ga$b;->yS:I

    #@7
    return-void
.end method


# virtual methods
.method public getStateKey()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/ga$b;->yS:I

    #@2
    return v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ga$b;->yz:Lcom/google/android/gms/common/api/Status;

    #@2
    return-object v0
.end method
