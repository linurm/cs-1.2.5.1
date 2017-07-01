.class final Lcom/google/android/gms/plus/internal/e$b;
.super Lcom/google/android/gms/plus/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final abL:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/plus/Moments$LoadMomentsResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic abM:Lcom/google/android/gms/plus/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/plus/Moments$LoadMomentsResult;",
            ">;)V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/internal/e$b;->abM:Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-direct {p0}, Lcom/google/android/gms/plus/internal/a;-><init>()V

    #@5
    iput-object p2, p0, Lcom/google/android/gms/plus/internal/e$b;->abL:Lcom/google/android/gms/common/api/a$d;

    #@7
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->eU()Landroid/os/Bundle;

    #@4
    move-result-object v0

    #@5
    if-eqz v0, :cond_41

    #@7
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->eU()Landroid/os/Bundle;

    #@a
    move-result-object v0

    #@b
    const-string v2, "pendingIntent"

    #@d
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/app/PendingIntent;

    #@13
    :goto_13
    new-instance v3, Lcom/google/android/gms/common/api/Status;

    #@15
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    #@18
    move-result v2

    #@19
    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    #@1c
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_3f

    #@22
    if-eqz p1, :cond_3f

    #@24
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_2d

    #@2a
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    #@2d
    :cond_2d
    move-object v4, v1

    #@2e
    :goto_2e
    iget-object v7, p0, Lcom/google/android/gms/plus/internal/e$b;->abM:Lcom/google/android/gms/plus/internal/e;

    #@30
    new-instance v0, Lcom/google/android/gms/plus/internal/e$c;

    #@32
    iget-object v1, p0, Lcom/google/android/gms/plus/internal/e$b;->abM:Lcom/google/android/gms/plus/internal/e;

    #@34
    iget-object v2, p0, Lcom/google/android/gms/plus/internal/e$b;->abL:Lcom/google/android/gms/common/api/a$d;

    #@36
    move-object v5, p2

    #@37
    move-object v6, p3

    #@38
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/plus/internal/e$c;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Ljava/lang/String;)V

    #@3b
    invoke-virtual {v7, v0}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@3e
    return-void

    #@3f
    :cond_3f
    move-object v4, p1

    #@40
    goto :goto_2e

    #@41
    :cond_41
    move-object v0, v1

    #@42
    goto :goto_13
.end method
