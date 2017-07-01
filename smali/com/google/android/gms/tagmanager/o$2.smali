.class Lcom/google/android/gms/tagmanager/o$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/o;->H(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aeS:Lcom/google/android/gms/tagmanager/o;

.field final synthetic aeT:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/o;Z)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/o$2;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@2
    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/o$2;->aeT:Z

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/tagmanager/Container;)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    iget-boolean v2, p0, Lcom/google/android/gms/tagmanager/o$2;->aeT:Z

    #@4
    if-eqz v2, :cond_1e

    #@6
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/Container;->getLastRefreshTime()J

    #@9
    move-result-wide v2

    #@a
    const-wide/32 v4, 0x2932e00

    #@d
    add-long/2addr v2, v4

    #@e
    iget-object v4, p0, Lcom/google/android/gms/tagmanager/o$2;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@10
    invoke-static {v4}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/internal/ij;

    #@13
    move-result-object v4

    #@14
    invoke-interface {v4}, Lcom/google/android/gms/internal/ij;->currentTimeMillis()J

    #@17
    move-result-wide v4

    #@18
    cmp-long v2, v2, v4

    #@1a
    if-ltz v2, :cond_1d

    #@1c
    :cond_1c
    move v0, v1

    #@1d
    :cond_1d
    :goto_1d
    return v0

    #@1e
    :cond_1e
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/Container;->isDefault()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_1c

    #@24
    goto :goto_1d
.end method
