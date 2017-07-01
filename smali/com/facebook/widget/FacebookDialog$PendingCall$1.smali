.class final Lcom/facebook/widget/FacebookDialog$PendingCall$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/FacebookDialog$PendingCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/widget/FacebookDialog$PendingCall;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/widget/FacebookDialog$PendingCall;
    .registers 4

    #@0
    new-instance v0, Lcom/facebook/widget/FacebookDialog$PendingCall;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;-><init>(Landroid/os/Parcel;Lcom/facebook/widget/FacebookDialog$1;)V

    #@6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/facebook/widget/FacebookDialog$PendingCall$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/widget/FacebookDialog$PendingCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/widget/FacebookDialog$PendingCall;
    .registers 3

    #@0
    new-array v0, p1, [Lcom/facebook/widget/FacebookDialog$PendingCall;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/facebook/widget/FacebookDialog$PendingCall$1;->newArray(I)[Lcom/facebook/widget/FacebookDialog$PendingCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
