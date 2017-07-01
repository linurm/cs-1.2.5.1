.class Lcom/google/android/gms/tagmanager/cv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cf;


# instance fields
.field private ahJ:J

.field private final wE:J

.field private final wF:I

.field private wG:D

.field private final wI:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 5

    #@0
    const/16 v0, 0x3c

    #@2
    const-wide/16 v2, 0x7d0

    #@4
    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gms/tagmanager/cv;-><init>(IJ)V

    #@7
    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cv;->wI:Ljava/lang/Object;

    #@a
    iput p1, p0, Lcom/google/android/gms/tagmanager/cv;->wF:I

    #@c
    iget v0, p0, Lcom/google/android/gms/tagmanager/cv;->wF:I

    #@e
    int-to-double v0, v0

    #@f
    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/cv;->wG:D

    #@11
    iput-wide p2, p0, Lcom/google/android/gms/tagmanager/cv;->wE:J

    #@13
    return-void
.end method


# virtual methods
.method public do()Z
    .registers 13

    #@0
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    #@2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cv;->wI:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@8
    move-result-wide v2

    #@9
    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/cv;->wG:D

    #@b
    iget v0, p0, Lcom/google/android/gms/tagmanager/cv;->wF:I

    #@d
    int-to-double v6, v0

    #@e
    cmpg-double v0, v4, v6

    #@10
    if-gez v0, :cond_2d

    #@12
    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/cv;->ahJ:J

    #@14
    sub-long v4, v2, v4

    #@16
    long-to-double v4, v4

    #@17
    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/cv;->wE:J

    #@19
    long-to-double v6, v6

    #@1a
    div-double/2addr v4, v6

    #@1b
    const-wide/16 v6, 0x0

    #@1d
    cmpl-double v0, v4, v6

    #@1f
    if-lez v0, :cond_2d

    #@21
    iget v0, p0, Lcom/google/android/gms/tagmanager/cv;->wF:I

    #@23
    int-to-double v6, v0

    #@24
    iget-wide v8, p0, Lcom/google/android/gms/tagmanager/cv;->wG:D

    #@26
    add-double/2addr v4, v8

    #@27
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    #@2a
    move-result-wide v4

    #@2b
    iput-wide v4, p0, Lcom/google/android/gms/tagmanager/cv;->wG:D

    #@2d
    :cond_2d
    iput-wide v2, p0, Lcom/google/android/gms/tagmanager/cv;->ahJ:J

    #@2f
    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/cv;->wG:D

    #@31
    cmpl-double v0, v2, v10

    #@33
    if-ltz v0, :cond_3d

    #@35
    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/cv;->wG:D

    #@37
    sub-double/2addr v2, v10

    #@38
    iput-wide v2, p0, Lcom/google/android/gms/tagmanager/cv;->wG:D

    #@3a
    const/4 v0, 0x1

    #@3b
    monitor-exit v1

    #@3c
    :goto_3c
    return v0

    #@3d
    :cond_3d
    const-string v0, "No more tokens available."

    #@3f
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@42
    const/4 v0, 0x0

    #@43
    monitor-exit v1

    #@44
    goto :goto_3c

    #@45
    :catchall_45
    move-exception v0

    #@46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_45

    #@47
    throw v0
.end method
