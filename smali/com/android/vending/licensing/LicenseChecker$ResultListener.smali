.class Lcom/android/vending/licensing/LicenseChecker$ResultListener;
.super Lcom/android/vending/licensing/ILicenseResultListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/licensing/LicenseChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultListener"
.end annotation


# instance fields
.field private mOnTimeout:Ljava/lang/Runnable;

.field private final mValidator:Lcom/android/vending/licensing/LicenseValidator;

.field final synthetic this$0:Lcom/android/vending/licensing/LicenseChecker;


# direct methods
.method public constructor <init>(Lcom/android/vending/licensing/LicenseChecker;Lcom/android/vending/licensing/LicenseValidator;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener;->this$0:Lcom/android/vending/licensing/LicenseChecker;

    #@2
    invoke-direct {p0}, Lcom/android/vending/licensing/ILicenseResultListener$Stub;-><init>()V

    #@5
    iput-object p2, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener;->mValidator:Lcom/android/vending/licensing/LicenseValidator;

    #@7
    new-instance v0, Lcom/android/vending/licensing/LicenseChecker$ResultListener$1;

    #@9
    invoke-direct {v0, p0, p1}, Lcom/android/vending/licensing/LicenseChecker$ResultListener$1;-><init>(Lcom/android/vending/licensing/LicenseChecker$ResultListener;Lcom/android/vending/licensing/LicenseChecker;)V

    #@c
    iput-object v0, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener;->mOnTimeout:Ljava/lang/Runnable;

    #@e
    invoke-direct {p0}, Lcom/android/vending/licensing/LicenseChecker$ResultListener;->startTimeout()V

    #@11
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/licensing/LicenseChecker$ResultListener;)Lcom/android/vending/licensing/LicenseValidator;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener;->mValidator:Lcom/android/vending/licensing/LicenseValidator;

    #@2
    return-object v0
.end method

.method static synthetic access$400(Lcom/android/vending/licensing/LicenseChecker$ResultListener;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/android/vending/licensing/LicenseChecker$ResultListener;->clearTimeout()V

    #@3
    return-void
.end method

.method private clearTimeout()V
    .registers 3

    #@0
    const-string v0, "LicenseChecker"

    #@2
    const-string v1, "Clearing timeout."

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    iget-object v0, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener;->this$0:Lcom/android/vending/licensing/LicenseChecker;

    #@9
    # getter for: Lcom/android/vending/licensing/LicenseChecker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/vending/licensing/LicenseChecker;->access$600(Lcom/android/vending/licensing/LicenseChecker;)Landroid/os/Handler;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener;->mOnTimeout:Ljava/lang/Runnable;

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@12
    return-void
.end method

.method private startTimeout()V
    .registers 5

    #@0
    const-string v0, "LicenseChecker"

    #@2
    const-string v1, "Start monitoring timeout."

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    iget-object v0, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener;->this$0:Lcom/android/vending/licensing/LicenseChecker;

    #@9
    # getter for: Lcom/android/vending/licensing/LicenseChecker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/vending/licensing/LicenseChecker;->access$600(Lcom/android/vending/licensing/LicenseChecker;)Landroid/os/Handler;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener;->mOnTimeout:Ljava/lang/Runnable;

    #@f
    const-wide/16 v2, 0x2710

    #@11
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@14
    return-void
.end method


# virtual methods
.method public verifyLicense(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener;->this$0:Lcom/android/vending/licensing/LicenseChecker;

    #@2
    # getter for: Lcom/android/vending/licensing/LicenseChecker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/vending/licensing/LicenseChecker;->access$600(Lcom/android/vending/licensing/LicenseChecker;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Lcom/android/vending/licensing/LicenseChecker$ResultListener$2;

    #@8
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/vending/licensing/LicenseChecker$ResultListener$2;-><init>(Lcom/android/vending/licensing/LicenseChecker$ResultListener;ILjava/lang/String;Ljava/lang/String;)V

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    return-void
.end method
