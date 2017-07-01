.class public Lcom/google/android/gms/wearable/internal/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wearable/DataApi$DataItemResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final alH:Lcom/google/android/gms/wearable/DataItem;

.field private final yz:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/DataItem;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/f$a;->yz:Lcom/google/android/gms/common/api/Status;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/f$a;->alH:Lcom/google/android/gms/wearable/DataItem;

    #@7
    return-void
.end method


# virtual methods
.method public getDataItem()Lcom/google/android/gms/wearable/DataItem;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/f$a;->alH:Lcom/google/android/gms/wearable/DataItem;

    #@2
    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/f$a;->yz:Lcom/google/android/gms/common/api/Status;

    #@2
    return-object v0
.end method
