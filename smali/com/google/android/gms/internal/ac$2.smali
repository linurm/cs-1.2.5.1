.class Lcom/google/android/gms/internal/ac$2;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ac;->av()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lM:Lcom/google/android/gms/internal/ac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ac;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/ac$2;->lM:Lcom/google/android/gms/internal/ac;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ac$2;->lM:Lcom/google/android/gms/internal/ac;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ac;->e(Z)V

    #@6
    return-void
.end method
