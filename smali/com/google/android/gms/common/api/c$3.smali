.class Lcom/google/android/gms/common/api/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hc$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ek:Lcom/google/android/gms/common/api/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/c;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/common/api/c$3;->Ek:Lcom/google/android/gms/common/api/c;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public eO()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$3;->Ek:Lcom/google/android/gms/common/api/c;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/common/api/c;->g(Lcom/google/android/gms/common/api/c;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public ef()Landroid/os/Bundle;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$3;->Ek:Lcom/google/android/gms/common/api/c;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    #@5
    move-result v0

    #@6
    return v0
.end method
