.class final Lcom/dd/plist/XMLPropertyListParser$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xml/sax/EntityResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dd/plist/XMLPropertyListParser;->getDocBuilder()Ljavax/xml/parsers/DocumentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .registers 6

    #@0
    const-string v0, "-//Apple Computer//DTD PLIST 1.0//EN"

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_10

    #@8
    const-string v0, "-//Apple//DTD PLIST 1.0//EN"

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1e

    #@10
    :cond_10
    new-instance v0, Lorg/xml/sax/InputSource;

    #@12
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@14
    const/4 v2, 0x0

    #@15
    new-array v2, v2, [B

    #@17
    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@1a
    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    #@1d
    :goto_1d
    return-object v0

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    goto :goto_1d
.end method
