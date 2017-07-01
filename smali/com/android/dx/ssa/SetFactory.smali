.class public final Lcom/android/dx/ssa/SetFactory;
.super Ljava/lang/Object;


# static fields
.field private static final DOMFRONT_SET_THRESHOLD_SIZE:I = 0xc00

.field private static final INTERFERENCE_SET_THRESHOLD_SIZE:I = 0xc00

.field private static final LIVENESS_SET_THRESHOLD_SIZE:I = 0xc00


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static makeDomFrontSet(I)Lcom/android/dx/util/IntSet;
    .registers 2

    #@0
    const/16 v0, 0xc00

    #@2
    if-gt p0, v0, :cond_a

    #@4
    new-instance v0, Lcom/android/dx/util/BitIntSet;

    #@6
    invoke-direct {v0, p0}, Lcom/android/dx/util/BitIntSet;-><init>(I)V

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    new-instance v0, Lcom/android/dx/util/ListIntSet;

    #@c
    invoke-direct {v0}, Lcom/android/dx/util/ListIntSet;-><init>()V

    #@f
    goto :goto_9
.end method

.method public static makeInterferenceSet(I)Lcom/android/dx/util/IntSet;
    .registers 2

    #@0
    const/16 v0, 0xc00

    #@2
    if-gt p0, v0, :cond_a

    #@4
    new-instance v0, Lcom/android/dx/util/BitIntSet;

    #@6
    invoke-direct {v0, p0}, Lcom/android/dx/util/BitIntSet;-><init>(I)V

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    new-instance v0, Lcom/android/dx/util/ListIntSet;

    #@c
    invoke-direct {v0}, Lcom/android/dx/util/ListIntSet;-><init>()V

    #@f
    goto :goto_9
.end method

.method static makeLivenessSet(I)Lcom/android/dx/util/IntSet;
    .registers 2

    #@0
    const/16 v0, 0xc00

    #@2
    if-gt p0, v0, :cond_a

    #@4
    new-instance v0, Lcom/android/dx/util/BitIntSet;

    #@6
    invoke-direct {v0, p0}, Lcom/android/dx/util/BitIntSet;-><init>(I)V

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    new-instance v0, Lcom/android/dx/util/ListIntSet;

    #@c
    invoke-direct {v0}, Lcom/android/dx/util/ListIntSet;-><init>()V

    #@f
    goto :goto_9
.end method
