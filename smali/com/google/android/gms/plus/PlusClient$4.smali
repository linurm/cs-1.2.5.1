.class Lcom/google/android/gms/plus/PlusClient$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/plus/PlusClient;->loadVisiblePeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;Ljava/lang/String;)V
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
        "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic abv:Lcom/google/android/gms/plus/PlusClient;

.field final synthetic abw:Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/PlusClient$4;->abv:Lcom/google/android/gms/plus/PlusClient;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/plus/PlusClient$4;->abw:Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/plus/People$LoadPeopleResult;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$4;->abw:Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;

    #@2
    invoke-interface {p1}, Lcom/google/android/gms/plus/People$LoadPeopleResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->eR()Lcom/google/android/gms/common/ConnectionResult;

    #@9
    move-result-object v1

    #@a
    invoke-interface {p1}, Lcom/google/android/gms/plus/People$LoadPeopleResult;->getPersonBuffer()Lcom/google/android/gms/plus/model/people/PersonBuffer;

    #@d
    move-result-object v2

    #@e
    invoke-interface {p1}, Lcom/google/android/gms/plus/People$LoadPeopleResult;->getNextPageToken()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;->onPeopleLoaded(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/plus/model/people/PersonBuffer;Ljava/lang/String;)V

    #@15
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p1, Lcom/google/android/gms/plus/People$LoadPeopleResult;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/PlusClient$4;->a(Lcom/google/android/gms/plus/People$LoadPeopleResult;)V

    #@5
    return-void
.end method
