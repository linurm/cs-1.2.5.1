.class Landroid/support/v4/content/IntentCompat$IntentCompatImplIcsMr1;
.super Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/IntentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntentCompatImplIcsMr1"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/content/IntentCompatIcsMr1;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
