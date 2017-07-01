.class Lcom/facebook/Session$SerializationProxyV1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxyV1"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6a59fe98cd935affL


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private final lastAttemptedTokenExtendDate:Ljava/util/Date;

.field private final pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

.field private final shouldAutoPublish:Z

.field private final state:Lcom/facebook/SessionState;

.field private final tokenInfo:Lcom/facebook/AccessToken;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/facebook/Session$SerializationProxyV1;->applicationId:Ljava/lang/String;

    #@5
    iput-object p2, p0, Lcom/facebook/Session$SerializationProxyV1;->state:Lcom/facebook/SessionState;

    #@7
    iput-object p3, p0, Lcom/facebook/Session$SerializationProxyV1;->tokenInfo:Lcom/facebook/AccessToken;

    #@9
    iput-object p4, p0, Lcom/facebook/Session$SerializationProxyV1;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    #@b
    iput-boolean p5, p0, Lcom/facebook/Session$SerializationProxyV1;->shouldAutoPublish:Z

    #@d
    iput-object p6, p0, Lcom/facebook/Session$SerializationProxyV1;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@f
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 9

    #@0
    new-instance v0, Lcom/facebook/Session;

    #@2
    iget-object v1, p0, Lcom/facebook/Session$SerializationProxyV1;->applicationId:Ljava/lang/String;

    #@4
    iget-object v2, p0, Lcom/facebook/Session$SerializationProxyV1;->state:Lcom/facebook/SessionState;

    #@6
    iget-object v3, p0, Lcom/facebook/Session$SerializationProxyV1;->tokenInfo:Lcom/facebook/AccessToken;

    #@8
    iget-object v4, p0, Lcom/facebook/Session$SerializationProxyV1;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    #@a
    iget-boolean v5, p0, Lcom/facebook/Session$SerializationProxyV1;->shouldAutoPublish:Z

    #@c
    iget-object v6, p0, Lcom/facebook/Session$SerializationProxyV1;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    #@e
    const/4 v7, 0x0

    #@f
    invoke-direct/range {v0 .. v7}, Lcom/facebook/Session;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Lcom/facebook/Session$1;)V

    #@12
    return-object v0
.end method
