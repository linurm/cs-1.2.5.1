.class Lcom/google/android/gms/tagmanager/bf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cf;


# instance fields
.field private final aef:Lcom/google/android/gms/internal/ij;

.field private final agf:J

.field private final wE:J

.field private final wF:I

.field private wG:D

.field private wH:J

.field private final wI:Ljava/lang/Object;

.field private final wJ:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJJLjava/lang/String;Lcom/google/android/gms/internal/ij;)V
    .registers 10

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/bf;->wI:Ljava/lang/Object;

    #@a
    iput p1, p0, Lcom/google/android/gms/tagmanager/bf;->wF:I

    #@c
    iget v0, p0, Lcom/google/android/gms/tagmanager/bf;->wF:I

    #@e
    int-to-double v0, v0

    #@f
    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/bf;->wG:D

    #@11
    iput-wide p2, p0, Lcom/google/android/gms/tagmanager/bf;->wE:J

    #@13
    iput-wide p4, p0, Lcom/google/android/gms/tagmanager/bf;->agf:J

    #@15
    iput-object p6, p0, Lcom/google/android/gms/tagmanager/bf;->wJ:Ljava/lang/String;

    #@17
    iput-object p7, p0, Lcom/google/android/gms/tagmanager/bf;->aef:Lcom/google/android/gms/internal/ij;

    #@19
    return-void
.end method


# virtual methods
.method public do()Z
    .registers 13

    #@0
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    #@2
    const/4 v0, 0x0

    #@3
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/bf;->wI:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    :try_start_6
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/bf;->aef:Lcom/google/android/gms/internal/ij;

    #@8
    invoke-interface {v2}, Lcom/google/android/gms/internal/ij;->currentTimeMillis()J

    #@b
    move-result-wide v2

    #@c
    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/bf;->wH:J

    #@e
    sub-long v4, v2, v4

    #@10
    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/bf;->agf:J

    #@12
    cmp-long v4, v4, v6

    #@14
    if-gez v4, :cond_36

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string v3, "Excessive "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/bf;->wJ:Ljava/lang/String;

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    const-string v3, " detected; call ignored."

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@34
    monitor-exit v1

    #@35
    :goto_35
    return v0

    #@36
    :cond_36
    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/bf;->wG:D

    #@38
    iget v6, p0, Lcom/google/android/gms/tagmanager/bf;->wF:I

    #@3a
    int-to-double v6, v6

    #@3b
    cmpg-double v4, v4, v6

    #@3d
    if-gez v4, :cond_5a

    #@3f
    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/bf;->wH:J

    #@41
    sub-long v4, v2, v4

    #@43
    long-to-double v4, v4

    #@44
    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/bf;->wE:J

    #@46
    long-to-double v6, v6

    #@47
    div-double/2addr v4, v6

    #@48
    const-wide/16 v6, 0x0

    #@4a
    cmpl-double v6, v4, v6

    #@4c
    if-lez v6, :cond_5a

    #@4e
    iget v6, p0, Lcom/google/android/gms/tagmanager/bf;->wF:I

    #@50
    int-to-double v6, v6

    #@51
    iget-wide v8, p0, Lcom/google/android/gms/tagmanager/bf;->wG:D

    #@53
    add-double/2addr v4, v8

    #@54
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    #@57
    move-result-wide v4

    #@58
    iput-wide v4, p0, Lcom/google/android/gms/tagmanager/bf;->wG:D

    #@5a
    :cond_5a
    iput-wide v2, p0, Lcom/google/android/gms/tagmanager/bf;->wH:J

    #@5c
    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/bf;->wG:D

    #@5e
    cmpl-double v2, v2, v10

    #@60
    if-ltz v2, :cond_6d

    #@62
    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/bf;->wG:D

    #@64
    sub-double/2addr v2, v10

    #@65
    iput-wide v2, p0, Lcom/google/android/gms/tagmanager/bf;->wG:D

    #@67
    const/4 v0, 0x1

    #@68
    monitor-exit v1

    #@69
    goto :goto_35

    #@6a
    :catchall_6a
    move-exception v0

    #@6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_6 .. :try_end_6c} :catchall_6a

    #@6c
    throw v0

    #@6d
    :cond_6d
    :try_start_6d
    new-instance v2, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string v3, "Excessive "

    #@74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v2

    #@78
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/bf;->wJ:Ljava/lang/String;

    #@7a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v2

    #@7e
    const-string v3, " detected; call ignored."

    #@80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v2

    #@88
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_6d .. :try_end_8c} :catchall_6a

    #@8c
    goto :goto_35
.end method
