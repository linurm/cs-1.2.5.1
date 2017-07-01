.class Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatJellybeanMR2Impl;
.super Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewGroupCompatJellybeanMR2Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLayoutMode(Landroid/view/ViewGroup;)I
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/ViewGroupCompatJellybeanMR2;->getLayoutMode(Landroid/view/ViewGroup;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public setLayoutMode(Landroid/view/ViewGroup;I)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewGroupCompatJellybeanMR2;->setLayoutMode(Landroid/view/ViewGroup;I)V

    #@3
    return-void
.end method
