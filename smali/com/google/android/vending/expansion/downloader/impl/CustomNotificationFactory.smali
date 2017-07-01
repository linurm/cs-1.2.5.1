.class public Lcom/google/android/vending/expansion/downloader/impl/CustomNotificationFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createCustomNotification()Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;
    .registers 2

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0xd

    #@4
    if-le v0, v1, :cond_c

    #@6
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;

    #@8
    invoke-direct {v0}, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;-><init>()V

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;

    #@e
    invoke-direct {v0}, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;-><init>()V

    #@11
    goto :goto_b
.end method
