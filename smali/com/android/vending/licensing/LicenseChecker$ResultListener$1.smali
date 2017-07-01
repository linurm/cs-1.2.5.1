.class Lcom/android/vending/licensing/LicenseChecker$ResultListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/licensing/LicenseChecker$ResultListener;-><init>(Lcom/android/vending/licensing/LicenseChecker;Lcom/android/vending/licensing/LicenseValidator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/licensing/LicenseChecker$ResultListener;

.field final synthetic val$this$0:Lcom/android/vending/licensing/LicenseChecker;


# direct methods
.method constructor <init>(Lcom/android/vending/licensing/LicenseChecker$ResultListener;Lcom/android/vending/licensing/LicenseChecker;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/android/vending/licensing/LicenseChecker$ResultListener;

    #@2
    iput-object p2, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener$1;->val$this$0:Lcom/android/vending/licensing/LicenseChecker;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    const-string v0, "LicenseChecker"

    #@2
    const-string v1, "Check timed out."

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    iget-object v0, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/android/vending/licensing/LicenseChecker$ResultListener;

    #@9
    iget-object v0, v0, Lcom/android/vending/licensing/LicenseChecker$ResultListener;->this$0:Lcom/android/vending/licensing/LicenseChecker;

    #@b
    iget-object v1, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/android/vending/licensing/LicenseChecker$ResultListener;

    #@d
    # getter for: Lcom/android/vending/licensing/LicenseChecker$ResultListener;->mValidator:Lcom/android/vending/licensing/LicenseValidator;
    invoke-static {v1}, Lcom/android/vending/licensing/LicenseChecker$ResultListener;->access$000(Lcom/android/vending/licensing/LicenseChecker$ResultListener;)Lcom/android/vending/licensing/LicenseValidator;

    #@10
    move-result-object v1

    #@11
    # invokes: Lcom/android/vending/licensing/LicenseChecker;->handleServiceConnectionError(Lcom/android/vending/licensing/LicenseValidator;)V
    invoke-static {v0, v1}, Lcom/android/vending/licensing/LicenseChecker;->access$100(Lcom/android/vending/licensing/LicenseChecker;Lcom/android/vending/licensing/LicenseValidator;)V

    #@14
    iget-object v0, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/android/vending/licensing/LicenseChecker$ResultListener;

    #@16
    iget-object v0, v0, Lcom/android/vending/licensing/LicenseChecker$ResultListener;->this$0:Lcom/android/vending/licensing/LicenseChecker;

    #@18
    iget-object v1, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/android/vending/licensing/LicenseChecker$ResultListener;

    #@1a
    # getter for: Lcom/android/vending/licensing/LicenseChecker$ResultListener;->mValidator:Lcom/android/vending/licensing/LicenseValidator;
    invoke-static {v1}, Lcom/android/vending/licensing/LicenseChecker$ResultListener;->access$000(Lcom/android/vending/licensing/LicenseChecker$ResultListener;)Lcom/android/vending/licensing/LicenseValidator;

    #@1d
    move-result-object v1

    #@1e
    # invokes: Lcom/android/vending/licensing/LicenseChecker;->finishCheck(Lcom/android/vending/licensing/LicenseValidator;)V
    invoke-static {v0, v1}, Lcom/android/vending/licensing/LicenseChecker;->access$200(Lcom/android/vending/licensing/LicenseChecker;Lcom/android/vending/licensing/LicenseValidator;)V

    #@21
    return-void
.end method
