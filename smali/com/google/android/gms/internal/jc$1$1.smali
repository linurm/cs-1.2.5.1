.class Lcom/google/android/gms/internal/jc$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jc$1;->a(Lcom/google/android/gms/internal/jg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic VF:Lcom/google/android/gms/internal/jc$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jc$1;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/jc$1$1;->VF:Lcom/google/android/gms/internal/jc$1;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAddGeofencesResult(I[Ljava/lang/String;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jc$1$1;->VF:Lcom/google/android/gms/internal/jc$1;

    #@2
    invoke-static {p1}, Lcom/google/android/gms/location/LocationStatusCodes;->cK(I)Lcom/google/android/gms/common/api/Status;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jc$1;->b(Lcom/google/android/gms/common/api/Result;)V

    #@9
    return-void
.end method
