.class Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;
.super Landroid/support/v4/hardware/display/DisplayManagerCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/hardware/display/DisplayManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegacyImpl"
.end annotation


# instance fields
.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    invoke-direct {p0}, Landroid/support/v4/hardware/display/DisplayManagerCompat;-><init>()V

    #@3
    const-string v0, "window"

    #@5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/view/WindowManager;

    #@b
    iput-object v0, p0, Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;->mWindowManager:Landroid/view/WindowManager;

    #@d
    return-void
.end method


# virtual methods
.method public getDisplay(I)Landroid/view/Display;
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;->mWindowManager:Landroid/view/WindowManager;

    #@2
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    #@9
    move-result v1

    #@a
    if-ne v1, p1, :cond_d

    #@c
    :goto_c
    return-object v0

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    goto :goto_c
.end method

.method public getDisplays()[Landroid/view/Display;
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Landroid/view/Display;

    #@3
    const/4 v1, 0x0

    #@4
    iget-object v2, p0, Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;->mWindowManager:Landroid/view/WindowManager;

    #@6
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@9
    move-result-object v2

    #@a
    aput-object v2, v0, v1

    #@c
    return-object v0
.end method

.method public getDisplays(Ljava/lang/String;)[Landroid/view/Display;
    .registers 3

    #@0
    if-nez p1, :cond_7

    #@2
    invoke-virtual {p0}, Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;->getDisplays()[Landroid/view/Display;

    #@5
    move-result-object v0

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    new-array v0, v0, [Landroid/view/Display;

    #@a
    goto :goto_6
.end method
