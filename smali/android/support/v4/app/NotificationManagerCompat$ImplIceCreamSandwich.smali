.class Landroid/support/v4/app/NotificationManagerCompat$ImplIceCreamSandwich;
.super Landroid/support/v4/app/NotificationManagerCompat$ImplEclair;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImplIceCreamSandwich"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/support/v4/app/NotificationManagerCompat$ImplEclair;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getSideChannelBindFlags()I
    .registers 2

    #@0
    const/16 v0, 0x21

    #@2
    return v0
.end method
