.class public final Lcom/google/android/gms/internal/dq$a;
.super Lcom/google/android/gms/internal/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/dp$a;)V
    .registers 4

    #@0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/dq;-><init>(Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/dp$a;)V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/dq$a;->mContext:Landroid/content/Context;

    #@5
    return-void
.end method


# virtual methods
.method public bs()V
    .registers 1

    #@0
    return-void
.end method

.method public bt()Lcom/google/android/gms/internal/dw;
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/internal/ay;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ay;-><init>()V

    #@5
    iget-object v1, p0, Lcom/google/android/gms/internal/dq$a;->mContext:Landroid/content/Context;

    #@7
    new-instance v2, Lcom/google/android/gms/internal/bj;

    #@9
    invoke-direct {v2}, Lcom/google/android/gms/internal/bj;-><init>()V

    #@c
    new-instance v3, Lcom/google/android/gms/internal/ee;

    #@e
    invoke-direct {v3}, Lcom/google/android/gms/internal/ee;-><init>()V

    #@11
    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/dx;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/bi;Lcom/google/android/gms/internal/ed;)Lcom/google/android/gms/internal/dx;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method
