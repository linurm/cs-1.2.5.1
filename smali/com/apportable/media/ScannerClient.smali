.class public Lcom/apportable/media/ScannerClient;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public native onMediaScannerConnected()V
.end method

.method public native onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
.end method
