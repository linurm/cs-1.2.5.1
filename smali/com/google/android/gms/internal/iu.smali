.class public Lcom/google/android/gms/internal/iu;
.super Ljava/lang/Object;


# static fields
.field public static final KC:Lcom/google/android/gms/drive/metadata/MetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final KD:Lcom/google/android/gms/drive/metadata/MetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const v2, 0x419ce0

    #@3
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/f;

    #@5
    const-string v1, "contentAvailability"

    #@7
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/f;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Lcom/google/android/gms/internal/iu;->KC:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@c
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/b;

    #@e
    const-string v1, "isPinnable"

    #@10
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/b;-><init>(Ljava/lang/String;I)V

    #@13
    sput-object v0, Lcom/google/android/gms/internal/iu;->KD:Lcom/google/android/gms/drive/metadata/MetadataField;

    #@15
    return-void
.end method
