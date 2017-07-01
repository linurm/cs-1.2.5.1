.class public Lcom/apportable/iap/Security$VerifiedPurchase;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/iap/Security;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifiedPurchase"
.end annotation


# instance fields
.field public developerPayload:Ljava/lang/String;

.field public notificationId:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public purchaseState:Lcom/apportable/iap/Consts$PurchaseState;

.field public purchaseTime:J

.field public purchaseToken:Ljava/lang/String;

.field public signedData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/apportable/iap/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/apportable/iap/Security$VerifiedPurchase;->purchaseState:Lcom/apportable/iap/Consts$PurchaseState;

    #@5
    iput-object p2, p0, Lcom/apportable/iap/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/apportable/iap/Security$VerifiedPurchase;->productId:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/apportable/iap/Security$VerifiedPurchase;->orderId:Ljava/lang/String;

    #@b
    iput-wide p5, p0, Lcom/apportable/iap/Security$VerifiedPurchase;->purchaseTime:J

    #@d
    iput-object p7, p0, Lcom/apportable/iap/Security$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    #@f
    iput-object p8, p0, Lcom/apportable/iap/Security$VerifiedPurchase;->signedData:Ljava/lang/String;

    #@11
    iput-object p9, p0, Lcom/apportable/iap/Security$VerifiedPurchase;->purchaseToken:Ljava/lang/String;

    #@13
    return-void
.end method
