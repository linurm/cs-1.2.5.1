.class public Lcom/dd/plist/ASCIIPropertyListParser;
.super Ljava/lang/Object;


# static fields
.field public static final ARRAY_BEGIN_TOKEN:C = '('

.field public static final ARRAY_END_TOKEN:C = ')'

.field public static final ARRAY_ITEM_DELIMITER_TOKEN:C = ','

.field public static final DATA_BEGIN_TOKEN:C = '<'

.field public static final DATA_END_TOKEN:C = '>'

.field public static final DATA_GSBOOL_BEGIN_TOKEN:C = 'B'

.field public static final DATA_GSBOOL_FALSE_TOKEN:C = 'N'

.field public static final DATA_GSBOOL_TRUE_TOKEN:C = 'Y'

.field public static final DATA_GSDATE_BEGIN_TOKEN:C = 'D'

.field public static final DATA_GSINT_BEGIN_TOKEN:C = 'I'

.field public static final DATA_GSOBJECT_BEGIN_TOKEN:C = '*'

.field public static final DATA_GSREAL_BEGIN_TOKEN:C = 'R'

.field public static final DATE_APPLE_DATE_TIME_DELIMITER:C = 'T'

.field public static final DATE_APPLE_END_TOKEN:C = 'Z'

.field public static final DATE_DATE_FIELD_DELIMITER:C = '-'

.field public static final DATE_GS_DATE_TIME_DELIMITER:C = ' '

.field public static final DATE_TIME_FIELD_DELIMITER:C = ':'

.field public static final DICTIONARY_ASSIGN_TOKEN:C = '='

.field public static final DICTIONARY_BEGIN_TOKEN:C = '{'

.field public static final DICTIONARY_END_TOKEN:C = '}'

.field public static final DICTIONARY_ITEM_DELIMITER_TOKEN:C = ';'

.field public static final QUOTEDSTRING_BEGIN_TOKEN:C = '\"'

.field public static final QUOTEDSTRING_END_TOKEN:C = '\"'

.field public static final QUOTEDSTRING_ESCAPE_TOKEN:C = '\\'

.field public static final WHITESPACE_CARRIAGE_RETURN:C = '\r'

.field public static final WHITESPACE_NEWLINE:C = '\n'

.field public static final WHITESPACE_SPACE:C = ' '

.field public static final WHITESPACE_TAB:C = '\t'

.field private static asciiEncoder:Ljava/nio/charset/CharsetEncoder;


