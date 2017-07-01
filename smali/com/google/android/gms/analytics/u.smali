.class Lcom/google/android/gms/analytics/u;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/u$a;
    }
.end annotation


# static fields
.field private static final uV:Lcom/google/android/gms/analytics/u;


# instance fields
.field private uS:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/google/android/gms/analytics/u$a;",
            ">;"
        }
    .end annotation
.end field

.field private uT:Ljava/lang/StringBuilder;

.field private uU:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/analytics/u;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/analytics/u;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/analytics/u;->uV:Lcom/google/android/gms/analytics/u;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/TreeSet;

    #@5
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/analytics/u;->uS:Ljava/util/SortedSet;

    #@a
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/analytics/u;->uT:Ljava/lang/StringBuilder;

    #@11
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/u;->uU:Z

    #@14
    return-void
.end method

.method public static cU()Lcom/google/android/gms/analytics/u;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/analytics/u;->uV:Lcom/google/android/gms/analytics/u;

    #@2
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/analytics/u$a;)V
    .registers 5

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/u;->uU:Z

    #@3
    if-nez v0, :cond_19

    #@5
    iget-object v0, p0, Lcom/google/android/gms/analytics/u;->uS:Ljava/util/SortedSet;

    #@7
    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    #@a
    iget-object v0, p0, Lcom/google/android/gms/analytics/u;->uT:Ljava/lang/StringBuilder;

    #@c
    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    #@e
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/u$a;->ordinal()I

    #@11
    move-result v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    #@19
    :cond_19
    monitor-exit p0

    #@1a
    return-void

    #@1b
    :catchall_1b
    move-exception v0

    #@1c
    monitor-exit p0

    #@1d
    throw v0
.end method

.method public cV()Ljava/lang/String;
    .registers 8

    #@0
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const/4 v1, 0x6

    #@8
    move v2, v3

    #@9
    :goto_9
    iget-object v0, p0, Lcom/google/android/gms/analytics/u;->uS:Ljava/util/SortedSet;

    #@b
    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    #@e
    move-result v0

    #@f
    if-lez v0, :cond_3c

    #@11
    iget-object v0, p0, Lcom/google/android/gms/analytics/u;->uS:Ljava/util/SortedSet;

    #@13
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/google/android/gms/analytics/u$a;

    #@19
    iget-object v5, p0, Lcom/google/android/gms/analytics/u;->uS:Ljava/util/SortedSet;

    #@1b
    invoke-interface {v5, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    #@1e
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/u$a;->ordinal()I

    #@21
    move-result v5

    #@22
    :goto_22
    if-lt v5, v1, :cond_31

    #@24
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    #@26
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    #@29
    move-result v2

    #@2a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    add-int/lit8 v1, v1, 0x6

    #@2f
    move v2, v3

    #@30
    goto :goto_22

    #@31
    :cond_31
    const/4 v5, 0x1

    #@32
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/u$a;->ordinal()I

    #@35
    move-result v0

    #@36
    rem-int/lit8 v0, v0, 0x6

    #@38
    shl-int v0, v5, v0

    #@3a
    add-int/2addr v2, v0

    #@3b
    goto :goto_9

    #@3c
    :cond_3c
    if-gtz v2, :cond_44

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@41
    move-result v0

    #@42
    if-nez v0, :cond_4d

    #@44
    :cond_44
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    #@46
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@49
    move-result v0

    #@4a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4d
    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/analytics/u;->uS:Ljava/util/SortedSet;

    #@4f
    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    #@52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_55
    .catchall {:try_start_2 .. :try_end_55} :catchall_58

    #@55
    move-result-object v0

    #@56
    monitor-exit p0

    #@57
    return-object v0

    #@58
    :catchall_58
    move-exception v0

    #@59
    monitor-exit p0

    #@5a
    throw v0
.end method

.method public cW()Ljava/lang/String;
    .registers 4

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/u;->uT:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_11

    #@9
    iget-object v0, p0, Lcom/google/android/gms/analytics/u;->uT:Ljava/lang/StringBuilder;

    #@b
    const/4 v1, 0x0

    #@c
    const-string v2, "."

    #@e
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/analytics/u;->uT:Ljava/lang/StringBuilder;

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    iput-object v1, p0, Lcom/google/android/gms/analytics/u;->uT:Ljava/lang/StringBuilder;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    #@1e
    monitor-exit p0

    #@1f
    return-object v0

    #@20
    :catchall_20
    move-exception v0

    #@21
    monitor-exit p0

    #@22
    throw v0
.end method

.method public u(Z)V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/analytics/u;->uU:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    #@3
    monitor-exit p0

    #@4
    return-void

    #@5
    :catchall_5
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method
