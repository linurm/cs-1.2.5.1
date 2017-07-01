.class public Lcom/facebook/android/DialogError;
.super Ljava/lang/Throwable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mErrorCode:I

.field private mFailingUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    #@3
    iput p2, p0, Lcom/facebook/android/DialogError;->mErrorCode:I

    #@5
    iput-object p3, p0, Lcom/facebook/android/DialogError;->mFailingUrl:Ljava/lang/String;

    #@7
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget v0, p0, Lcom/facebook/android/DialogError;->mErrorCode:I

    #@2
    return v0
.end method

.method public getFailingUrl()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/android/DialogError;->mFailingUrl:Ljava/lang/String;

    #@2
    return-object v0
.end method
