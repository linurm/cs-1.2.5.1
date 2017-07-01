.class public Lcom/google/android/vending/licensing/StrictPolicy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/vending/licensing/Policy;


# instance fields
.field private mLastResponse:I


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/16 v0, 0x123

    #@5
    iput v0, p0, Lcom/google/android/vending/licensing/StrictPolicy;->mLastResponse:I

    #@7
    return-void
.end method


# virtual methods
.method public allowAccess()Z
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/vending/licensing/StrictPolicy;->mLastResponse:I

    #@2
    const/16 v1, 0x100

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

.method public processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V
    .registers 3

    #@0
    iput p1, p0, Lcom/google/android/vending/licensing/StrictPolicy;->mLastResponse:I

    #@2
    return-void
.end method
