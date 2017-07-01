.class public final Lcom/google/android/gms/auth/GoogleAuthUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/GoogleAuthUtil$a;
    }
.end annotation


# static fields
.field public static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field public static final KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String;

.field public static final KEY_CALLER_UID:Ljava/lang/String;

.field public static final KEY_REQUEST_ACTIONS:Ljava/lang/String; = "request_visible_actions"

.field public static final KEY_REQUEST_VISIBLE_ACTIVITIES:Ljava/lang/String; = "request_visible_actions"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_SUPPRESS_PROGRESS_SCREEN:Ljava/lang/String; = "suppressProgressScreen"

.field private static final yU:Landroid/content/ComponentName;

.field private static final yV:Landroid/content/ComponentName;

.field private static final yW:Landroid/content/Intent;

.field private static final yX:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0xb

    #@4
    if-lt v0, v1, :cond_6

    #@6
    :cond_6
    const-string v0, "callerUid"

    #@8
    sput-object v0, Lcom/google/android/gms/auth/GoogleAuthUtil;->KEY_CALLER_UID:Ljava/lang/String;

    #@a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@c
    const/16 v1, 0xe

    #@e
    if-lt v0, v1, :cond_10

    #@10
    :cond_10
    const-string v0, "androidPackageName"

    #@12
    sput-object v0, Lcom/google/android/gms/auth/GoogleAuthUtil;->KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String;

    #@14
    new-instance v0, Landroid/content/ComponentName;

    #@16
    const-string v1, "com.google.android.gms"

    #@18
    const-string v2, "com.google.android.gms.auth.GetToken"

    #@1a
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    sput-object v0, Lcom/google/android/gms/auth/GoogleAuthUtil;->yU:Landroid/content/ComponentName;

    #@1f
    new-instance v0, Landroid/content/ComponentName;

    #@21
    const-string v1, "com.google.android.gms"

    #@23
    const-string v2, "com.google.android.gms.recovery.RecoveryService"

    #@25
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@28
    sput-object v0, Lcom/google/android/gms/auth/GoogleAuthUtil;->yV:Landroid/content/ComponentName;

    #@2a
    new-instance v0, Landroid/content/Intent;

    #@2c
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@2f
    const-string v1, "com.google.android.gms"

    #@31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@34
    move-result-object v0

    #@35
    sget-object v1, Lcom/google/android/gms/auth/GoogleAuthUtil;->yU:Landroid/content/ComponentName;

    #@37
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@3a
    move-result-object v0

    #@3b
    sput-object v0, Lcom/google/android/gms/auth/GoogleAuthUtil;->yW:Landroid/content/Intent;

    #@3d
    new-instance v0, Landroid/content/Intent;

    #@3f
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@42
    const-string v1, "com.google.android.gms"

    #@44
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@47
    move-result-object v0

    #@48
    sget-object v1, Lcom/google/android/gms/auth/GoogleAuthUtil;->yV:Landroid/content/ComponentName;

    #@4a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@4d
    move-result-object v0

    #@4e
    sput-object v0, Lcom/google/android/gms/auth/GoogleAuthUtil;->yX:Landroid/content/Intent;

    #@50
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableNotifiedException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    #@0
    if-nez p3, :cond_7

    #@2
    new-instance p3, Landroid/os/Bundle;

    #@4
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    #@7
    :cond_7
    :try_start_7
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_a
    .catch Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException; {:try_start_7 .. :try_end_a} :catch_c
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_7 .. :try_end_a} :catch_36

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    :catch_c
    move-exception v0

    #@d
    invoke-virtual {v0}, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;->getConnectionStatusCode()I

    #@10
    move-result v0

    #@11
    invoke-static {p0, v0}, Lcom/google/android/gms/auth/GoogleAuthUtil;->b(Landroid/content/Context;I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_32

    #@17
    new-instance v0, Lcom/google/android/gms/auth/GoogleAuthUtil$a;

    #@19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/GoogleAuthUtil$a;-><init>(Landroid/content/Context;)V

    #@20
    const/4 v1, 0x1

    #@21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@24
    move-result-object v1

    #@25
    const-wide/16 v2, 0x7530

    #@27
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@2a
    :goto_2a
    new-instance v0, Lcom/google/android/gms/auth/UserRecoverableNotifiedException;

    #@2c
    const-string v1, "User intervention required. Notification has been pushed."

    #@2e
    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/UserRecoverableNotifiedException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    :cond_32
    invoke-static {v0, p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->showErrorNotification(ILandroid/content/Context;)V

    #@35
    goto :goto_2a

    #@36
    :catch_36
    move-exception v0

    #@37
    new-instance v0, Lcom/google/android/gms/auth/UserRecoverableNotifiedException;

    #@39
    const-string v1, "User intervention required. Notification has been pushed."

    #@3b
    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/UserRecoverableNotifiedException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0
.end method

.method private static ac(Ljava/lang/String;)Z
    .registers 2

    #@0
    const-string v0, "NetworkError"

    #@2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_18

    #@8
    const-string v0, "ServiceUnavailable"

    #@a
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_18

    #@10
    const-string v0, "Timeout"

    #@12
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1a

    #@18
    :cond_18
    const/4 v0, 0x1

    #@19
    :goto_19
    return v0

    #@1a
    :cond_1a
    const/4 v0, 0x0

    #@1b
    goto :goto_19
.end method

.method private static ad(Ljava/lang/String;)Z
    .registers 2

    #@0
    const-string v0, "BadAuthentication"

    #@2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_38

    #@8
    const-string v0, "CaptchaRequired"

    #@a
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_38

    #@10
    const-string v0, "DeviceManagementRequiredOrSyncDisabled"

    #@12
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_38

    #@18
    const-string v0, "NeedPermission"

    #@1a
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_38

    #@20
    const-string v0, "NeedsBrowser"

    #@22
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    if-nez v0, :cond_38

    #@28
    const-string v0, "UserCancel"

    #@2a
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    if-nez v0, :cond_38

    #@30
    const-string v0, "AppDownloadRequired"

    #@32
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_3a

    #@38
    :cond_38
    const/4 v0, 0x1

    #@39
    :goto_39
    return v0

    #@3a
    :cond_3a
    const/4 v0, 0x0

    #@3b
    goto :goto_39
.end method

.method private static b(Landroid/content/Context;I)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p1, v0, :cond_15

    #@3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v1

    #@7
    :try_start_7
    const-string v2, "com.google.android.gms"

    #@9
    const/16 v3, 0x2000

    #@b
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@e
    move-result-object v1

    #@f
    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_11} :catch_14

    #@11
    if-eqz v1, :cond_15

    #@13
    :goto_13
    return v0

    #@14
    :catch_14
    move-exception v0

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    goto :goto_13
.end method

.method public static clearToken(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;,
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    const-string v0, "Calling this from your main thread can lead to deadlock"

    #@6
    invoke-static {v0}, Lcom/google/android/gms/internal/hm;->az(Ljava/lang/String;)V

    #@9
    invoke-static {v1}, Lcom/google/android/gms/auth/GoogleAuthUtil;->z(Landroid/content/Context;)V

    #@c
    new-instance v0, Landroid/os/Bundle;

    #@e
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@14
    move-result-object v2

    #@15
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@17
    const-string v3, "clientPackageName"

    #@19
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    sget-object v3, Lcom/google/android/gms/auth/GoogleAuthUtil;->KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String;

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@21
    move-result v3

    #@22
    if-nez v3, :cond_29

    #@24
    sget-object v3, Lcom/google/android/gms/auth/GoogleAuthUtil;->KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String;

    #@26
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@29
    :cond_29
    new-instance v2, Lcom/google/android/gms/common/a;

    #@2b
    invoke-direct {v2}, Lcom/google/android/gms/common/a;-><init>()V

    #@2e
    sget-object v3, Lcom/google/android/gms/auth/GoogleAuthUtil;->yW:Landroid/content/Intent;

    #@30
    const/4 v4, 0x1

    #@31
    invoke-virtual {v1, v3, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_79

    #@37
    :try_start_37
    invoke-virtual {v2}, Lcom/google/android/gms/common/a;->ew()Landroid/os/IBinder;

    #@3a
    move-result-object v3

    #@3b
    invoke-static {v3}, Lcom/google/android/gms/internal/r$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/r;

    #@3e
    move-result-object v3

    #@3f
    invoke-interface {v3, p1, v0}, Lcom/google/android/gms/internal/r;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@42
    move-result-object v0

    #@43
    sget-object v3, Lcom/google/android/gms/internal/gd;->zL:Ljava/lang/String;

    #@45
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    const-string v4, "booleanResult"

    #@4b
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@4e
    move-result v0

    #@4f
    if-nez v0, :cond_6c

    #@51
    new-instance v0, Lcom/google/android/gms/auth/GoogleAuthException;

    #@53
    invoke-direct {v0, v3}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    #@56
    throw v0
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_57} :catch_57
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_57} :catch_70
    .catchall {:try_start_37 .. :try_end_57} :catchall_67

    #@57
    :catch_57
    move-exception v0

    #@58
    :try_start_58
    const-string v3, "GoogleAuthUtil"

    #@5a
    const-string v4, "GMS remote exception "

    #@5c
    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5f
    new-instance v0, Ljava/io/IOException;

    #@61
    const-string v3, "remote exception"

    #@63
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@66
    throw v0
    :try_end_67
    .catchall {:try_start_58 .. :try_end_67} :catchall_67

    #@67
    :catchall_67
    move-exception v0

    #@68
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@6b
    throw v0

    #@6c
    :cond_6c
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@6f
    return-void

    #@70
    :catch_70
    move-exception v0

    #@71
    :try_start_71
    new-instance v0, Lcom/google/android/gms/auth/GoogleAuthException;

    #@73
    const-string v3, "Interrupted"

    #@75
    invoke-direct {v0, v3}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    #@78
    throw v0
    :try_end_79
    .catchall {:try_start_71 .. :try_end_79} :catchall_67

    #@79
    :cond_79
    new-instance v0, Ljava/io/IOException;

    #@7b
    const-string v1, "Could not bind to service with the given context."

    #@7d
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@80
    throw v0
.end method

.method private static g(Landroid/content/Intent;)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    if-nez p0, :cond_b

    #@3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string v1, "Callback cannot be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    :cond_b
    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    const/4 v1, 0x1

    #@10
    :try_start_10
    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_13
    .catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_13} :catch_14

    #@13
    return-void

    #@14
    :catch_14
    move-exception v0

    #@15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string v1, "Parameter callback contains invalid data. It must be serializable using toUri() and parseUri()."

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0
.end method

