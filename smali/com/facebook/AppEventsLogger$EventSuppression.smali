.class Lcom/facebook/AppEventsLogger$EventSuppression;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventSuppression"
.end annotation


# instance fields
.field private behavior:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

.field private timeoutPeriod:I


# direct methods
.method constructor <init>(ILcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/facebook/AppEventsLogger$EventSuppression;->timeoutPeriod:I

    #@5
    iput-object p2, p0, Lcom/facebook/AppEventsLogger$EventSuppression;->behavior:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    #@7
    return-void
.end method


# virtual methods
.method getBehavior()Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$EventSuppression;->behavior:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    #@2
    return-object v0
.end method

.method getTimeoutPeriod()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/AppEventsLogger$EventSuppression;->timeoutPeriod:I

    #@2
    return v0
.end method
