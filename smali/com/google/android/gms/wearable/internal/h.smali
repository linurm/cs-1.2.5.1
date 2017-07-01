.class public final Lcom/google/android/gms/wearable/internal/h;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/wearable/DataEvent;


# instance fields
.field private final RG:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    iput p3, p0, Lcom/google/android/gms/wearable/internal/h;->RG:I

    #@5
    return-void
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/h;->np()Lcom/google/android/gms/wearable/DataEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDataItem()Lcom/google/android/gms/wearable/DataItem;
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/internal/o;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/h;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@4
    iget v2, p0, Lcom/google/android/gms/wearable/internal/h;->EC:I

    #@6
    iget v3, p0, Lcom/google/android/gms/wearable/internal/h;->RG:I

    #@8
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/wearable/internal/o;-><init>(Lcom/google/android/gms/common/data/DataHolder;II)V

    #@b
    return-object v0
.end method

.method public getType()I
    .registers 2

    #@0
    const-string v0, "event_type"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/h;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public np()Lcom/google/android/gms/wearable/DataEvent;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/internal/g;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/g;-><init>(Lcom/google/android/gms/wearable/DataEvent;)V

    #@5
    return-object v0
.end method
