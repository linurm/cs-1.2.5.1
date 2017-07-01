.class public Lcom/apportable/gl/SurfaceTexture;
.super Landroid/graphics/SurfaceTexture;

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    #@3
    invoke-virtual {p0, p0}, Lcom/apportable/gl/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    #@6
    return-void
.end method


# virtual methods
.method public getTransformMatrix([F)V
    .registers 2

    #@0
    invoke-super {p0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    #@3
    return-void
.end method

.method public native onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end method
