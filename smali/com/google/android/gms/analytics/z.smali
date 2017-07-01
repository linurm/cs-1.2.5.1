.class Lcom/google/android/gms/analytics/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/ad;


# instance fields
.field private final wE:J

.field private final wF:I

.field private wG:D

.field private wH:J

.field private final wI:Ljava/lang/Object;

.field private final wJ:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/analytics/z;->wI:Ljava/lang/Object;

    #@a
    iput p1, p0, Lcom/google/android/gms/analytics/z;->wF:I

    #@c
    iget v0, p0, Lcom/google/android/gms/analytics/z;->wF:I

    #@e
    int-to-double v0, v0

    #@f
    iput-wide v0, p0, Lcom/google/android/gms/analytics/z;->wG:D

    #@11
    iput-wide p2, p0, Lcom/google/android/gms/analytics/z;->wE:J

    #@13
    iput-object p4, p0, Lcom/google/android/gms/analytics/z;->wJ:Ljava/lang/String;

    #@15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    #@0
    const/16 v0, 0x3c

    #@2
    const-wide/16 v2, 0x7d0

    #@4
    invoke-direct {p0, v0, v2, v3, p1}, Lcom/google/android/gms/analytics/z;-><init>(IJLjava/lang/String;)V

    #@7
    return-void
.end method


# virtual methods
.method public do()Z
    .registers 13

    #@0
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    #@2
    iget-object v1, p0, Lcom/google/android/gms/analytics/z;->wI:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@8
    move-result-wide v2

    #@9
    iget-wide v4, p0, Lcom/google/android/gms/analytics/z;->wG:D

    #@b
    iget v0, p0, Lcom/google/android/gms/analytics/z;->wF:I

    #@d
    int-to-double v6, v0

    #@e
    cmpg-double v0, v4, v6

    #@10
    if-gez v0, :cond_2d

    #@12
    iget-wide v4, p0, Lcom/google/android/gms/analytics/z;->wH:J

    #@14
    sub-long v4, v2, v4

    #@16
    long-to-double v4, v4

    #@17
    iget-wide v6, p0, Lcom/google/android/gms/analytics/z;->wE:J

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
    iget v0, p0, Lcom/google/android/gms/analytics/z;->wF:I

    #@23
    int-to-double v6, v0

    #@24
    iget-wide v8, p0, Lcom/google/android/gms/analytics/z;->wG:D

    #@26
    add-double/2addr v4, v8

    #@27
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    #@2a
    move-result-wide v4

    #@2b
    iput-wide v4, p0, Lcom/google/android/gms/analytics/z;->wG:D

    #@2d
    :cond_2d
    iput-wide v2, p0, Lcom/google/android/gms/analytics/z;->wH:J

    #@2f
    iget-wide v2, p0, Lcom/google/android/gms/analytics/z;->wG:D

    #@31
    cmpl-double v0, v2, v10

    #@33
    if-ltz v0, :cond_3d

    #@35
    iget-wide v2, p0, Lcom/google/android/gms/analytics/z;->wG:D

    #@37
    sub-double/2addr v2, v10

    #@38
    iput-wide v2, p0, Lcom/google/android/gms/analytics/z;->wG:D

    #@3a
    const/4 v0, 0x1

    #@3b
    monitor-exit v1

    #@3c
    :goto_3c
    return v0

    #@3d
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string v2, "Excessive "

    #@44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    iget-object v2, p0, Lcom/google/android/gms/analytics/z;->wJ:Ljava/lang/String;

    #@4a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    const-string v2, " detected; call ignored."

    #@50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@5b
    const/4 v0, 0x0

    #@5c
    monitor-exit v1

    #@5d
    goto :goto_3c

    #@5e
    :catchall_5e
    move-exception v0

    #@5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5 .. :try_end_60} :catchall_5e

    #@60
    throw v0
.end method
