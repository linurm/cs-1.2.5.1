.class public Lcom/facebook/internal/CacheableRequestBatch;
.super Lcom/facebook/RequestBatch;


# instance fields
.field private cacheKey:Ljava/lang/String;

.field private forceRoundTrip:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/facebook/RequestBatch;-><init>()V

    #@3
    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/Request;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/RequestBatch;-><init>([Lcom/facebook/Request;)V

    #@3
    return-void
.end method


# virtual methods
.method public final getCacheKeyOverride()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/internal/CacheableRequestBatch;->cacheKey:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getForceRoundTrip()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/internal/CacheableRequestBatch;->forceRoundTrip:Z

    #@2
    return v0
.end method

.method public final setCacheKeyOverride(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/internal/CacheableRequestBatch;->cacheKey:Ljava/lang/String;

    #@2
    return-void
.end method

.method public final setForceRoundTrip(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/facebook/internal/CacheableRequestBatch;->forceRoundTrip:Z

    #@2
    return-void
.end method
