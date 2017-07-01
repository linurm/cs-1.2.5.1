.class final Lcom/facebook/AppEventsLogger$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AppEventsLogger;->buildRequestForSession(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/AppEventsLogger$SessionEventsState;ZLcom/facebook/AppEventsLogger$FlushStatistics;)Lcom/facebook/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic val$accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

.field final synthetic val$flushState:Lcom/facebook/AppEventsLogger$FlushStatistics;

.field final synthetic val$postRequest:Lcom/facebook/Request;

.field final synthetic val$sessionEventsState:Lcom/facebook/AppEventsLogger$SessionEventsState;


# direct methods
.method constructor <init>(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/Request;Lcom/facebook/AppEventsLogger$SessionEventsState;Lcom/facebook/AppEventsLogger$FlushStatistics;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/facebook/AppEventsLogger$5;->val$accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    #@2
    iput-object p2, p0, Lcom/facebook/AppEventsLogger$5;->val$postRequest:Lcom/facebook/Request;

    #@4
    iput-object p3, p0, Lcom/facebook/AppEventsLogger$5;->val$sessionEventsState:Lcom/facebook/AppEventsLogger$SessionEventsState;

    #@6
    iput-object p4, p0, Lcom/facebook/AppEventsLogger$5;->val$flushState:Lcom/facebook/AppEventsLogger$FlushStatistics;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$5;->val$accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    #@2
    iget-object v1, p0, Lcom/facebook/AppEventsLogger$5;->val$postRequest:Lcom/facebook/Request;

    #@4
    iget-object v2, p0, Lcom/facebook/AppEventsLogger$5;->val$sessionEventsState:Lcom/facebook/AppEventsLogger$SessionEventsState;

    #@6
    iget-object v3, p0, Lcom/facebook/AppEventsLogger$5;->val$flushState:Lcom/facebook/AppEventsLogger$FlushStatistics;

    #@8
    # invokes: Lcom/facebook/AppEventsLogger;->handleResponse(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/Request;Lcom/facebook/Response;Lcom/facebook/AppEventsLogger$SessionEventsState;Lcom/facebook/AppEventsLogger$FlushStatistics;)V
    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/AppEventsLogger;->access$500(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/Request;Lcom/facebook/Response;Lcom/facebook/AppEventsLogger$SessionEventsState;Lcom/facebook/AppEventsLogger$FlushStatistics;)V

    #@b
    return-void
.end method
