.class public Landroid/support/v4/content/IntentCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/IntentCompat$IntentCompatImpl;,
        Landroid/support/v4/content/IntentCompat$IntentCompatImplBase;,
        Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;,
        Landroid/support/v4/content/IntentCompat$IntentCompatImplIcsMr1;
    }
.end annotation


# static fields
.field public static final ACTION_EXTERNAL_APPLICATIONS_AVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

.field public static final ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

.field public static final EXTRA_CHANGED_PACKAGE_LIST:Ljava/lang/String; = "android.intent.extra.changed_package_list"

.field public static final EXTRA_CHANGED_UID_LIST:Ljava/lang/String; = "android.intent.extra.changed_uid_list"

.field public static final EXTRA_HTML_TEXT:Ljava/lang/String; = "android.intent.extra.HTML_TEXT"

.field public static final FLAG_ACTIVITY_CLEAR_TASK:I = 0x8000

.field public static final FLAG_ACTIVITY_TASK_ON_HOME:I = 0x4000

.field private static final IMPL:Landroid/support/v4/content/IntentCompat$IntentCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0xf

    #@4
    if-lt v0, v1, :cond_e

    #@6
    new-instance v0, Landroid/support/v4/content/IntentCompat$IntentCompatImplIcsMr1;

    #@8
    invoke-direct {v0}, Landroid/support/v4/content/IntentCompat$IntentCompatImplIcsMr1;-><init>()V

    #@b
    sput-object v0, Landroid/support/v4/content/IntentCompat;->IMPL:Landroid/support/v4/content/IntentCompat$IntentCompatImpl;

    #@d
    :goto_d
    return-void

    #@e
    :cond_e
    const/16 v1, 0xb

    #@10
    if-lt v0, v1, :cond_1a

    #@12
    new-instance v0, Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;

    #@14
    invoke-direct {v0}, Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;-><init>()V

    #@17
    sput-object v0, Landroid/support/v4/content/IntentCompat;->IMPL:Landroid/support/v4/content/IntentCompat$IntentCompatImpl;

    #@19
    goto :goto_d

    #@1a
    :cond_1a
    new-instance v0, Landroid/support/v4/content/IntentCompat$IntentCompatImplBase;

    #@1c
    invoke-direct {v0}, Landroid/support/v4/content/IntentCompat$IntentCompatImplBase;-><init>()V

    #@1f
    sput-object v0, Landroid/support/v4/content/IntentCompat;->IMPL:Landroid/support/v4/content/IntentCompat$IntentCompatImpl;

    #@21
    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 2

    #@0
    sget-object v0, Landroid/support/v4/content/IntentCompat;->IMPL:Landroid/support/v4/content/IntentCompat$IntentCompatImpl;

    #@2
    invoke-interface {v0, p0}, Landroid/support/v4/content/IntentCompat$IntentCompatImpl;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    #@0
    sget-object v0, Landroid/support/v4/content/IntentCompat;->IMPL:Landroid/support/v4/content/IntentCompat$IntentCompatImpl;

    #@2
    invoke-interface {v0, p0, p1}, Landroid/support/v4/content/IntentCompat$IntentCompatImpl;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 2

    #@0
    sget-object v0, Landroid/support/v4/content/IntentCompat;->IMPL:Landroid/support/v4/content/IntentCompat$IntentCompatImpl;

    #@2
    invoke-interface {v0, p0}, Landroid/support/v4/content/IntentCompat$IntentCompatImpl;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
