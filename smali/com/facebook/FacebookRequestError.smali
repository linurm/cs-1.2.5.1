.class public final Lcom/facebook/FacebookRequestError;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/FacebookRequestError$Category;,
        Lcom/facebook/FacebookRequestError$Range;
    }
.end annotation


# static fields
.field private static final BODY_KEY:Ljava/lang/String; = "body"

.field private static final CODE_KEY:Ljava/lang/String; = "code"

.field private static final EC_APP_NOT_INSTALLED:I = 0x1ca

.field private static final EC_APP_TOO_MANY_CALLS:I = 0x4

.field private static final EC_EXPIRED:I = 0x1cf

.field private static final EC_INVALID_SESSION:I = 0x66

.field private static final EC_INVALID_TOKEN:I = 0xbe

.field private static final EC_PASSWORD_CHANGED:I = 0x1cc

.field private static final EC_PERMISSION_DENIED:I = 0xa

.field private static final EC_RANGE_PERMISSION:Lcom/facebook/FacebookRequestError$Range;

.field private static final EC_SERVICE_UNAVAILABLE:I = 0x2

.field private static final EC_UNCONFIRMED_USER:I = 0x1d0

.field private static final EC_UNKNOWN_ERROR:I = 0x1

.field private static final EC_USER_CHECKPOINTED:I = 0x1cb

.field private static final EC_USER_TOO_MANY_CALLS:I = 0x11

.field private static final ERROR_CODE_FIELD_KEY:Ljava/lang/String; = "code"

.field private static final ERROR_CODE_KEY:Ljava/lang/String; = "error_code"

.field private static final ERROR_KEY:Ljava/lang/String; = "error"

.field private static final ERROR_MESSAGE_FIELD_KEY:Ljava/lang/String; = "message"

.field private static final ERROR_MSG_KEY:Ljava/lang/String; = "error_msg"

.field private static final ERROR_REASON_KEY:Ljava/lang/String; = "error_reason"

.field private static final ERROR_SUB_CODE_KEY:Ljava/lang/String; = "error_subcode"

.field private static final ERROR_TYPE_FIELD_KEY:Ljava/lang/String; = "type"

.field private static final HTTP_RANGE_CLIENT_ERROR:Lcom/facebook/FacebookRequestError$Range;

.field private static final HTTP_RANGE_SERVER_ERROR:Lcom/facebook/FacebookRequestError$Range;

.field private static final HTTP_RANGE_SUCCESS:Lcom/facebook/FacebookRequestError$Range;

.field public static final INVALID_ERROR_CODE:I = -0x1

.field public static final INVALID_HTTP_STATUS_CODE:I = -0x1

.field private static final INVALID_MESSAGE_ID:I


# instance fields
.field private final batchRequestResult:Ljava/lang/Object;

.field private final category:Lcom/facebook/FacebookRequestError$Category;

.field private final connection:Ljava/net/HttpURLConnection;

.field private final errorCode:I

.field private final errorMessage:Ljava/lang/String;

.field private final errorType:Ljava/lang/String;

.field private final exception:Lcom/facebook/FacebookException;

.field private final requestResult:Lorg/json/JSONObject;

.field private final requestResultBody:Lorg/json/JSONObject;

.field private final requestStatusCode:I

.field private final shouldNotifyUser:Z

.field private final subErrorCode:I

