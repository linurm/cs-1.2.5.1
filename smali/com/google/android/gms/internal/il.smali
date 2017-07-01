.class public final Lcom/google/android/gms/internal/il;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ij;


# static fields
.field private static Hv:Lcom/google/android/gms/internal/il;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static gb()Lcom/google/android/gms/internal/ij;
    .registers 2

    #@0
    const-class v0, Lcom/google/android/gms/internal/il;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/il;->Hv:Lcom/google/android/gms/internal/il;

    #@5
    if-nez v0, :cond_e

    #@7
    new-instance v0, Lcom/google/android/gms/internal/il;

    #@9
    invoke-direct {v0}, Lcom/google/android/gms/internal/il;-><init>()V

    #@c
    sput-object v0, Lcom/google/android/gms/internal/il;->Hv:Lcom/google/android/gms/internal/il;

    #@e
    :cond_e
    sget-object v0, Lcom/google/android/gms/internal/il;->Hv:Lcom/google/android/gms/internal/il;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    #@10
    const-class v1, Lcom/google/android/gms/internal/il;

    #@12
    monitor-exit v1

    #@13
    return-object v0

    #@14
    :catchall_14
    move-exception v0

    #@15
    const-class v1, Lcom/google/android/gms/internal/il;

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 3

    #@0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method
