.class public abstract Landroid/support/v4/app/NotificationCompat$Style;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mSummaryTextSet:Z

    #@6
    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    #@3
    if-eqz v1, :cond_b

    #@5
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    #@7
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    #@a
    move-result-object v0

    #@b
    :cond_b
    return-object v0
.end method

.method public setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    #@2
    if-eq v0, p1, :cond_f

    #@4
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    #@6
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    #@8
    if-eqz v0, :cond_f

    #@a
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    #@c
    invoke-virtual {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    #@f
    :cond_f
    return-void
.end method