.field private final userActionMessageId:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const/16 v2, 0x12b

    #@2
    const/16 v1, 0xc8

    #@4
    const/4 v3, 0x0

    #@5
    new-instance v0, Lcom/facebook/FacebookRequestError$Range;

    #@7
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/FacebookRequestError$Range;-><init>(IILcom/facebook/FacebookRequestError$1;)V

    #@a
    sput-object v0, Lcom/facebook/FacebookRequestError;->EC_RANGE_PERMISSION:Lcom/facebook/FacebookRequestError$Range;

    #@c
    new-instance v0, Lcom/facebook/FacebookRequestError$Range;

    #@e
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/FacebookRequestError$Range;-><init>(IILcom/facebook/FacebookRequestError$1;)V

    #@11
    sput-object v0, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SUCCESS:Lcom/facebook/FacebookRequestError$Range;

    #@13
    new-instance v0, Lcom/facebook/FacebookRequestError$Range;

    #@15
    const/16 v1, 0x190

    #@17
    const/16 v2, 0x1f3

    #@19
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/FacebookRequestError$Range;-><init>(IILcom/facebook/FacebookRequestError$1;)V

    #@1c
    sput-object v0, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_CLIENT_ERROR:Lcom/facebook/FacebookRequestError$Range;

    #@1e
    new-instance v0, Lcom/facebook/FacebookRequestError$Range;

    #@20
    const/16 v1, 0x1f4

    #@22
    const/16 v2, 0x257

    #@24
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/FacebookRequestError$Range;-><init>(IILcom/facebook/FacebookRequestError$1;)V

    #@27
    sput-object v0, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SERVER_ERROR:Lcom/facebook/FacebookRequestError$Range;

    #@29
    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V
    .registers 21

    #@0
    const/4 v10, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object/from16 v5, p5

    #@8
    move-object/from16 v6, p6

    #@a
    move-object/from16 v7, p7

    #@c
    move-object/from16 v8, p8

    #@e
    move-object/from16 v9, p9

    #@10
    invoke-direct/range {v0 .. v10}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V

    #@13
    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V
    .registers 16

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput p1, p0, Lcom/facebook/FacebookRequestError;->requestStatusCode:I

    #@7
    iput p2, p0, Lcom/facebook/FacebookRequestError;->errorCode:I

    #@9
    iput p3, p0, Lcom/facebook/FacebookRequestError;->subErrorCode:I

    #@b
    iput-object p4, p0, Lcom/facebook/FacebookRequestError;->errorType:Ljava/lang/String;

    #@d
    iput-object p5, p0, Lcom/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;

    #@f
    iput-object p6, p0, Lcom/facebook/FacebookRequestError;->requestResultBody:Lorg/json/JSONObject;

    #@11
    iput-object p7, p0, Lcom/facebook/FacebookRequestError;->requestResult:Lorg/json/JSONObject;

    #@13
    iput-object p8, p0, Lcom/facebook/FacebookRequestError;->batchRequestResult:Ljava/lang/Object;

    #@15
    iput-object p9, p0, Lcom/facebook/FacebookRequestError;->connection:Ljava/net/HttpURLConnection;

    #@17
    if-eqz p10, :cond_29

    #@19
    iput-object p10, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    #@1b
    move v3, v1

    #@1c
    :goto_1c
    const/4 v2, 0x0

    #@1d
    if-eqz v3, :cond_32

    #@1f
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->CLIENT:Lcom/facebook/FacebookRequestError$Category;

    #@21
    move v2, v0

    #@22
    :cond_22
    :goto_22
    iput-object v1, p0, Lcom/facebook/FacebookRequestError;->category:Lcom/facebook/FacebookRequestError$Category;

    #@24
    iput v2, p0, Lcom/facebook/FacebookRequestError;->userActionMessageId:I

    #@26
    iput-boolean v0, p0, Lcom/facebook/FacebookRequestError;->shouldNotifyUser:Z

    #@28
    return-void

    #@29
    :cond_29
    new-instance v2, Lcom/facebook/FacebookServiceException;

    #@2b
    invoke-direct {v2, p0, p5}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    #@2e
    iput-object v2, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    #@30
    move v3, v0

    #@31
    goto :goto_1c

    #@32
    :cond_32
    if-eq p2, v1, :cond_37

    #@34
    const/4 v3, 0x2

    #@35
    if-ne p2, v3, :cond_47

    #@37
    :cond_37
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->SERVER:Lcom/facebook/FacebookRequestError$Category;

    #@39
    move v2, v0

    #@3a
    :goto_3a
    if-nez v1, :cond_22

    #@3c
    sget-object v1, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_CLIENT_ERROR:Lcom/facebook/FacebookRequestError$Range;

    #@3e
    invoke-virtual {v1, p1}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    #@41
    move-result v1

    #@42
    if-eqz v1, :cond_a1

    #@44
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->BAD_REQUEST:Lcom/facebook/FacebookRequestError$Category;

    #@46
    goto :goto_22

    #@47
    :cond_47
    const/4 v3, 0x4

    #@48
    if-eq p2, v3, :cond_4e

    #@4a
    const/16 v3, 0x11

    #@4c
    if-ne p2, v3, :cond_52

    #@4e
    :cond_4e
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->THROTTLING:Lcom/facebook/FacebookRequestError$Category;

    #@50
    move v2, v0

    #@51
    goto :goto_3a

    #@52
    :cond_52
    const/16 v3, 0xa

    #@54
    if-eq p2, v3, :cond_5e

    #@56
    sget-object v3, Lcom/facebook/FacebookRequestError;->EC_RANGE_PERMISSION:Lcom/facebook/FacebookRequestError$Range;

    #@58
    invoke-virtual {v3, p2}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    #@5b
    move-result v3

    #@5c
    if-eqz v3, :cond_64

    #@5e
    :cond_5e
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->PERMISSION:Lcom/facebook/FacebookRequestError$Category;

    #@60
    const v2, 0x7f070018

    #@63
    goto :goto_3a

    #@64
    :cond_64
    const/16 v3, 0x66

    #@66
    if-eq p2, v3, :cond_6c

    #@68
    const/16 v3, 0xbe

    #@6a
    if-ne p2, v3, :cond_b1

    #@6c
    :cond_6c
    const/16 v2, 0x1cb

    #@6e
    if-eq p3, v2, :cond_74

    #@70
    const/16 v2, 0x1d0

    #@72
    if-ne p3, v2, :cond_7d

    #@74
    :cond_74
    sget-object v0, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_RETRY:Lcom/facebook/FacebookRequestError$Category;

    #@76
    const v2, 0x7f070014

    #@79
    move v4, v1

    #@7a
    move-object v1, v0

    #@7b
    move v0, v4

    #@7c
    goto :goto_3a

    #@7d
    :cond_7d
    sget-object v2, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_REOPEN_SESSION:Lcom/facebook/FacebookRequestError$Category;

    #@7f
    const/16 v3, 0x1ca

    #@81
    if-eq p3, v3, :cond_87

    #@83
    const/16 v3, 0x1cf

    #@85
    if-ne p3, v3, :cond_8e

    #@87
    :cond_87
    const v1, 0x7f070015

    #@8a
    move-object v4, v2

    #@8b
    move v2, v1

    #@8c
    move-object v1, v4

    #@8d
    goto :goto_3a

    #@8e
    :cond_8e
    const/16 v3, 0x1cc

    #@90
    if-ne p3, v3, :cond_99

    #@92
    const v1, 0x7f070016

    #@95
    move-object v4, v2

    #@96
    move v2, v1

    #@97
    move-object v1, v4

    #@98
    goto :goto_3a

    #@99
    :cond_99
    const v0, 0x7f070017

    #@9c
    move v4, v1

    #@9d
    move-object v1, v2

    #@9e
    move v2, v0

    #@9f
    move v0, v4

    #@a0
    goto :goto_3a

    #@a1
    :cond_a1
    sget-object v1, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SERVER_ERROR:Lcom/facebook/FacebookRequestError$Range;

    #@a3
    invoke-virtual {v1, p1}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    #@a6
    move-result v1

    #@a7
    if-eqz v1, :cond_ad

    #@a9
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->SERVER:Lcom/facebook/FacebookRequestError$Category;

    #@ab
    goto/16 :goto_22

    #@ad
    :cond_ad
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->OTHER:Lcom/facebook/FacebookRequestError$Category;

    #@af
    goto/16 :goto_22

    #@b1
    :cond_b1
    move-object v1, v2

    #@b2
    move v2, v0

    #@b3
    goto :goto_3a
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    #@0
    const/4 v1, -0x1

    #@1
    const/4 v6, 0x0

    #@2
    move-object v0, p0

    #@3
    move v2, p1

    #@4
    move v3, v1

    #@5
    move-object v4, p2

    #@6
    move-object v5, p3

    #@7
    move-object v7, v6

    #@8
    move-object v8, v6

    #@9
    move-object v9, v6

    #@a
    move-object v10, v6

    #@b
    invoke-direct/range {v0 .. v10}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V

    #@e
    return-void
