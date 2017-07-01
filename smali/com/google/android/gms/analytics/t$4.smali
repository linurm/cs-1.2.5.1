.class Lcom/google/android/gms/analytics/t$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/t;->cs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uR:Lcom/google/android/gms/analytics/t;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/t;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/analytics/t$4;->uR:Lcom/google/android/gms/analytics/t;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/t$4;->uR:Lcom/google/android/gms/analytics/t;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/analytics/t;->d(Lcom/google/android/gms/analytics/t;)Lcom/google/android/gms/analytics/ag;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/analytics/ag;->cs()V

    #@9
    return-void
.end method
