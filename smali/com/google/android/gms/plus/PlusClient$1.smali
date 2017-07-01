.class Lcom/google/android/gms/plus/PlusClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/plus/PlusClient;->loadMoments(Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/a$d",
        "<",
        "Lcom/google/android/gms/plus/Moments$LoadMomentsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic abu:Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;

.field final synthetic abv:Lcom/google/android/gms/plus/PlusClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/PlusClient$1;->abv:Lcom/google/android/gms/plus/PlusClient;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/plus/PlusClient$1;->abu:Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/plus/Moments$LoadMomentsResult;)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$1;->abu:Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;

    #@2
    invoke-interface {p1}, Lcom/google/android/gms/plus/Moments$LoadMomentsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->eR()Lcom/google/android/gms/common/ConnectionResult;

    #@9
    move-result-object v1

    #@a
    invoke-interface {p1}, Lcom/google/android/gms/plus/Moments$LoadMomentsResult;->getMomentBuffer()Lcom/google/android/gms/plus/model/moments/MomentBuffer;

    #@d
    move-result-object v2

    #@e
    invoke-interface {p1}, Lcom/google/android/gms/plus/Moments$LoadMomentsResult;->getNextPageToken()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-interface {p1}, Lcom/google/android/gms/plus/Moments$LoadMomentsResult;->getUpdated()Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;->onMomentsLoaded(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/plus/model/moments/MomentBuffer;Ljava/lang/String;Ljava/lang/String;)V

    #@19
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p1, Lcom/google/android/gms/plus/Moments$LoadMomentsResult;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/PlusClient$1;->a(Lcom/google/android/gms/plus/Moments$LoadMomentsResult;)V

    #@5
    return-void
.end method