.end method

.method constructor <init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
    .registers 14

    #@0
    const/4 v1, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    instance-of v0, p2, Lcom/facebook/FacebookException;

    #@4
    if-eqz v0, :cond_15

    #@6
    check-cast p2, Lcom/facebook/FacebookException;

    #@8
    move-object v10, p2

    #@9
    :goto_9
    move-object v0, p0

    #@a
    move v2, v1

    #@b
    move v3, v1

    #@c
    move-object v5, v4

    #@d
    move-object v6, v4

    #@e
    move-object v7, v4

    #@f
    move-object v8, v4

    #@10
    move-object v9, p1

    #@11
    invoke-direct/range {v0 .. v10}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V

    #@14
    return-void

    #@15
    :cond_15
    new-instance v10, Lcom/facebook/FacebookException;

    #@17
    invoke-direct {v10, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    #@1a
    goto :goto_9
.end method

.method static checkResponseAndCreateError(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/FacebookRequestError;
    .registers 14

    #@0
    const/4 v7, 0x1

    #@1
    const/4 v3, -0x1

    #@2
    const/4 v10, 0x0

    #@3
    :try_start_3
    const-string v0, "code"

    #@5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_ba

    #@b
    const-string v0, "code"

    #@d
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    #@10
    move-result v1

    #@11
    const-string v0, "body"

    #@13
    const-string v2, "FACEBOOK_NON_JSON_RESULT"

    #@15
    invoke-static {p0, v0, v2}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@18
    move-result-object v6

    #@19
    if-eqz v6, :cond_91

    #@1b
    instance-of v0, v6, Lorg/json/JSONObject;

    #@1d
    if-eqz v0, :cond_91

    #@1f
    check-cast v6, Lorg/json/JSONObject;

    #@21
    const/4 v0, 0x0

    #@22
    const-string v2, "error"

    #@24
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_5b

    #@2a
    const-string v0, "error"

    #@2c
    const/4 v2, 0x0

    #@2d
    invoke-static {v6, v0, v2}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Lorg/json/JSONObject;

    #@33
    const-string v2, "type"

    #@35
    const/4 v3, 0x0

    #@36
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    const-string v2, "message"

    #@3c
    const/4 v3, 0x0

    #@3d
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    const-string v2, "code"

    #@43
    const/4 v3, -0x1

    #@44
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    #@47
    move-result v2

    #@48
    const-string v3, "error_subcode"

    #@4a
    const/4 v8, -0x1

    #@4b
    invoke-virtual {v0, v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    #@4e
    move-result v3

    #@4f
    move v0, v7

    #@50
    :goto_50
    if-eqz v0, :cond_91

    #@52
    new-instance v0, Lcom/facebook/FacebookRequestError;

    #@54
    move-object v7, p0

    #@55
    move-object v8, p1

    #@56
    move-object v9, p2

    #@57
    invoke-direct/range {v0 .. v9}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V

    #@5a
    :goto_5a
    return-object v0

    #@5b
    :cond_5b
    const-string v2, "error_code"

    #@5d
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@60
    move-result v2

    #@61
    if-nez v2, :cond_73

    #@63
    const-string v2, "error_msg"

    #@65
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@68
    move-result v2

    #@69
    if-nez v2, :cond_73

    #@6b
    const-string v2, "error_reason"

    #@6d
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@70
    move-result v2

    #@71
    if-eqz v2, :cond_be

    #@73
    :cond_73
    const-string v0, "error_reason"

    #@75
    const/4 v2, 0x0

    #@76
    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@79
    move-result-object v4

    #@7a
    const-string v0, "error_msg"

    #@7c
    const/4 v2, 0x0

    #@7d
    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@80
    move-result-object v5

    #@81
    const-string v0, "error_code"

    #@83
    const/4 v2, -0x1

    #@84
    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    #@87
    move-result v2

    #@88
    const-string v0, "error_subcode"

    #@8a
    const/4 v3, -0x1

    #@8b
    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    #@8e
    move-result v3

    #@8f
    move v0, v7

    #@90
    goto :goto_50

    #@91
    :cond_91
    sget-object v0, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SUCCESS:Lcom/facebook/FacebookRequestError$Range;

    #@93
    invoke-virtual {v0, v1}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    #@96
    move-result v0

    #@97
    if-nez v0, :cond_ba

    #@99
    const-string v0, "body"

    #@9b
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@9e
    move-result v0

    #@9f
    if-eqz v0, :cond_bc

    #@a1
    const-string v0, "body"

    #@a3
    const-string v2, "FACEBOOK_NON_JSON_RESULT"

    #@a5
    invoke-static {p0, v0, v2}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@a8
    move-result-object v0

    #@a9
    check-cast v0, Lorg/json/JSONObject;

    #@ab
    move-object v6, v0

    #@ac
    :goto_ac
    new-instance v0, Lcom/facebook/FacebookRequestError;

    #@ae
    const/4 v2, -0x1

    #@af
    const/4 v3, -0x1

    #@b0
    const/4 v4, 0x0

    #@b1
    const/4 v5, 0x0

    #@b2
    move-object v7, p0

    #@b3
    move-object v8, p1

    #@b4
    move-object v9, p2

    #@b5
    invoke-direct/range {v0 .. v9}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V
    :try_end_b8
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_b8} :catch_b9

    #@b8
    goto :goto_5a

    #@b9
    :catch_b9
    move-exception v0

    #@ba
    :cond_ba
    move-object v0, v10

    #@bb
    goto :goto_5a

    #@bc
    :cond_bc
    move-object v6, v10

    #@bd
    goto :goto_ac

    #@be
    :cond_be
    move-object v5, v10

    #@bf
    move-object v4, v10

    #@c0
    move v2, v3

    #@c1
    goto :goto_50
.end method


# virtual methods
.method public getBatchRequestResult()Ljava/lang/Object;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->batchRequestResult:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getCategory()Lcom/facebook/FacebookRequestError$Category;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->category:Lcom/facebook/FacebookRequestError$Category;

    #@2
    return-object v0
.end method

.method public getConnection()Ljava/net/HttpURLConnection;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->connection:Ljava/net/HttpURLConnection;

    #@2
    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/FacebookRequestError;->errorCode:I

    #@2
    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_7

    #@4
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    #@9
    invoke-virtual {v0}, Lcom/facebook/FacebookException;->getLocalizedMessage()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    goto :goto_6
.end method

.method public getErrorType()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getException()Lcom/facebook/FacebookException;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    #@2
    return-object v0
.end method

.method public getRequestResult()Lorg/json/JSONObject;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->requestResult:Lorg/json/JSONObject;

    #@2
    return-object v0
.end method

.method public getRequestResultBody()Lorg/json/JSONObject;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->requestResultBody:Lorg/json/JSONObject;

    #@2
    return-object v0
.end method

.method public getRequestStatusCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/FacebookRequestError;->requestStatusCode:I

    #@2
    return v0
.end method

.method public getSubErrorCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/FacebookRequestError;->subErrorCode:I

    #@2
    return v0
.end method

.method public getUserActionMessageId()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/FacebookRequestError;->userActionMessageId:I

    #@2
    return v0
.end method

.method public shouldNotifyUser()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/FacebookRequestError;->shouldNotifyUser:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "{HttpStatus: "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget v1, p0, Lcom/facebook/FacebookRequestError;->requestStatusCode:I

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, ", errorCode: "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget v1, p0, Lcom/facebook/FacebookRequestError;->errorCode:I

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string v1, ", errorType: "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget-object v1, p0, Lcom/facebook/FacebookRequestError;->errorType:Ljava/lang/String;

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const-string v1, ", errorMessage: "

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    const-string v1, "}"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    return-object v0
.end method
