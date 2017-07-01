.class Lcom/facebook/Request$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/Request$KeyValueSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Request;->serializeToBatch(Lorg/json/JSONArray;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/Request;

.field final synthetic val$keysAndValues:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/facebook/Request;Ljava/util/ArrayList;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/facebook/Request$5;->this$0:Lcom/facebook/Request;

    #@2
    iput-object p2, p0, Lcom/facebook/Request$5;->val$keysAndValues:Ljava/util/ArrayList;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/Request$5;->val$keysAndValues:Ljava/util/ArrayList;

    #@2
    const-string v1, "%s=%s"

    #@4
    const/4 v2, 0x2

    #@5
    new-array v2, v2, [Ljava/lang/Object;

    #@7
    const/4 v3, 0x0

    #@8
    aput-object p1, v2, v3

    #@a
    const/4 v3, 0x1

    #@b
    const-string v4, "UTF-8"

    #@d
    invoke-static {p2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    aput-object v4, v2, v3

    #@13
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    return-void
.end method
