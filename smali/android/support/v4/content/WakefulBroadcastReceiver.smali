.class public abstract Landroid/support/v4/content/WakefulBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final EXTRA_WAKE_LOCK_ID:Ljava/lang/String; = "android.support.content.wakelockid"

.field private static final mActiveWakeLocks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private static mNextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Landroid/util/SparseArray;

    #@2
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@5
    sput-object v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    #@7
    const/4 v0, 0x1

    #@8
    sput v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    #@a
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    return-void
.end method

.method public static completeWakefulIntent(Landroid/content/Intent;)Z
    .registers 7

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    const-string v2, "android.support.content.wakelockid"

    #@4
    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_b

    #@a
    :goto_a
    return v0

    #@b
    :cond_b
    sget-object v3, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    #@d
    monitor-enter v3

    #@e
    :try_start_e
    sget-object v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/os/PowerManager$WakeLock;

    #@16
    if-eqz v0, :cond_23

    #@18
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1b
    sget-object v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    #@1d
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    #@20
    monitor-exit v3

    #@21
    move v0, v1

    #@22
    goto :goto_a

    #@23
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string v4, "WakefulBroadcastReceiver"

    #@2a
    const-string v5, "No active wake lock id #"

    #@2c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    monitor-exit v3

    #@3c
    move v0, v1

    #@3d
    goto :goto_a

    #@3e
    :catchall_3e
    move-exception v0

    #@3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_e .. :try_end_40} :catchall_3e

    #@40
    throw v0
.end method

.method public static startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 9

    #@0
    sget-object v2, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    :try_start_3
    sget v3, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    #@5
    sget v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    #@7
    add-int/lit8 v0, v0, 0x1

    #@9
    sput v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    #@b
    sget v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    #@d
    if-gtz v0, :cond_12

    #@f
    const/4 v0, 0x1

    #@10
    sput v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    #@12
    :cond_12
    const-string v0, "android.support.content.wakelockid"

    #@14
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@17
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    #@1a
    move-result-object v1

    #@1b
    if-nez v1, :cond_20

    #@1d
    const/4 v0, 0x0

    #@1e
    monitor-exit v2

    #@1f
    :goto_1f
    return-object v0

    #@20
    :cond_20
    const-string v0, "power"

    #@22
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Landroid/os/PowerManager;

    #@28
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const/4 v5, 0x1

    #@2e
    const-string v6, "wake:"

    #@30
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@37
    move-result-object v6

    #@38
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v0, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@43
    move-result-object v0

    #@44
    const/4 v4, 0x0

    #@45
    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@48
    const-wide/32 v4, 0xea60

    #@4b
    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    #@4e
    sget-object v4, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    #@50
    invoke-virtual {v4, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@53
    monitor-exit v2

    #@54
    move-object v0, v1

    #@55
    goto :goto_1f

    #@56
    :catchall_56
    move-exception v0

    #@57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_56

    #@58
    throw v0
.end method
