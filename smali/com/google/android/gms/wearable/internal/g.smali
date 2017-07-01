.class public Lcom/google/android/gms/wearable/internal/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wearable/DataEvent;


# instance fields
.field private AT:I

.field private alH:Lcom/google/android/gms/wearable/DataItem;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/wearable/DataEvent;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-interface {p1}, Lcom/google/android/gms/wearable/DataEvent;->getType()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/google/android/gms/wearable/internal/g;->AT:I

    #@9
    invoke-interface {p1}, Lcom/google/android/gms/wearable/DataEvent;->getDataItem()Lcom/google/android/gms/wearable/DataItem;

    #@c
    move-result-object v0

    #@d
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataItem;->freeze()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/google/android/gms/wearable/DataItem;

    #@13
    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/g;->alH:Lcom/google/android/gms/wearable/DataItem;

    #@15
    return-void
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/g;->np()Lcom/google/android/gms/wearable/DataEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDataItem()Lcom/google/android/gms/wearable/DataItem;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/g;->alH:Lcom/google/android/gms/wearable/DataItem;

    #@2
    return-object v0
.end method

.method public getType()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wearable/internal/g;->AT:I

    #@2
    return v0
.end method

.method public isDataValid()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public np()Lcom/google/android/gms/wearable/DataEvent;
    .registers 1

    #@0
    return-object p0
.end method
