.class Landroid/support/v4/app/NotificationCompat$NotificationCompatImplKitKat;
.super Landroid/support/v4/app/NotificationCompat$NotificationCompatImplJellybean;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatImplKitKat"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplJellybean;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification;
    .registers 25

    #@0
    new-instance v1, Landroid/support/v4/app/NotificationCompatKitKat$Builder;

    #@2
    move-object/from16 v0, p1

    #@4
    iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #@6
    move-object/from16 v0, p1

    #@8
    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@a
    move-object/from16 v0, p1

    #@c
    iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    #@e
    move-object/from16 v0, p1

    #@10
    iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    #@12
    move-object/from16 v0, p1

    #@14
    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    #@16
    move-object/from16 v0, p1

    #@18
    iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    #@1a
    move-object/from16 v0, p1

    #@1c
    iget v8, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    #@1e
    move-object/from16 v0, p1

    #@20
    iget-object v9, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    #@22
    move-object/from16 v0, p1

    #@24
    iget-object v10, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    #@26
    move-object/from16 v0, p1

    #@28
    iget-object v11, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    #@2a
    move-object/from16 v0, p1

    #@2c
    iget v12, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressMax:I

    #@2e
    move-object/from16 v0, p1

    #@30
    iget v13, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgress:I

    #@32
    move-object/from16 v0, p1

    #@34
    iget-boolean v14, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    #@36
    move-object/from16 v0, p1

    #@38
    iget-boolean v15, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    #@3a
    move-object/from16 v0, p1

    #@3c
    iget v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I

    #@3e
    move/from16 v16, v0

    #@40
    move-object/from16 v0, p1

    #@42
    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    #@44
    move-object/from16 v17, v0

    #@46
    move-object/from16 v0, p1

    #@48
    iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLocalOnly:Z

    #@4a
    move/from16 v18, v0

    #@4c
    move-object/from16 v0, p1

    #@4e
    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@50
    move-object/from16 v19, v0

    #@52
    move-object/from16 v0, p1

    #@54
    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    #@56
    move-object/from16 v20, v0

    #@58
    move-object/from16 v0, p1

    #@5a
    iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupSummary:Z

    #@5c
    move/from16 v21, v0

    #@5e
    move-object/from16 v0, p1

    #@60
    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    #@62
    move-object/from16 v22, v0

    #@64
    invoke-direct/range {v1 .. v22}, Landroid/support/v4/app/NotificationCompatKitKat$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V

    #@67
    move-object/from16 v0, p1

    #@69
    iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    #@6b
    # invokes: Landroid/support/v4/app/NotificationCompat;->addActionsToBuilder(Landroid/support/v4/app/NotificationBuilderWithActions;Ljava/util/ArrayList;)V
    invoke-static {v1, v2}, Landroid/support/v4/app/NotificationCompat;->access$000(Landroid/support/v4/app/NotificationBuilderWithActions;Ljava/util/ArrayList;)V

    #@6e
    move-object/from16 v0, p1

    #@70
    iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    #@72
    # invokes: Landroid/support/v4/app/NotificationCompat;->addStyleToBuilderJellybean(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Style;)V
    invoke-static {v1, v2}, Landroid/support/v4/app/NotificationCompat;->access$100(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Style;)V

    #@75
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->build()Landroid/app/Notification;

    #@78
    move-result-object v1

    #@79
    return-object v1
.end method

.method public getAction(Landroid/app/Notification;I)Landroid/support/v4/app/NotificationCompat$Action;
    .registers 5

    #@0
    sget-object v0, Landroid/support/v4/app/NotificationCompat$Action;->FACTORY:Landroid/support/v4/app/NotificationCompatBase$Action$Factory;

    #@2
    sget-object v1, Landroid/support/v4/app/RemoteInput;->FACTORY:Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    #@4
    invoke-static {p1, p2, v0, v1}, Landroid/support/v4/app/NotificationCompatKitKat;->getAction(Landroid/app/Notification;ILandroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/support/v4/app/NotificationCompat$Action;

    #@a
    return-object v0
.end method

.method public getActionCount(Landroid/app/Notification;)I
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompatKitKat;->getActionCount(Landroid/app/Notification;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompatKitKat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getGroup(Landroid/app/Notification;)Ljava/lang/String;
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompatKitKat;->getGroup(Landroid/app/Notification;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getLocalOnly(Landroid/app/Notification;)Z
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompatKitKat;->getLocalOnly(Landroid/app/Notification;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSortKey(Landroid/app/Notification;)Ljava/lang/String;
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompatKitKat;->getSortKey(Landroid/app/Notification;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public isGroupSummary(Landroid/app/Notification;)Z
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompatKitKat;->isGroupSummary(Landroid/app/Notification;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method
