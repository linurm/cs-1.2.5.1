.class Lcom/google/android/gms/tagmanager/o$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic aeS:Lcom/google/android/gms/tagmanager/o;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tagmanager/o;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/o$d;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/tagmanager/o$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/o$d;-><init>(Lcom/google/android/gms/tagmanager/o;)V

    #@3
    return-void
.end method


# virtual methods
.method public bJ(Ljava/lang/String;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$d;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/o;->bJ(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public lo()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$d;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/o;->lo()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public lq()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$d;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/o;->g(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/tagmanager/cf;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/cf;->do()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_13

    #@c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$d;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@e
    const-wide/16 v2, 0x0

    #@10
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/tagmanager/o;J)V

    #@13
    :cond_13
    return-void
.end method
