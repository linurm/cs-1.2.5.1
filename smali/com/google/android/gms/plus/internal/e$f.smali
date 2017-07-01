.class final Lcom/google/android/gms/plus/internal/e$f;
.super Lcom/google/android/gms/internal/hb$d;

# interfaces
.implements Lcom/google/android/gms/plus/People$LoadPeopleResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hb",
        "<",
        "Lcom/google/android/gms/plus/internal/d;",
        ">.d<",
        "Lcom/google/android/gms/common/api/a$d",
        "<",
        "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
        ">;>;",
        "Lcom/google/android/gms/plus/People$LoadPeopleResult;"
    }
.end annotation


# instance fields
.field private final HS:Ljava/lang/String;

.field final synthetic abM:Lcom/google/android/gms/plus/internal/e;

.field private abP:Lcom/google/android/gms/plus/model/people/PersonBuffer;

.field private final yz:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;",
            "Lcom/google/android/gms/common/api/Status;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/internal/e$f;->abM:Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/hb$d;-><init>(Lcom/google/android/gms/internal/hb;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V

    #@5
    iput-object p3, p0, Lcom/google/android/gms/plus/internal/e$f;->yz:Lcom/google/android/gms/common/api/Status;

    #@7
    iput-object p5, p0, Lcom/google/android/gms/plus/internal/e$f;->HS:Ljava/lang/String;

    #@9
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    #@0
    if-eqz p2, :cond_d

    #@2
    new-instance v0, Lcom/google/android/gms/plus/model/people/PersonBuffer;

    #@4
    invoke-direct {v0, p2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@7
    :goto_7
    iput-object v0, p0, Lcom/google/android/gms/plus/internal/e$f;->abP:Lcom/google/android/gms/plus/model/people/PersonBuffer;

    #@9
    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@c
    return-void

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    goto :goto_7
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    #@0
    check-cast p1, Lcom/google/android/gms/common/api/a$d;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/plus/internal/e$f;->a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/data/DataHolder;)V

    #@5
    return-void
.end method

.method public getNextPageToken()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$f;->HS:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPersonBuffer()Lcom/google/android/gms/plus/model/people/PersonBuffer;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$f;->abP:Lcom/google/android/gms/plus/model/people/PersonBuffer;

    #@2
    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$f;->yz:Lcom/google/android/gms/common/api/Status;

    #@2
    return-object v0
.end method

.method public release()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$f;->abP:Lcom/google/android/gms/plus/model/people/PersonBuffer;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$f;->abP:Lcom/google/android/gms/plus/model/people/PersonBuffer;

    #@6
    invoke-virtual {v0}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->close()V

    #@9
    :cond_9
    return-void
.end method
