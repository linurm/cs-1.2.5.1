.class public Lcom/google/android/gms/internal/is$d;
.super Lcom/google/android/gms/drive/metadata/internal/d;

# interfaces
.implements Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;
.implements Lcom/google/android/gms/drive/metadata/SortableMetadataField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/is;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/d;",
        "Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField",
        "<",
        "Ljava/util/Date;",
        ">;",
        "Lcom/google/android/gms/drive/metadata/SortableMetadataField",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/d;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method
