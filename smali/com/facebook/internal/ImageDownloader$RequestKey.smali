.class Lcom/facebook/internal/ImageDownloader$RequestKey;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestKey"
.end annotation


# static fields
.field private static final HASH_MULTIPLIER:I = 0x25

.field private static final HASH_SEED:I = 0x1d


# instance fields
.field tag:Ljava/lang/Object;

.field uri:Ljava/net/URI;


# direct methods
.method constructor <init>(Ljava/net/URI;Ljava/lang/Object;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Ljava/net/URI;

    #@5
    iput-object p2, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    #@7
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_16

    #@3
    instance-of v1, p1, Lcom/facebook/internal/ImageDownloader$RequestKey;

    #@5
    if-eqz v1, :cond_16

    #@7
    check-cast p1, Lcom/facebook/internal/ImageDownloader$RequestKey;

    #@9
    iget-object v1, p1, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Ljava/net/URI;

    #@b
    iget-object v2, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Ljava/net/URI;

    #@d
    if-ne v1, v2, :cond_16

    #@f
    iget-object v1, p1, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    #@11
    iget-object v2, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    #@13
    if-ne v1, v2, :cond_16

    #@15
    const/4 v0, 0x1

    #@16
    :cond_16
    return v0
.end method

.method public hashCode()I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Ljava/net/URI;

    #@2
    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    #@5
    move-result v0

    #@6
    add-int/lit16 v0, v0, 0x431

    #@8
    mul-int/lit8 v0, v0, 0x25

    #@a
    iget-object v1, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    #@c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@f
    move-result v1

    #@10
    add-int/2addr v0, v1

    #@11
    return v0
.end method
