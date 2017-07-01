.class final Lcom/google/android/gms/internal/eo$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/eo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/eo$1;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/eo$a;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    #@0
    const-string v0, "android.intent.action.USER_PRESENT"

    #@2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_11

    #@c
    const/4 v0, 0x1

    #@d
    invoke-static {v0}, Lcom/google/android/gms/internal/eo;->p(Z)Z

    #@10
    :cond_10
    :goto_10
    return-void

    #@11
    :cond_11
    const-string v0, "android.intent.action.SCREEN_OFF"

    #@13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_10

    #@1d
    const/4 v0, 0x0

    #@1e
    invoke-static {v0}, Lcom/google/android/gms/internal/eo;->p(Z)Z

    #@21
    goto :goto_10
.end method