# instance fields
.field private data:[B

.field private index:I


# direct methods
.method private constructor <init>([B)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    #@5
    return-void
.end method

.method private accept(C)Z
    .registers 4

    #@0
    iget-object v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    #@2
    iget v1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    #@4
    aget-byte v0, v0, v1

    #@6
    if-ne v0, p1, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method private varargs accept([C)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    array-length v2, p1

    #@2
    move v1, v0

    #@3
    :goto_3
    if-ge v1, v2, :cond_13

    #@5
    aget-char v3, p1, v1

    #@7
    iget-object v4, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    #@9
    iget v5, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    #@b
    aget-byte v4, v4, v5

    #@d
    if-ne v4, v3, :cond_10

    #@f
    const/4 v0, 0x1

    #@10
    :cond_10
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_3

    #@13
    :cond_13
    return v0
.end method

.method private expect(C)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    invoke-direct {p0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_38

    #@6
    new-instance v0, Ljava/text/ParseException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v2, "Expected \'"

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string v2, "\' but found \'"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    iget-object v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    #@1f
    iget v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    #@21
    aget-byte v2, v2, v3

    #@23
    int-to-char v2, v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    const-string v2, "\'"

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    iget v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    #@34
    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@37
    throw v0

    #@38
    :cond_38
    return-void
.end method

.method private varargs expect([C)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    invoke-direct {p0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept([C)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_74

    #@6
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v1, "Expected \'"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const/4 v1, 0x0

    #@12
    aget-char v1, p1, v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string v1, "\'"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    const/4 v1, 0x1

    #@23
    :goto_23
    array-length v2, p1

    #@24
    if-ge v1, v2, :cond_48

    #@26
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    const-string v2, " or \'"

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    aget-char v2, p1, v1

    #@37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    const-string v2, "\'"

    #@3d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    add-int/lit8 v1, v1, 0x1

    #@47
    goto :goto_23

    #@48
    :cond_48
    new-instance v1, Ljava/text/ParseException;

    #@4a
    new-instance v2, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    const-string v2, " but found \'"

    #@55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    iget-object v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    #@5b
    iget v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    #@5d
    aget-byte v2, v2, v3

    #@5f
    int-to-char v2, v2

    #@60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    const-string v2, "\'"

    #@66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    iget v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    #@70
    invoke-direct {v1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@73
    throw v1

    #@74
    :cond_74
    return-void
.end method

.method public static parse(Ljava/io/File;)Lcom/dd/plist/NSObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    new-instance v0, Ljava/io/FileInputStream;

    #@2
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@5
    invoke-static {v0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;

    #@8
    move-result-object v0

    #@9
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
    const v0, 0x7fffffff

    #@3
    invoke-static {p0, v0}, Lcom/dd/plist/PropertyListParser;->readAll(Ljava/io/InputStream;I)[B

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    #@a
    invoke-static {v0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    #@d
    move-result-object v0

    #@e
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
    new-instance v0, Lcom/dd/plist/ASCIIPropertyListParser;

    #@2
    invoke-direct {v0, p0}, Lcom/dd/plist/ASCIIPropertyListParser;-><init>([B)V

    #@5
    invoke-virtual {v0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse()Lcom/dd/plist/NSObject;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private parseArray()Lcom/dd/plist/NSArray;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    const/16 v2, 0x29

    #@2
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    #@5
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespaces()V

    #@8
    new-instance v0, Ljava/util/LinkedList;

    #@a
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@d
    :goto_d
    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_2c

    #@13
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseObject()Lcom/dd/plist/NSObject;

    #@16
    move-result-object v1

    #@17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1a
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespaces()V

    #@1d
    const/16 v1, 0x2c

    #@1f
    invoke-direct {p0, v1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_2c

    #@25
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    #@28
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespaces()V

    #@2b
    goto :goto_d

    #@2c
    :cond_2c
    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->read(C)V

    #@2f
    new-instance v1, Lcom/dd/plist/NSArray;

    #@31
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@34
    move-result v2

    #@35
    new-array v2, v2, [Lcom/dd/plist/NSObject;

    #@37
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, [Lcom/dd/plist/NSObject;

    #@3d
    invoke-direct {v1, v0}, Lcom/dd/plist/NSArray;-><init>([Lcom/dd/plist/NSObject;)V

    #@40
    return-object v1
.end method

.method private parseData()Lcom/dd/plist/NSObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    const/4 v4, 0x2

    #@1
    const/4 v1, 0x0

    #@2
    const/16 v3, 0x3e

    #@4
    const/4 v0, 0x0

    #@5
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    #@8
    const/16 v2, 0x2a

    #@a
    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_77

    #@10
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    #@13
    const/4 v2, 0x4

    #@14
    new-array v2, v2, [C

    #@16
    fill-array-data v2, :array_b0

    #@19
    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->expect([C)V

    #@1c
    const/16 v2, 0x42

    #@1e
    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_4a

    #@24
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    #@27
    new-array v0, v4, [C

    #@29
    fill-array-data v0, :array_b8

    #@2c
    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->expect([C)V

    #@2f
    const/16 v0, 0x59

    #@31
    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_44

    #@37
    new-instance v0, Lcom/dd/plist/NSNumber;

    #@39
    const/4 v1, 0x1

    #@3a
    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    #@3d
    :goto_3d
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    #@40
    :cond_40
    :goto_40
    invoke-direct {p0, v3}, Lcom/dd/plist/ASCIIPropertyListParser;->read(C)V

    #@43
    :goto_43
    return-object v0

    #@44
    :cond_44
    new-instance v0, Lcom/dd/plist/NSNumber;

    #@46
    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    #@49
    goto :goto_3d

    #@4a
    :cond_4a
    const/16 v1, 0x44

    #@4c
    invoke-direct {p0, v1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    #@4f
    move-result v1

    #@50
    if-eqz v1, :cond_5f

    #@52
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    #@55
    new-instance v0, Lcom/dd/plist/NSDate;

    #@57
    invoke-direct {p0, v3}, Lcom/dd/plist/ASCIIPropertyListParser;->readInputUntil(C)Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    invoke-direct {v0, v1}, Lcom/dd/plist/NSDate;-><init>(Ljava/lang/String;)V

    #@5e
    goto :goto_40

    #@5f
    :cond_5f
    new-array v1, v4, [C

    #@61
    fill-array-data v1, :array_be

    #@64
    invoke-direct {p0, v1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept([C)Z

    #@67
    move-result v1

    #@68
    if-eqz v1, :cond_40

    #@6a
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    #@6d
    new-instance v0, Lcom/dd/plist/NSNumber;

    #@6f
    invoke-direct {p0, v3}, Lcom/dd/plist/ASCIIPropertyListParser;->readInputUntil(C)Ljava/lang/String;

    #@72
    move-result-object v1

    #@73
    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Ljava/lang/String;)V

    #@76
    goto :goto_40

    #@77
    :cond_77
    invoke-direct {p0, v3}, Lcom/dd/plist/ASCIIPropertyListParser;->readInputUntil(C)Ljava/lang/String;

    #@7a
    move-result-object v0

    #@7b
    const-string v2, "\\s+"

    #@7d
    const-string v3, ""

    #@7f
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@86
    move-result v0

    #@87
    div-int/lit8 v0, v0, 0x2

    #@89
    new-array v3, v0, [B

    #@8b
    move v0, v1

    #@8c
    :goto_8c
    array-length v1, v3

    #@8d
    if-ge v0, v1, :cond_a6

    #@8f
    mul-int/lit8 v1, v0, 0x2

    #@91
    mul-int/lit8 v4, v0, 0x2

    #@93
    add-int/lit8 v4, v4, 0x2

    #@95
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@98
    move-result-object v1

    #@99
    const/16 v4, 0x10

    #@9b
    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@9e
    move-result v1

    #@9f
    int-to-byte v1, v1

    #@a0
    int-to-byte v1, v1

    #@a1
    aput-byte v1, v3, v0

    #@a3
    add-int/lit8 v0, v0, 0x1

    #@a5
    goto :goto_8c

    #@a6
    :cond_a6
    new-instance v0, Lcom/dd/plist/NSData;

    #@a8
    invoke-direct {v0, v3}, Lcom/dd/plist/NSData;-><init>([B)V

    #@ab
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    #@ae
    goto :goto_43

    #@af
    nop

    #@b0
    :array_b0
    .array-data 2
        0x42s
        0x44s
        0x49s
        0x52s
    .end array-data

    #@b8
    :array_b8
    .array-data 2
        0x59s
        0x4es
    .end array-data

    #@be
    :array_be
    .array-data 2
        0x49s
        0x52s
    .end array-data
.end method

.method private parseDictionary()Lcom/dd/plist/NSDictionary;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    #@3
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespaces()V

    #@6
    new-instance v1, Lcom/dd/plist/NSDictionary;

    #@8
    invoke-direct {v1}, Lcom/dd/plist/NSDictionary;-><init>()V

    #@b
    :goto_b
    const/16 v0, 0x7d

    #@d
    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_3f

    #@13
    const/16 v0, 0x22

    #@15
    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_3a

    #@1b
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseQuotedString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    :goto_1f
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespaces()V

    #@22
    const/16 v2, 0x3d

    #@24
    invoke-direct {p0, v2}, Lcom/dd/plist/ASCIIPropertyListParser;->read(C)V

    #@27
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespaces()V

    #@2a
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseObject()Lcom/dd/plist/NSObject;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v0, v2}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)V

    #@31
    const/16 v0, 0x3b

    #@33
    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->read(C)V

    #@36
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespaces()V

    #@39
    goto :goto_b

    #@3a
    :cond_3a
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    goto :goto_1f

    #@3f
    :cond_3f
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    #@42
    return-object v1
.end method

.method private static parseEscapedSequence(Ljava/text/StringCharacterIterator;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    const/16 v6, 0x10

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v3, 0x2

    #@5
    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    #@8
    move-result v0

    #@9
    const/16 v1, 0x5c

    #@b
    if-ne v0, v1, :cond_1a

    #@d
    new-instance v0, Ljava/lang/String;

    #@f
    new-array v1, v3, [B

    #@11
    fill-array-data v1, :array_13c

    #@14
    const-string v2, "UTF-8"

    #@16
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@19
    :goto_19
    return-object v0

    #@1a
    :cond_1a
    const/16 v1, 0x22

    #@1c
    if-ne v0, v1, :cond_2b

    #@1e
    new-instance v0, Ljava/lang/String;

    #@20
    new-array v1, v3, [B

    #@22
    fill-array-data v1, :array_142

    #@25
    const-string v2, "UTF-8"

    #@27
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@2a
    goto :goto_19

    #@2b
    :cond_2b
    const/16 v1, 0x62

    #@2d
    if-ne v0, v1, :cond_3c

    #@2f
    new-instance v0, Ljava/lang/String;

    #@31
    new-array v1, v3, [B

    #@33
    fill-array-data v1, :array_148

    #@36
    const-string v2, "UTF-8"

    #@38
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@3b
    goto :goto_19

    #@3c
    :cond_3c
    const/16 v1, 0x6e

    #@3e
    if-ne v0, v1, :cond_4d

    #@40
    new-instance v0, Ljava/lang/String;

    #@42
    new-array v1, v3, [B

    #@44
    fill-array-data v1, :array_14e

    #@47
    const-string v2, "UTF-8"

    #@49
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@4c
    goto :goto_19

    #@4d
    :cond_4d
    const/16 v1, 0x72

    #@4f
    if-ne v0, v1, :cond_5e

    #@51
    new-instance v0, Ljava/lang/String;

    #@53
    new-array v1, v3, [B

    #@55
    fill-array-data v1, :array_154

    #@58
    const-string v2, "UTF-8"

    #@5a
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@5d
    goto :goto_19

    #@5e
    :cond_5e
    const/16 v1, 0x74

    #@60
    if-ne v0, v1, :cond_6f

    #@62
    new-instance v0, Ljava/lang/String;

    #@64
    new-array v1, v3, [B

    #@66
    fill-array-data v1, :array_15a

    #@69
    const-string v2, "UTF-8"

    #@6b
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@6e
    goto :goto_19

    #@6f
    :cond_6f
    const/16 v1, 0x55

    #@71
    if-eq v0, v1, :cond_77

    #@73
    const/16 v1, 0x75

    #@75
    if-ne v0, v1, :cond_e8

    #@77
    :cond_77
    new-instance v0, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string v1, ""

    #@7e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v0

    #@82
    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    #@85
    move-result v1

    #@86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@89
    move-result-object v0

    #@8a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v0

    #@8e
    new-instance v1, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v0

    #@97
    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    #@9a
    move-result v1

    #@9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v0

    #@9f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v1

    #@a3
    new-instance v0, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string v2, ""

    #@aa
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v0

    #@ae
    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    #@b1
    move-result v2

    #@b2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v0

    #@b6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v0

    #@ba
    new-instance v2, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v0

    #@c3
    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    #@c6
    move-result v2

    #@c7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v0

    #@cb
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v2

    #@cf
    new-instance v0, Ljava/lang/String;

    #@d1
    new-array v3, v3, [B

    #@d3
    invoke-static {v1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@d6
    move-result v1

    #@d7
    int-to-byte v1, v1

    #@d8
    aput-byte v1, v3, v4

    #@da
    invoke-static {v2, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@dd
    move-result v1

    #@de
    int-to-byte v1, v1

    #@df
    aput-byte v1, v3, v5

    #@e1
    const-string v1, "UTF-8"

    #@e3
    invoke-direct {v0, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@e6
    goto/16 :goto_19

    #@e8
    :cond_e8
    new-instance v1, Ljava/lang/StringBuilder;

    #@ea
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ed
    const-string v2, ""

    #@ef
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v1

    #@f3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v0

    #@f7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa
    move-result-object v0

    #@fb
    new-instance v1, Ljava/lang/StringBuilder;

    #@fd
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v0

    #@104
    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    #@107
    move-result v1

    #@108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v0

    #@10c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v1

    #@110
    new-instance v0, Ljava/lang/String;

    #@112
    new-array v2, v3, [B

    #@114
    aput-byte v4, v2, v4

    #@116
    new-instance v3, Ljava/lang/StringBuilder;

    #@118
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v1

    #@11f
    invoke-virtual {p0}, Ljava/text/StringCharacterIterator;->next()C

    #@122
    move-result v3

    #@123
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@126
    move-result-object v1

    #@127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12a
    move-result-object v1

    #@12b
    const/16 v3, 0x8

    #@12d
    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@130
    move-result v1

    #@131
    int-to-byte v1, v1

    #@132
    aput-byte v1, v2, v5

    #@134
    const-string v1, "UTF-8"

    #@136
    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@139
    goto/16 :goto_19

    #@13b
    nop

    #@13c
    :array_13c
    .array-data 1
        0x0t
        0x5ct
    .end array-data

    #@141
    nop

    #@142
    :array_142
    .array-data 1
        0x0t
        0x22t
    .end array-data

    #@147
    nop

    #@148
    :array_148
    .array-data 1
        0x0t
        0x8t
    .end array-data

    #@14d
    nop

    #@14e
    :array_14e
    .array-data 1
        0x0t
        0xat
    .end array-data

    #@153
    nop

    #@154
    :array_154
    .array-data 1
        0x0t
        0xdt
    .end array-data

    #@159
    nop

    #@15a
    :array_15a
    .array-data 1
        0x0t
        0x9t
    .end array-data
.end method

.method private parseNumerical()Lcom/dd/plist/NSObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    const/4 v2, 0x4

    #@1
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseString()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@8
    move-result v0

    #@9
    if-le v0, v2, :cond_19

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v0

    #@f
    const/16 v2, 0x2d

    #@11
    if-ne v0, v2, :cond_19

    #@13
    new-instance v0, Lcom/dd/plist/NSDate;

    #@15
    invoke-direct {v0, v1}, Lcom/dd/plist/NSDate;-><init>(Ljava/lang/String;)V

    #@18
    :goto_18
    return-object v0

    #@19
    :cond_19
    new-instance v0, Lcom/dd/plist/NSNumber;

    #@1b
    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Ljava/lang/String;)V

    #@1e
    goto :goto_18
.end method

.method private parseObject()Lcom/dd/plist/NSObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    #@2
    iget v1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    #@4
    aget-byte v0, v0, v1

    #@6
    sparse-switch v0, :sswitch_data_82

    #@9
    iget-object v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    #@b
    iget v1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    #@d
    aget-byte v0, v0, v1

    #@f
    const/16 v1, 0x2f

    #@11
    if-le v0, v1, :cond_59

    #@13
    iget-object v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    #@15
    iget v1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    #@17
    aget-byte v0, v0, v1

    #@19
    const/16 v1, 0x3a

    #@1b
    if-ge v0, v1, :cond_59

    #@1d
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseNumerical()Lcom/dd/plist/NSObject;

    #@20
    move-result-object v0

    #@21
    :goto_21
    return-object v0

    #@22
    :sswitch_22
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseArray()Lcom/dd/plist/NSArray;

    #@25
    move-result-object v0

    #@26
    goto :goto_21

    #@27
    :sswitch_27
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseDictionary()Lcom/dd/plist/NSDictionary;

    #@2a
    move-result-object v0

    #@2b
    goto :goto_21

    #@2c
    :sswitch_2c
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseData()Lcom/dd/plist/NSObject;

    #@2f
    move-result-object v0

    #@30
    goto :goto_21

    #@31
    :sswitch_31
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseQuotedString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@38
    move-result v0

    #@39
    const/16 v2, 0x14

    #@3b
    if-ne v0, v2, :cond_53

    #@3d
    const/4 v0, 0x4

    #@3e
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    #@41
    move-result v0

    #@42
    const/16 v2, 0x2d

    #@44
    if-ne v0, v2, :cond_53

    #@46
    :try_start_46
    new-instance v0, Lcom/dd/plist/NSDate;

    #@48
    invoke-direct {v0, v1}, Lcom/dd/plist/NSDate;-><init>(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4b} :catch_4c

    #@4b
    goto :goto_21

    #@4c
    :catch_4c
    move-exception v0

    #@4d
    new-instance v0, Lcom/dd/plist/NSString;

    #@4f
    invoke-direct {v0, v1}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    #@52
    goto :goto_21

    #@53
    :cond_53
    new-instance v0, Lcom/dd/plist/NSString;

    #@55
    invoke-direct {v0, v1}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    #@58
    goto :goto_21

    #@59
    :cond_59
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseString()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    const-string v0, "YES"

    #@5f
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v0

    #@63
    if-eqz v0, :cond_6c

    #@65
    new-instance v0, Lcom/dd/plist/NSNumber;

    #@67
    const/4 v1, 0x1

    #@68
    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    #@6b
    goto :goto_21

    #@6c
    :cond_6c
    const-string v0, "NO"

    #@6e
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v0

    #@72
    if-eqz v0, :cond_7b

    #@74
    new-instance v0, Lcom/dd/plist/NSNumber;

    #@76
    const/4 v1, 0x0

    #@77
    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    #@7a
    goto :goto_21

    #@7b
    :cond_7b
    new-instance v0, Lcom/dd/plist/NSString;

    #@7d
    invoke-direct {v0, v1}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    #@80
    goto :goto_21

    #@81
    nop

    #@82
    :sswitch_data_82
    .sparse-switch
        0x22 -> :sswitch_31
        0x28 -> :sswitch_22
        0x3c -> :sswitch_2c
        0x7b -> :sswitch_27
    .end sparse-switch
.end method

.method private parseQuotedString()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    const/4 v1, 0x1

    #@1
    const/16 v5, 0x5c

    #@3
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    #@6
    const-string v0, ""

    #@8
    move-object v2, v0

    #@9
    move v0, v1

    #@a
    :goto_a
    iget-object v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    #@c
    iget v4, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    #@e
    aget-byte v3, v3, v4

    #@10
    const/16 v4, 0x22

    #@12
    if-ne v3, v4, :cond_20

    #@14
    iget-object v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    #@16
    iget v4, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    #@18
    add-int/lit8 v4, v4, -0x1

    #@1a
    aget-byte v3, v3, v4

    #@1c
    if-ne v3, v5, :cond_51

    #@1e
    if-eqz v0, :cond_51

    #@20
    :cond_20
    new-instance v3, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    iget-object v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    #@2b
    iget v4, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    #@2d
    aget-byte v3, v3, v4

    #@2f
    int-to-char v3, v3

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-direct {p0, v5}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    #@3b
    move-result v3

    #@3c
    if-eqz v3, :cond_4b

    #@3e
    iget-object v3, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    #@40
    iget v4, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    #@42
    add-int/lit8 v4, v4, -0x1

    #@44
    aget-byte v3, v3, v4

    #@46
    if-ne v3, v5, :cond_4f

    #@48
    if-eqz v0, :cond_4f

    #@4a
    const/4 v0, 0x0

    #@4b
    :cond_4b
    :goto_4b
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    #@4e
    goto :goto_a

    #@4f
    :cond_4f
    move v0, v1

    #@50
    goto :goto_4b

    #@51
    :cond_51
    :try_start_51
    invoke-static {v2}, Lcom/dd/plist/ASCIIPropertyListParser;->parseQuotedString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_59

    #@54
    move-result-object v0

    #@55
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    #@58
    return-object v0

    #@59
    :catch_59
    move-exception v0

    #@5a
    new-instance v0, Ljava/text/ParseException;

    #@5c
    const-string v1, "The quoted string could not be parsed."

    #@5e
    iget v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    #@60
    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@63
    throw v0
.end method

.method public static parseQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    const-class v1, Lcom/dd/plist/ASCIIPropertyListParser;

    #@3
    monitor-enter v1

    #@4
    :try_start_4
    new-instance v2, Ljava/util/LinkedList;

    #@6
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    #@9
    new-instance v3, Ljava/text/StringCharacterIterator;

    #@b
    invoke-direct {v3, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v3}, Ljava/text/StringCharacterIterator;->current()C

    #@11
    move-result v1

    #@12
    :goto_12
    invoke-virtual {v3}, Ljava/text/StringCharacterIterator;->getIndex()I

    #@15
    move-result v4

    #@16
    invoke-virtual {v3}, Ljava/text/StringCharacterIterator;->getEndIndex()I

    #@19
    move-result v5

    #@1a
    if-ge v4, v5, :cond_4e

    #@1c
    packed-switch v1, :pswitch_data_aa

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@23
    move-result-object v4

    #@24
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@27
    int-to-byte v1, v1

    #@28
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@2b
    move-result-object v1

    #@2c
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f
    :cond_2f
    invoke-virtual {v3}, Ljava/text/StringCharacterIterator;->next()C

    #@32
    move-result v1

    #@33
    goto :goto_12

    #@34
    :pswitch_34
    invoke-static {v3}, Lcom/dd/plist/ASCIIPropertyListParser;->parseEscapedSequence(Ljava/text/StringCharacterIterator;)Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    const-string v4, "UTF-8"

    #@3a
    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@3d
    move-result-object v4

    #@3e
    array-length v5, v4

    #@3f
    move v1, v0

    #@40
    :goto_40
    if-ge v1, v5, :cond_2f

    #@42
    aget-byte v6, v4, v1

    #@44
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@47
    move-result-object v6

    #@48
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4b
    add-int/lit8 v1, v1, 0x1

    #@4d
    goto :goto_40

    #@4e
    :cond_4e
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@51
    move-result v1

    #@52
    new-array v3, v1, [B

    #@54
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@57
    move-result-object v2

    #@58
    move v1, v0

    #@59
    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@5c
    move-result v0

    #@5d
    if-eqz v0, :cond_6f

    #@5f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@62
    move-result-object v0

    #@63
    check-cast v0, Ljava/lang/Byte;

    #@65
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    #@68
    move-result v0

    #@69
    aput-byte v0, v3, v1

    #@6b
    add-int/lit8 v0, v1, 0x1

    #@6d
    move v1, v0

    #@6e
    goto :goto_59

    #@6f
    :cond_6f
    new-instance v0, Ljava/lang/String;

    #@71
    const-string v1, "UTF-8"

    #@73
    invoke-direct {v0, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@76
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    #@79
    move-result-object v1

    #@7a
    sget-object v2, Lcom/dd/plist/ASCIIPropertyListParser;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    #@7c
    if-nez v2, :cond_8a

    #@7e
    const-string v2, "ASCII"

    #@80
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    #@87
    move-result-object v2

    #@88
    sput-object v2, Lcom/dd/plist/ASCIIPropertyListParser;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    #@8a
    :cond_8a
    sget-object v2, Lcom/dd/plist/ASCIIPropertyListParser;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    #@8c
    invoke-virtual {v2, v1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    #@8f
    move-result v2

    #@90
    if-eqz v2, :cond_a0

    #@92
    sget-object v0, Lcom/dd/plist/ASCIIPropertyListParser;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    #@94
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    #@97
    move-result-object v0

    #@98
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    #@9b
    move-result-object v0

    #@9c
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_9f
    .catchall {:try_start_4 .. :try_end_9f} :catchall_a4

    #@9f
    move-result-object v0

    #@a0
    :cond_a0
    const-class v1, Lcom/dd/plist/ASCIIPropertyListParser;

    #@a2
    monitor-exit v1

    #@a3
    return-object v0

    #@a4
    :catchall_a4
    move-exception v0

    #@a5
    const-class v1, Lcom/dd/plist/ASCIIPropertyListParser;

    #@a7
    monitor-exit v1

    #@a8
    throw v0

    #@a9
    nop

    #@aa
    :pswitch_data_aa
    .packed-switch 0x5c
        :pswitch_34
    .end packed-switch
.end method

.method private parseString()Ljava/lang/String;
    .registers 2

    #@0
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [C

    #@4
    fill-array-data v0, :array_c

    #@7
    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->readInputUntil([C)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    :array_c
    .array-data 2
        0x20s
        0x9s
        0xas
        0xds
        0x2cs
        0x3bs
        0x3ds
        0x29s
    .end array-data
.end method

.method private read(C)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    invoke-direct {p0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;->expect(C)V

    #@3
    iget v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    #@5
    add-int/lit8 v0, v0, 0x1

    #@7
    iput v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    #@9
    return-void
.end method

.method private readInputUntil(C)Ljava/lang/String;
    .registers 5

    #@0
    const-string v0, ""

    #@2
    :goto_2
    invoke-direct {p0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept(C)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_24

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    #@13
    iget v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    #@15
    aget-byte v1, v1, v2

    #@17
    int-to-char v1, v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    #@23
    goto :goto_2

    #@24
    :cond_24
    return-object v0
.end method

.method private varargs readInputUntil([C)Ljava/lang/String;
    .registers 5

    #@0
    const-string v0, ""

    #@2
    :goto_2
    invoke-direct {p0, p1}, Lcom/dd/plist/ASCIIPropertyListParser;->accept([C)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_24

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/dd/plist/ASCIIPropertyListParser;->data:[B

    #@13
    iget v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    #@15
    aget-byte v1, v1, v2

    #@17
    int-to-char v1, v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    #@23
    goto :goto_2

    #@24
    :cond_24
    return-object v0
.end method

.method private skip()V
    .registers 2

    #@0
    iget v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    #@6
    return-void
.end method

.method private skipWhitespaces()V
    .registers 2

    #@0
    :goto_0
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [C

    #@3
    fill-array-data v0, :array_12

    #@6
    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->accept([C)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_10

    #@c
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skip()V

    #@f
    goto :goto_0

    #@10
    :cond_10
    return-void

    #@11
    nop

    #@12
    :array_12
    .array-data 2
        0xds
        0xas
        0x20s
        0x9s
    .end array-data
.end method


# virtual methods
.method public parse()Lcom/dd/plist/NSObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    #@3
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->skipWhitespaces()V

    #@6
    const/4 v0, 0x2

    #@7
    new-array v0, v0, [C

    #@9
    fill-array-data v0, :array_22

    #@c
    invoke-direct {p0, v0}, Lcom/dd/plist/ASCIIPropertyListParser;->expect([C)V

    #@f
    :try_start_f
    invoke-direct {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parseObject()Lcom/dd/plist/NSObject;
    :try_end_12
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f .. :try_end_12} :catch_14

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    :catch_14
    move-exception v0

    #@15
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    #@18
    new-instance v0, Ljava/text/ParseException;

    #@1a
    const-string v1, "Reached end of input unexpectedly."

    #@1c
    iget v2, p0, Lcom/dd/plist/ASCIIPropertyListParser;->index:I

    #@1e
    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@21
    throw v0

    #@22
    :array_22
    .array-data 2
        0x7bs
        0x28s
    .end array-data
.end method