.method public static getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableAuthException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableAuthException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    const-string v0, "Calling this from your main thread can lead to deadlock"

    #@6
    invoke-static {v0}, Lcom/google/android/gms/internal/hm;->az(Ljava/lang/String;)V

    #@9
    invoke-static {v1}, Lcom/google/android/gms/auth/GoogleAuthUtil;->z(Landroid/content/Context;)V

    #@c
    if-nez p3, :cond_55

    #@e
    new-instance v0, Landroid/os/Bundle;

    #@10
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@13
    :goto_13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@16
    move-result-object v2

    #@17
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@19
    const-string v3, "clientPackageName"

    #@1b
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    sget-object v3, Lcom/google/android/gms/auth/GoogleAuthUtil;->KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String;

    #@20
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@23
    move-result v3

    #@24
    if-nez v3, :cond_2b

    #@26
    sget-object v3, Lcom/google/android/gms/auth/GoogleAuthUtil;->KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String;

    #@28
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    :cond_2b
    new-instance v2, Lcom/google/android/gms/common/a;

    #@2d
    invoke-direct {v2}, Lcom/google/android/gms/common/a;-><init>()V

    #@30
    sget-object v3, Lcom/google/android/gms/auth/GoogleAuthUtil;->yW:Landroid/content/Intent;

    #@32
    const/4 v4, 0x1

    #@33
    invoke-virtual {v1, v3, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_a5

    #@39
    :try_start_39
    invoke-virtual {v2}, Lcom/google/android/gms/common/a;->ew()Landroid/os/IBinder;

    #@3c
    move-result-object v3

    #@3d
    invoke-static {v3}, Lcom/google/android/gms/internal/r$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/r;

    #@40
    move-result-object v3

    #@41
    invoke-interface {v3, p1, p2, v0}, Lcom/google/android/gms/internal/r;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@44
    move-result-object v0

    #@45
    const-string v3, "authtoken"

    #@47
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_4e} :catch_75
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_4e} :catch_96
    .catchall {:try_start_39 .. :try_end_4e} :catchall_85

    #@4e
    move-result v4

    #@4f
    if-nez v4, :cond_5b

    #@51
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@54
    return-object v3

    #@55
    :cond_55
    new-instance v0, Landroid/os/Bundle;

    #@57
    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@5a
    goto :goto_13

    #@5b
    :cond_5b
    :try_start_5b
    const-string v3, "Error"

    #@5d
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    const-string v4, "userRecoveryIntent"

    #@63
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@66
    move-result-object v0

    #@67
    check-cast v0, Landroid/content/Intent;

    #@69
    invoke-static {v3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->ad(Ljava/lang/String;)Z

    #@6c
    move-result v4

    #@6d
    if-eqz v4, :cond_8a

    #@6f
    new-instance v4, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    #@71
    invoke-direct {v4, v3, v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    #@74
    throw v4
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_75} :catch_75
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_75} :catch_96
    .catchall {:try_start_5b .. :try_end_75} :catchall_85

    #@75
    :catch_75
    move-exception v0

    #@76
    :try_start_76
    const-string v3, "GoogleAuthUtil"

    #@78
    const-string v4, "GMS remote exception "

    #@7a
    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7d
    new-instance v0, Ljava/io/IOException;

    #@7f
    const-string v3, "remote exception"

    #@81
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@84
    throw v0
    :try_end_85
    .catchall {:try_start_76 .. :try_end_85} :catchall_85

    #@85
    :catchall_85
    move-exception v0

    #@86
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@89
    throw v0

    #@8a
    :cond_8a
    :try_start_8a
    invoke-static {v3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->ac(Ljava/lang/String;)Z

    #@8d
    move-result v0

    #@8e
    if-eqz v0, :cond_9f

    #@90
    new-instance v0, Ljava/io/IOException;

    #@92
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@95
    throw v0
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_96} :catch_75
    .catch Ljava/lang/InterruptedException; {:try_start_8a .. :try_end_96} :catch_96
    .catchall {:try_start_8a .. :try_end_96} :catchall_85

    #@96
    :catch_96
    move-exception v0

    #@97
    :try_start_97
    new-instance v0, Lcom/google/android/gms/auth/GoogleAuthException;

    #@99
    const-string v3, "Interrupted"

    #@9b
    invoke-direct {v0, v3}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    #@9e
    throw v0
    :try_end_9f
    .catchall {:try_start_97 .. :try_end_9f} :catchall_85

    #@9f
    :cond_9f
    :try_start_9f
    new-instance v0, Lcom/google/android/gms/auth/GoogleAuthException;

    #@a1
    invoke-direct {v0, v3}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    #@a4
    throw v0
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_a5} :catch_75
    .catch Ljava/lang/InterruptedException; {:try_start_9f .. :try_end_a5} :catch_96
    .catchall {:try_start_9f .. :try_end_a5} :catchall_85

    #@a5
    :cond_a5
    new-instance v0, Ljava/io/IOException;

    #@a7
    const-string v1, "Could not bind to service with the given context."

    #@a9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@ac
    throw v0
