.class public Lcom/dd/plist/XMLPropertyListParser;
.super Ljava/lang/Object;


# static fields
.field private static docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/dd/plist/XMLPropertyListParser;->docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    #@3
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static filterElementNodes(Lorg/w3c/dom/NodeList;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    #@5
    move-result v0

    #@6
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    const/4 v0, 0x0

    #@a
    :goto_a
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    #@d
    move-result v2

    #@e
    if-ge v0, v2, :cond_25

    #@10
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@13
    move-result-object v2

    #@14
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    #@17
    move-result v2

    #@18
    const/4 v3, 0x1

    #@19
    if-ne v2, v3, :cond_22

    #@1b
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@1e
    move-result-object v2

    #@1f
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    :cond_22
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_a

    #@25
    :cond_25
    return-object v1
.end method

.method private static getDocBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    #@0
    const-class v0, Lcom/dd/plist/XMLPropertyListParser;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/dd/plist/XMLPropertyListParser;->docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    #@5
    if-nez v0, :cond_a

    #@7
    invoke-static {}, Lcom/dd/plist/XMLPropertyListParser;->initDocBuilderFactory()V

    #@a
    :cond_a
    sget-object v0, Lcom/dd/plist/XMLPropertyListParser;->docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    #@c
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    #@f
    move-result-object v0

    #@10
    new-instance v1, Lcom/dd/plist/XMLPropertyListParser$1;

    #@12
    invoke-direct {v1}, Lcom/dd/plist/XMLPropertyListParser$1;-><init>()V

    #@15
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    #@18
    const-class v1, Lcom/dd/plist/XMLPropertyListParser;

    #@1a
    monitor-exit v1

    #@1b
    return-object v0

    #@1c
    :catchall_1c
    move-exception v0

    #@1d
    const-class v1, Lcom/dd/plist/XMLPropertyListParser;

    #@1f
    monitor-exit v1

    #@20
    throw v0
.end method

.method private static initDocBuilderFactory()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    #@0
    const-class v0, Lcom/dd/plist/XMLPropertyListParser;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/dd/plist/XMLPropertyListParser;->docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    #@9
    sget-object v0, Lcom/dd/plist/XMLPropertyListParser;->docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    #@b
    const/4 v1, 0x1

    #@c
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    #@f
    sget-object v0, Lcom/dd/plist/XMLPropertyListParser;->docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    #@11
    const/4 v1, 0x1

    #@12
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    #@15
    const-class v0, Lcom/dd/plist/XMLPropertyListParser;

    #@17
    monitor-exit v0

    #@18
    return-void

    #@19
    :catchall_19
    move-exception v0

    #@1a
    const-class v1, Lcom/dd/plist/XMLPropertyListParser;

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method public static parse(Ljava/io/File;)Lcom/dd/plist/NSObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    invoke-static {}, Lcom/dd/plist/XMLPropertyListParser;->getDocBuilder()Ljavax/xml/parsers/DocumentBuilder;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/dd/plist/XMLPropertyListParser;->parseDocument(Lorg/w3c/dom/Document;)Lcom/dd/plist/NSObject;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    invoke-static {}, Lcom/dd/plist/XMLPropertyListParser;->getDocBuilder()Ljavax/xml/parsers/DocumentBuilder;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/dd/plist/XMLPropertyListParser;->parseDocument(Lorg/w3c/dom/Document;)Lcom/dd/plist/NSObject;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static parse([B)Lcom/dd/plist/NSObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@2
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5
    invoke-static {v0}, Lcom/dd/plist/XMLPropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private static parseDocument(Lorg/w3c/dom/Document;)Lcom/dd/plist/NSObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_1e

    #@6
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    #@9
    move-result-object v0

    #@a
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    const-string v1, "plist"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_32

    #@16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@18
    const-string v1, "The given XML document is not a property list."

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    :cond_1e
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    const-string v1, "plist"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_32

    #@2a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2c
    const-string v1, "The given XML document is not a property list."

    #@2e
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    :cond_32
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    #@35
    move-result-object v0

    #@36
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@39
    move-result-object v0

    #@3a
    invoke-static {v0}, Lcom/dd/plist/XMLPropertyListParser;->filterElementNodes(Lorg/w3c/dom/NodeList;)Ljava/util/List;

    #@3d
    move-result-object v0

    #@3e
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@41
    move-result v1

    #@42
    if-lez v1, :cond_50

    #@44
    const/4 v1, 0x0

    #@45
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v0

    #@49
    check-cast v0, Lorg/w3c/dom/Node;

    #@4b
    invoke-static {v0}, Lcom/dd/plist/XMLPropertyListParser;->parseObject(Lorg/w3c/dom/Node;)Lcom/dd/plist/NSObject;

    #@4e
    move-result-object v0

    #@4f
    return-object v0

    #@50
    :cond_50
    new-instance v0, Ljava/lang/Exception;

    #@52
    const-string v1, "No root node found!"

    #@54
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@57
    throw v0
.end method

.method private static parseObject(Lorg/w3c/dom/Node;)Lcom/dd/plist/NSObject;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const-string v1, "dict"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_75

    #@e
    new-instance v7, Lcom/dd/plist/NSDictionary;

    #@10
    invoke-direct {v7}, Lcom/dd/plist/NSDictionary;-><init>()V

    #@13
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@16
    move-result-object v0

    #@17
    invoke-static {v0}, Lcom/dd/plist/XMLPropertyListParser;->filterElementNodes(Lorg/w3c/dom/NodeList;)Ljava/util/List;

    #@1a
    move-result-object v8

    #@1b
    move v5, v6

    #@1c
    :goto_1c
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@1f
    move-result v0

    #@20
    if-ge v5, v0, :cond_73

    #@22
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Lorg/w3c/dom/Node;

    #@28
    add-int/lit8 v1, v5, 0x1

    #@2a
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Lorg/w3c/dom/Node;

    #@30
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@33
    move-result-object v2

    #@34
    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@37
    move-result-object v2

    #@38
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    move-object v4, v2

    #@3d
    move v2, v3

    #@3e
    :goto_3e
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@41
    move-result-object v9

    #@42
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    #@45
    move-result v9

    #@46
    if-ge v2, v9, :cond_68

    #@48
    new-instance v9, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@54
    move-result-object v9

    #@55
    invoke-interface {v9, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@58
    move-result-object v9

    #@59
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@5c
    move-result-object v9

    #@5d
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    add-int/lit8 v2, v2, 0x1

    #@67
    goto :goto_3e

    #@68
    :cond_68
    invoke-static {v1}, Lcom/dd/plist/XMLPropertyListParser;->parseObject(Lorg/w3c/dom/Node;)Lcom/dd/plist/NSObject;

    #@6b
    move-result-object v0

    #@6c
    invoke-virtual {v7, v4, v0}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)V

    #@6f
    add-int/lit8 v0, v5, 0x2

    #@71
    move v5, v0

    #@72
    goto :goto_1c

    #@73
    :cond_73
    move-object v0, v7

    #@74
    :goto_74
    return-object v0

    #@75
    :cond_75
    const-string v1, "array"

    #@77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v1

    #@7b
    if-eqz v1, :cond_a6

    #@7d
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@80
    move-result-object v0

    #@81
    invoke-static {v0}, Lcom/dd/plist/XMLPropertyListParser;->filterElementNodes(Lorg/w3c/dom/NodeList;)Ljava/util/List;

    #@84
    move-result-object v2

    #@85
    new-instance v1, Lcom/dd/plist/NSArray;

    #@87
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@8a
    move-result v0

    #@8b
    invoke-direct {v1, v0}, Lcom/dd/plist/NSArray;-><init>(I)V

    #@8e
    :goto_8e
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@91
    move-result v0

    #@92
    if-ge v6, v0, :cond_a4

    #@94
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@97
    move-result-object v0

    #@98
    check-cast v0, Lorg/w3c/dom/Node;

    #@9a
    invoke-static {v0}, Lcom/dd/plist/XMLPropertyListParser;->parseObject(Lorg/w3c/dom/Node;)Lcom/dd/plist/NSObject;

    #@9d
    move-result-object v0

    #@9e
    invoke-virtual {v1, v6, v0}, Lcom/dd/plist/NSArray;->setValue(ILcom/dd/plist/NSObject;)V

    #@a1
    add-int/lit8 v6, v6, 0x1

    #@a3
    goto :goto_8e

    #@a4
    :cond_a4
    move-object v0, v1

    #@a5
    goto :goto_74

    #@a6
    :cond_a6
    const-string v1, "true"

    #@a8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ab
    move-result v1

    #@ac
    if-eqz v1, :cond_b4

    #@ae
    new-instance v0, Lcom/dd/plist/NSNumber;

    #@b0
    invoke-direct {v0, v3}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    #@b3
    goto :goto_74

    #@b4
    :cond_b4
    const-string v1, "false"

    #@b6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b9
    move-result v1

    #@ba
    if-eqz v1, :cond_c2

    #@bc
    new-instance v0, Lcom/dd/plist/NSNumber;

    #@be
    invoke-direct {v0, v6}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    #@c1
    goto :goto_74

    #@c2
    :cond_c2
    const-string v1, "integer"

    #@c4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c7
    move-result v1

    #@c8
    if-eqz v1, :cond_dc

    #@ca
    new-instance v0, Lcom/dd/plist/NSNumber;

    #@cc
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@cf
    move-result-object v1

    #@d0
    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@d3
    move-result-object v1

    #@d4
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@d7
    move-result-object v1

    #@d8
    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Ljava/lang/String;)V

    #@db
    goto :goto_74

    #@dc
    :cond_dc
    const-string v1, "real"

    #@de
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e1
    move-result v1

    #@e2
    if-eqz v1, :cond_f7

    #@e4
    new-instance v0, Lcom/dd/plist/NSNumber;

    #@e6
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@e9
    move-result-object v1

    #@ea
    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@ed
    move-result-object v1

    #@ee
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@f1
    move-result-object v1

    #@f2
    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Ljava/lang/String;)V

    #@f5
    goto/16 :goto_74

    #@f7
    :cond_f7
    const-string v1, "string"

    #@f9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fc
    move-result v1

    #@fd
    if-eqz v1, :cond_145

    #@ff
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@102
    move-result-object v2

    #@103
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    #@106
    move-result v0

    #@107
    if-nez v0, :cond_112

    #@109
    new-instance v0, Lcom/dd/plist/NSString;

    #@10b
    const-string v1, ""

    #@10d
    invoke-direct {v0, v1}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    #@110
    goto/16 :goto_74

    #@112
    :cond_112
    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@115
    move-result-object v0

    #@116
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@119
    move-result-object v0

    #@11a
    move-object v1, v0

    #@11b
    :goto_11b
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    #@11e
    move-result v0

    #@11f
    if-ge v3, v0, :cond_13e

    #@121
    new-instance v0, Ljava/lang/StringBuilder;

    #@123
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v0

    #@12a
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@12d
    move-result-object v1

    #@12e
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@131
    move-result-object v1

    #@132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v0

    #@136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@139
    move-result-object v0

    #@13a
    add-int/lit8 v3, v3, 0x1

    #@13c
    move-object v1, v0

    #@13d
    goto :goto_11b

    #@13e
    :cond_13e
    new-instance v0, Lcom/dd/plist/NSString;

    #@140
    invoke-direct {v0, v1}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    #@143
    goto/16 :goto_74

    #@145
    :cond_145
    const-string v1, "data"

    #@147
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14a
    move-result v1

    #@14b
    if-eqz v1, :cond_160

    #@14d
    new-instance v0, Lcom/dd/plist/NSData;

    #@14f
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@152
    move-result-object v1

    #@153
    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@156
    move-result-object v1

    #@157
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@15a
    move-result-object v1

    #@15b
    invoke-direct {v0, v1}, Lcom/dd/plist/NSData;-><init>(Ljava/lang/String;)V

    #@15e
    goto/16 :goto_74

    #@160
    :cond_160
    const-string v1, "date"

    #@162
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@165
    move-result v0

    #@166
    if-eqz v0, :cond_17b

    #@168
    new-instance v0, Lcom/dd/plist/NSDate;

    #@16a
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@16d
    move-result-object v1

    #@16e
    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@171
    move-result-object v1

    #@172
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@175
    move-result-object v1

    #@176
    invoke-direct {v0, v1}, Lcom/dd/plist/NSDate;-><init>(Ljava/lang/String;)V

    #@179
    goto/16 :goto_74

    #@17b
    :cond_17b
    const/4 v0, 0x0

    #@17c
    goto/16 :goto_74
.end method
