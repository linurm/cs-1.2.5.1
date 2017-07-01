.class Lcom/google/android/gms/tagmanager/cx$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/cx;->cq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ahV:Lcom/google/android/gms/tagmanager/cx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cx;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cx$3;->ahV:Lcom/google/android/gms/tagmanager/cx;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx$3;->ahV:Lcom/google/android/gms/tagmanager/cx;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/cx;->e(Lcom/google/android/gms/tagmanager/cx;)Lcom/google/android/gms/tagmanager/at;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/at;->cq()V

    #@9
    return-void
.end method
