.class public Lcom/google/android/gms/internal/it;
.super Lcom/google/android/gms/drive/metadata/internal/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/j",
        "<",
        "Lcom/google/android/gms/drive/DriveId;",
        ">;"
    }
.end annotation


# static fields
.field public static final KB:Lcom/google/android/gms/internal/it;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/it;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/it;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/it;->KB:Lcom/google/android/gms/internal/it;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 6

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const-string v0, "driveId"

    #@4
    const/4 v1, 0x2

    #@5
    new-array v1, v1, [Ljava/lang/String;

    #@7
    const-string v2, "sqlId"

    #@9
    aput-object v2, v1, v4

    #@b
    const-string v2, "resourceId"

    #@d
    aput-object v2, v1, v3

    #@f
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@12
    move-result-object v1

    #@13
    new-array v2, v3, [Ljava/lang/String;

    #@15
    const-string v3, "dbInstanceId"

    #@17
    aput-object v3, v2, v4

    #@19
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@1c
    move-result-object v2

    #@1d
    const v3, 0x3e8fa0

    #@20
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/drive/metadata/internal/j;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    #@23
    return-void
.end method


# virtual methods
.method protected synthetic b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .registers 5

    #@0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/it;->k(Lcom/google/android/gms/common/data/DataHolder;II)Lcom/google/android/gms/drive/DriveId;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected k(Lcom/google/android/gms/common/data/DataHolder;II)Lcom/google/android/gms/drive/DriveId;
    .registers 10

    #@0
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->eU()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string v1, "dbInstanceId"

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@9
    move-result-wide v4

    #@a
    const-string v0, "resourceId"

    #@c
    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    if-eqz v1, :cond_1b

    #@12
    const-string v0, "generated-android-"

    #@14
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1b

    #@1a
    const/4 v1, 0x0

    #@1b
    :cond_1b
    new-instance v0, Lcom/google/android/gms/drive/DriveId;

    #@1d
    const-string v2, "sqlId"

    #@1f
    invoke-virtual {p1, v2, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;II)J

    #@22
    move-result-wide v2

    #@23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@2a
    move-result-wide v2

    #@2b
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/DriveId;-><init>(Ljava/lang/String;JJ)V

    #@2e
    return-object v0
.end method
