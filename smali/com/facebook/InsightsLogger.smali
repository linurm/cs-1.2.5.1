.class public Lcom/facebook/InsightsLogger;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EVENT_NAME_LOG_CONVERSION_PIXEL:Ljava/lang/String; = "fb_log_offsite_pixel"

.field private static final EVENT_PARAMETER_PIXEL_ID:Ljava/lang/String; = "fb_offsite_pixel_id"

.field private static final EVENT_PARAMETER_PIXEL_VALUE:Ljava/lang/String; = "fb_offsite_pixel_value"


# instance fields
.field private appEventsLogger:Lcom/facebook/AppEventsLogger;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p1, p2, p3}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)Lcom/facebook/AppEventsLogger;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/facebook/InsightsLogger;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    #@9
    return-void
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/InsightsLogger;
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    new-instance v0, Lcom/facebook/InsightsLogger;

    #@3
    invoke-direct {v0, p0, v1, v1}, Lcom/facebook/InsightsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V

    #@6
    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/InsightsLogger;
    .registers 5

    #@0
    new-instance v0, Lcom/facebook/InsightsLogger;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p2, v1}, Lcom/facebook/InsightsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V

    #@6
    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/Session;)Lcom/facebook/InsightsLogger;
    .registers 5

    #@0
    new-instance v0, Lcom/facebook/InsightsLogger;

    #@2
    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/InsightsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public logConversionPixel(Ljava/lang/String;D)V
    .registers 8

    #@0
    if-nez p1, :cond_c

    #@2
    sget-object v0, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    #@4
    const-string v1, "Insights"

    #@6
    const-string v2, "pixelID cannot be null"

    #@8
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    #@b
    :goto_b
    return-void

    #@c
    :cond_c
    new-instance v0, Landroid/os/Bundle;

    #@e
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@11
    const-string v1, "fb_offsite_pixel_id"

    #@13
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    const-string v1, "fb_offsite_pixel_value"

    #@18
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    #@1b
    iget-object v1, p0, Lcom/facebook/InsightsLogger;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    #@1d
    const-string v2, "fb_log_offsite_pixel"

    #@1f
    invoke-virtual {v1, v2, p2, p3, v0}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    #@22
    invoke-static {}, Lcom/facebook/AppEventsLogger;->eagerFlush()V

    #@25
    goto :goto_b
.end method

.method public logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/InsightsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    #@4
    return-void
.end method

.method public logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/facebook/InsightsLogger;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    #@5
    return-void
.end method
