.class public Lcom/android/vending/licensing/StrictPolicy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/vending/licensing/Policy;


# static fields
.field private static final TAG:Ljava/lang/String; = "StrictPolicy"


# instance fields
.field private mLastResponse:Lcom/android/vending/licensing/Policy$LicenseResponse;

.field private mPreferences:Lcom/android/vending/licensing/PreferenceObfuscator;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    sget-object v0, Lcom/android/vending/licensing/Policy$LicenseResponse;->RETRY:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@5
    iput-object v0, p0, Lcom/android/vending/licensing/StrictPolicy;->mLastResponse:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@7
    return-void
.end method


# virtual methods
.method public allowAccess()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/vending/licensing/StrictPolicy;->mLastResponse:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@2
    sget-object v1, Lcom/android/vending/licensing/Policy$LicenseResponse;->LICENSED:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@4
    if-ne v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public processServerResponse(Lcom/android/vending/licensing/Policy$LicenseResponse;Lcom/android/vending/licensing/ResponseData;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/android/vending/licensing/StrictPolicy;->mLastResponse:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@2
    return-void
.end method