.end method

.method public static getTokenWithNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableNotifiedException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    #@0
    if-nez p3, :cond_7

    #@2
    new-instance p3, Landroid/os/Bundle;

    #@4
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    #@7
    :cond_7
    const-string v0, "handle_notification"

    #@9
    const/4 v1, 0x1

    #@a
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@d
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static getTokenWithNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableNotifiedException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    #@0
    invoke-static {p4}, Lcom/google/android/gms/auth/GoogleAuthUtil;->g(Landroid/content/Intent;)V

    #@3
    if-nez p3, :cond_a

    #@5
    new-instance p3, Landroid/os/Bundle;

    #@7
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    #@a
    :cond_a
    const-string v0, "callback_intent"

    #@c
    invoke-virtual {p3, v0, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@f
    const-string v0, "handle_notification"

    #@11
    const/4 v1, 0x1

    #@12
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@15
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public static getTokenWithNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableNotifiedException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    #@0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string v1, "Authority cannot be empty or null."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    if-nez p3, :cond_15

    #@10
    new-instance p3, Landroid/os/Bundle;

    #@12
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    #@15
    :cond_15
    if-nez p5, :cond_1c

    #@17
    new-instance p5, Landroid/os/Bundle;

    #@19
    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    #@1c
    :cond_1c
    invoke-static {p5}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    #@1f
    const-string v0, "authority"

    #@21
    invoke-virtual {p3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    const-string v0, "sync_extras"

    #@26
    invoke-virtual {p3, v0, p5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@29
    const-string v0, "handle_notification"

    #@2b
    const/4 v1, 0x1

    #@2c
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@2f
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    return-object v0
.end method

.method public static invalidateToken(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    #@3
    move-result-object v0

    #@4
    const-string v1, "com.google"

    #@6
    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    return-void
.end method

.method private static z(Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    #@0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->z(Landroid/content/Context;)V
    :try_end_3
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_3} :catch_17

    #@3
    return-void

    #@4
    :catch_4
    move-exception v0

    #@5
    new-instance v1, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;

    #@7
    invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getConnectionStatusCode()I

    #@a
    move-result v2

    #@b
    invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getMessage()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getIntent()Landroid/content/Intent;

    #@12
    move-result-object v0

    #@13
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    #@16
    throw v1

    #@17
    :catch_17
    move-exception v0

    #@18
    new-instance v1, Lcom/google/android/gms/auth/GoogleAuthException;

    #@1a
    invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->getMessage()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1
.end method
