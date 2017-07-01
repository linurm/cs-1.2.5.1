.class public Lcom/android/dx/util/MutabilityControl;
.super Ljava/lang/Object;


# instance fields
.field private mutable:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/dx/util/MutabilityControl;->mutable:Z

    #@6
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-boolean p1, p0, Lcom/android/dx/util/MutabilityControl;->mutable:Z

    #@5
    return-void
.end method


# virtual methods
.method public final isImmutable()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/android/dx/util/MutabilityControl;->mutable:Z

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public final isMutable()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/android/dx/util/MutabilityControl;->mutable:Z

    #@2
    return v0
.end method

.method public setImmutable()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/dx/util/MutabilityControl;->mutable:Z

    #@3
    return-void
.end method

.method public final throwIfImmutable()V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/android/dx/util/MutabilityControl;->mutable:Z

    #@2
    if-nez v0, :cond_c

    #@4
    new-instance v0, Lcom/android/dx/util/MutabilityException;

    #@6
    const-string v1, "immutable instance"

    #@8
    invoke-direct {v0, v1}, Lcom/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    return-void
.end method

.method public final throwIfMutable()V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/android/dx/util/MutabilityControl;->mutable:Z

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Lcom/android/dx/util/MutabilityException;

    #@6
    const-string v1, "mutable instance"

    #@8
    invoke-direct {v0, v1}, Lcom/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    return-void
.end method
