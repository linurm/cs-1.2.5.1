.class Landroid/support/v4/app/NotificationCompatKitKat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompatKitKat$Builder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getAction(Landroid/app/Notification;ILandroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;
    .registers 10

    #@0
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@2
    aget-object v1, v0, p1

    #@4
    const/4 v5, 0x0

    #@5
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@7
    const-string v2, "android.support.actionExtras"

    #@9
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_16

    #@f
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/os/Bundle;

    #@15
    move-object v5, v0

    #@16
    :cond_16
    iget v2, v1, Landroid/app/Notification$Action;->icon:I

    #@18
    iget-object v3, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    #@1a
    iget-object v4, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@1c
    move-object v0, p2

    #@1d
    move-object v1, p3

    #@1e
    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/NotificationCompatJellybean;->readAction(Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompatBase$Action;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method

.method public static getActionCount(Landroid/app/Notification;)I
    .registers 2

    #@0
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@2
    if-eqz v0, :cond_8

    #@4
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@6
    array-length v0, v0

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public static getGroup(Landroid/app/Notification;)Ljava/lang/String;
    .registers 3

    #@0
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@2
    const-string v1, "android.support.groupKey"

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getLocalOnly(Landroid/app/Notification;)Z
    .registers 3

    #@0
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@2
    const-string v1, "android.support.localOnly"

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static getSortKey(Landroid/app/Notification;)Ljava/lang/String;
    .registers 3

    #@0
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@2
    const-string v1, "android.support.sortKey"

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static isGroupSummary(Landroid/app/Notification;)Z
    .registers 3

    #@0
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@2
    const-string v1, "android.support.isGroupSummary"

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method
