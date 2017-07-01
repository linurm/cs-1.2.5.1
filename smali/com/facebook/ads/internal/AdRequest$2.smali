.class synthetic Lcom/facebook/ads/internal/AdRequest$2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$facebook$ads$internal$AdType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    invoke-static {}, Lcom/facebook/ads/internal/AdType;->values()[Lcom/facebook/ads/internal/AdType;

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    new-array v0, v0, [I

    #@7
    sput-object v0, Lcom/facebook/ads/internal/AdRequest$2;->$SwitchMap$com$facebook$ads$internal$AdType:[I

    #@9
    :try_start_9
    sget-object v0, Lcom/facebook/ads/internal/AdRequest$2;->$SwitchMap$com$facebook$ads$internal$AdType:[I

    #@b
    sget-object v1, Lcom/facebook/ads/internal/AdType;->NATIVE:Lcom/facebook/ads/internal/AdType;

    #@d
    invoke-virtual {v1}, Lcom/facebook/ads/internal/AdType;->ordinal()I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x1

    #@12
    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_20

    #@14
    :goto_14
    :try_start_14
    sget-object v0, Lcom/facebook/ads/internal/AdRequest$2;->$SwitchMap$com$facebook$ads$internal$AdType:[I

    #@16
    sget-object v1, Lcom/facebook/ads/internal/AdType;->HTML:Lcom/facebook/ads/internal/AdType;

    #@18
    invoke-virtual {v1}, Lcom/facebook/ads/internal/AdType;->ordinal()I

    #@1b
    move-result v1

    #@1c
    const/4 v2, 0x2

    #@1d
    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_22

    #@1f
    :goto_1f
    return-void

    #@20
    :catch_20
    move-exception v0

    #@21
    goto :goto_14

    #@22
    :catch_22
    move-exception v0

    #@23
    goto :goto_1f
.end method
