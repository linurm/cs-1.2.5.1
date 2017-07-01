.class Lcom/android/vending/licensing/LicenseChecker$ResultListener$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/licensing/LicenseChecker$ResultListener;->verifyLicense(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/licensing/LicenseChecker$ResultListener;

.field final synthetic val$responseCode:I

.field final synthetic val$signature:Ljava/lang/String;

.field final synthetic val$signedData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/vending/licensing/LicenseChecker$ResultListener;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener$2;->this$1:Lcom/android/vending/licensing/LicenseChecker$ResultListener;

    #@2
    iput p2, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener$2;->val$responseCode:I

    #@4
    iput-object p3, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener$2;->val$signedData:Ljava/lang/String;

    #@6
    iput-object p4, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener$2;->val$signature:Ljava/lang/String;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    #@0
    const-string v0, "LicenseChecker"

    #@2
    const-string v1, "Received response."

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    iget-object v0, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener$2;->this$1:Lcom/android/vending/licensing/LicenseChecker$ResultListener;

    #@9
    iget-object v0, v0, Lcom/android/vending/licensing/LicenseChecker$ResultListener;->this$0:Lcom/android/vending/licensing/LicenseChecker;

    #@b
    # getter for: Lcom/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/vending/licensing/LicenseChecker;->access$300(Lcom/android/vending/licensing/LicenseChecker;)Ljava/util/Set;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener$2;->this$1:Lcom/android/vending/licensing/LicenseChecker$ResultListener;

    #@11
    # getter for: Lcom/android/vending/licensing/LicenseChecker$ResultListener;->mValidator:Lcom/android/vending/licensing/LicenseValidator;
    invoke-static {v1}, Lcom/android/vending/licensing/LicenseChecker$ResultListener;->access$000(Lcom/android/vending/licensing/LicenseChecker$ResultListener;)Lcom/android/vending/licensing/LicenseValidator;

    #@14
    move-result-object v1

    #@15
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_44

    #@1b
    iget-object v0, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener$2;->this$1:Lcom/android/vending/licensing/LicenseChecker$ResultListener;

    #@1d
    # invokes: Lcom/android/vending/licensing/LicenseChecker$ResultListener;->clearTimeout()V
    invoke-static {v0}, Lcom/android/vending/licensing/LicenseChecker$ResultListener;->access$400(Lcom/android/vending/licensing/LicenseChecker$ResultListener;)V

    #@20
    iget-object v0, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener$2;->this$1:Lcom/android/vending/licensing/LicenseChecker$ResultListener;

    #@22
    # getter for: Lcom/android/vending/licensing/LicenseChecker$ResultListener;->mValidator:Lcom/android/vending/licensing/LicenseValidator;
    invoke-static {v0}, Lcom/android/vending/licensing/LicenseChecker$ResultListener;->access$000(Lcom/android/vending/licensing/LicenseChecker$ResultListener;)Lcom/android/vending/licensing/LicenseValidator;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener$2;->this$1:Lcom/android/vending/licensing/LicenseChecker$ResultListener;

    #@28
    iget-object v1, v1, Lcom/android/vending/licensing/LicenseChecker$ResultListener;->this$0:Lcom/android/vending/licensing/LicenseChecker;

    #@2a
    # getter for: Lcom/android/vending/licensing/LicenseChecker;->mPublicKey:Ljava/security/PublicKey;
    invoke-static {v1}, Lcom/android/vending/licensing/LicenseChecker;->access$500(Lcom/android/vending/licensing/LicenseChecker;)Ljava/security/PublicKey;

    #@2d
    move-result-object v1

    #@2e
    iget v2, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener$2;->val$responseCode:I

    #@30
    iget-object v3, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener$2;->val$signedData:Ljava/lang/String;

    #@32
    iget-object v4, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener$2;->val$signature:Ljava/lang/String;

    #@34
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/vending/licensing/LicenseValidator;->verify(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V

    #@37
    iget-object v0, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener$2;->this$1:Lcom/android/vending/licensing/LicenseChecker$ResultListener;

    #@39
    iget-object v0, v0, Lcom/android/vending/licensing/LicenseChecker$ResultListener;->this$0:Lcom/android/vending/licensing/LicenseChecker;

    #@3b
    iget-object v1, p0, Lcom/android/vending/licensing/LicenseChecker$ResultListener$2;->this$1:Lcom/android/vending/licensing/LicenseChecker$ResultListener;

    #@3d
    # getter for: Lcom/android/vending/licensing/LicenseChecker$ResultListener;->mValidator:Lcom/android/vending/licensing/LicenseValidator;
    invoke-static {v1}, Lcom/android/vending/licensing/LicenseChecker$ResultListener;->access$000(Lcom/android/vending/licensing/LicenseChecker$ResultListener;)Lcom/android/vending/licensing/LicenseValidator;

    #@40
    move-result-object v1

    #@41
    # invokes: Lcom/android/vending/licensing/LicenseChecker;->finishCheck(Lcom/android/vending/licensing/LicenseValidator;)V
    invoke-static {v0, v1}, Lcom/android/vending/licensing/LicenseChecker;->access$200(Lcom/android/vending/licensing/LicenseChecker;Lcom/android/vending/licensing/LicenseValidator;)V

    #@44
    :cond_44
    return-void
.end method
