.class public Lcom/dd/plist/NSString;
.super Lcom/dd/plist/NSObject;


# static fields
.field private static asciiEncoder:Ljava/nio/charset/CharsetEncoder;

.field private static utf16beEncoder:Ljava/nio/charset/CharsetEncoder;

.field private static utf8Encoder:Ljava/nio/charset/CharsetEncoder;


# instance fields
.field private content:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    #@3
    iput-object p1, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    #@5
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    #@3
    new-instance v0, Ljava/lang/String;

    #@5
    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@8
    iput-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    #@a
    return-void
.end method

.method static escapeStringForASCII(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    #@0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@3
    move-result-object v3

    #@4
    const-string v1, ""

    #@6
    const/4 v0, 0x0

    #@7
    move v6, v0

    #@8
    move-object v0, v1

    #@9
    move v1, v6

    #@a
    :goto_a
    array-length v2, v3

    #@b
    if-ge v1, v2, :cond_ff

    #@d
    aget-char v2, v3, v1

    #@f
    const/16 v4, 0x7f

    #@11
    if-le v2, v4, :cond_5b

    #@13
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string v4, "\\U"

    #@1e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    :goto_2a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@2d
    move-result v2

    #@2e
    const/4 v5, 0x4

    #@2f
    if-ge v2, v5, :cond_45

    #@31
    new-instance v2, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string v5, "0"

    #@38
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    goto :goto_2a

    #@45
    :cond_45
    new-instance v2, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    :goto_56
    add-int/lit8 v0, v1, 0x1

    #@58
    move v1, v0

    #@59
    move-object v0, v2

    #@5a
    goto :goto_a

    #@5b
    :cond_5b
    const/16 v4, 0x5c

    #@5d
    if-ne v2, v4, :cond_73

    #@5f
    new-instance v2, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    const-string v2, "\\\\"

    #@6a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    goto :goto_56

    #@73
    :cond_73
    const/16 v4, 0x22

    #@75
    if-ne v2, v4, :cond_8b

    #@77
    new-instance v2, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v0

    #@80
    const-string v2, "\\\""

    #@82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v0

    #@86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v2

    #@8a
    goto :goto_56

    #@8b
    :cond_8b
    const/16 v4, 0x8

    #@8d
    if-ne v2, v4, :cond_a3

    #@8f
    new-instance v2, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v0

    #@98
    const-string v2, "\\b"

    #@9a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v0

    #@9e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v2

    #@a2
    goto :goto_56

    #@a3
    :cond_a3
    const/16 v4, 0xa

    #@a5
    if-ne v2, v4, :cond_bb

    #@a7
    new-instance v2, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v0

    #@b0
    const-string v2, "\\n"

    #@b2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v0

    #@b6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v2

    #@ba
    goto :goto_56

    #@bb
    :cond_bb
    const/16 v4, 0xd

    #@bd
    if-ne v2, v4, :cond_d3

    #@bf
    new-instance v2, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v0

    #@c8
    const-string v2, "\\r"

    #@ca
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v0

    #@ce
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v2

    #@d2
    goto :goto_56

    #@d3
    :cond_d3
    const/16 v4, 0x9

    #@d5
    if-ne v2, v4, :cond_ec

    #@d7
    new-instance v2, Ljava/lang/StringBuilder;

    #@d9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@dc
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v0

    #@e0
    const-string v2, "\\t"

    #@e2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v0

    #@e6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v2

    #@ea
    goto/16 :goto_56

    #@ec
    :cond_ec
    new-instance v4, Ljava/lang/StringBuilder;

    #@ee
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v0

    #@f5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v0

    #@f9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fc
    move-result-object v2

    #@fd
    goto/16 :goto_56

    #@ff
    :cond_ff
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    instance-of v0, p1, Lcom/dd/plist/NSString;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    #@8
    check-cast p1, Lcom/dd/plist/NSString;

    #@a
    iget-object v1, p1, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected toASCII(Ljava/lang/StringBuilder;I)V
    .registers 4

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSString;->indent(Ljava/lang/StringBuilder;I)V

    #@3
    const-string v0, "\""

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    #@a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    const-string v0, "\""

    #@f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    return-void
.end method

.method protected toASCIIGnuStep(Ljava/lang/StringBuilder;I)V
    .registers 4

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSString;->indent(Ljava/lang/StringBuilder;I)V

    #@3
    const-string v0, "\""

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    #@a
    invoke-static {v0}, Lcom/dd/plist/NSString;->escapeStringForASCII(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    const-string v0, "\""

    #@13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    return-void
.end method

.method public toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    #@2
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    #@5
    move-result-object v0

    #@6
    const-class v1, Lcom/dd/plist/NSString;

    #@8
    monitor-enter v1

    #@9
    :try_start_9
    sget-object v1, Lcom/dd/plist/NSString;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    #@b
    if-nez v1, :cond_41

    #@d
    const-string v1, "ASCII"

    #@f
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    #@16
    move-result-object v1

    #@17
    sput-object v1, Lcom/dd/plist/NSString;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    #@19
    :goto_19
    sget-object v1, Lcom/dd/plist/NSString;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    #@1b
    invoke-virtual {v1, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_4c

    #@21
    const/4 v1, 0x5

    #@22
    sget-object v2, Lcom/dd/plist/NSString;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    #@24
    invoke-virtual {v2, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    #@27
    move-result-object v0

    #@28
    :goto_28
    const-class v2, Lcom/dd/plist/NSString;

    #@2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_47

    #@2b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    #@2e
    move-result v2

    #@2f
    new-array v2, v2, [B

    #@31
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@34
    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    #@36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@39
    move-result v0

    #@3a
    invoke-virtual {p1, v1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->writeIntHeader(II)V

    #@3d
    invoke-virtual {p1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    #@40
    return-void

    #@41
    :cond_41
    :try_start_41
    sget-object v1, Lcom/dd/plist/NSString;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    #@43
    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    #@46
    goto :goto_19

    #@47
    :catchall_47
    move-exception v0

    #@48
    const-class v1, Lcom/dd/plist/NSString;

    #@4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_47

    #@4b
    throw v0

    #@4c
    :cond_4c
    :try_start_4c
    sget-object v1, Lcom/dd/plist/NSString;->utf16beEncoder:Ljava/nio/charset/CharsetEncoder;

    #@4e
    if-nez v1, :cond_64

    #@50
    const-string v1, "UTF-16BE"

    #@52
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    #@59
    move-result-object v1

    #@5a
    sput-object v1, Lcom/dd/plist/NSString;->utf16beEncoder:Ljava/nio/charset/CharsetEncoder;

    #@5c
    :goto_5c
    const/4 v1, 0x6

    #@5d
    sget-object v2, Lcom/dd/plist/NSString;->utf16beEncoder:Ljava/nio/charset/CharsetEncoder;

    #@5f
    invoke-virtual {v2, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    #@62
    move-result-object v0

    #@63
    goto :goto_28

    #@64
    :cond_64
    sget-object v1, Lcom/dd/plist/NSString;->utf16beEncoder:Ljava/nio/charset/CharsetEncoder;

    #@66
    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;
    :try_end_69
    .catchall {:try_start_4c .. :try_end_69} :catchall_47

    #@69
    goto :goto_5c
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method toXML(Ljava/lang/StringBuilder;I)V
    .registers 6

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSString;->indent(Ljava/lang/StringBuilder;I)V

    #@3
    const-string v0, "<string>"

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    const-class v0, Lcom/dd/plist/NSString;

    #@a
    monitor-enter v0

    #@b
    :try_start_b
    sget-object v0, Lcom/dd/plist/NSString;->utf8Encoder:Ljava/nio/charset/CharsetEncoder;

    #@d
    if-nez v0, :cond_77

    #@f
    const-string v0, "UTF-8"

    #@11
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    #@18
    move-result-object v0

    #@19
    sput-object v0, Lcom/dd/plist/NSString;->utf8Encoder:Ljava/nio/charset/CharsetEncoder;
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_7d

    #@1b
    :goto_1b
    :try_start_1b
    sget-object v0, Lcom/dd/plist/NSString;->utf8Encoder:Ljava/nio/charset/CharsetEncoder;

    #@1d
    iget-object v1, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    #@1f
    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    #@2a
    move-result v1

    #@2b
    new-array v1, v1, [B

    #@2d
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@30
    new-instance v0, Ljava/lang/String;

    #@32
    const-string v2, "UTF-8"

    #@34
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@37
    iput-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;
    :try_end_39
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1b .. :try_end_39} :catch_82
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_39} :catch_87
    .catchall {:try_start_1b .. :try_end_39} :catchall_7d

    #@39
    :goto_39
    :try_start_39
    const-class v0, Lcom/dd/plist/NSString;

    #@3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_7d

    #@3c
    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    #@3e
    const-string v1, "&"

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@43
    move-result v0

    #@44
    if-nez v0, :cond_5a

    #@46
    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    #@48
    const-string v1, "<"

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@4d
    move-result v0

    #@4e
    if-nez v0, :cond_5a

    #@50
    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    #@52
    const-string v1, ">"

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@57
    move-result v0

    #@58
    if-eqz v0, :cond_8c

    #@5a
    :cond_5a
    const-string v0, "<![CDATA["

    #@5c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    #@61
    const-string v1, "]]>"

    #@63
    const-string v2, "]]]]><![CDATA[>"

    #@65
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    const-string v0, "]]>"

    #@6e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    :goto_71
    const-string v0, "</string>"

    #@73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    return-void

    #@77
    :cond_77
    :try_start_77
    sget-object v0, Lcom/dd/plist/NSString;->utf8Encoder:Ljava/nio/charset/CharsetEncoder;

    #@79
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    #@7c
    goto :goto_1b

    #@7d
    :catchall_7d
    move-exception v0

    #@7e
    const-class v1, Lcom/dd/plist/NSString;

    #@80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_7d

    #@81
    throw v0

    #@82
    :catch_82
    move-exception v0

    #@83
    :try_start_83
    invoke-virtual {v0}, Ljava/nio/charset/CharacterCodingException;->printStackTrace()V

    #@86
    goto :goto_39

    #@87
    :catch_87
    move-exception v0

    #@88
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_83 .. :try_end_8b} :catchall_7d

    #@8b
    goto :goto_39

    #@8c
    :cond_8c
    iget-object v0, p0, Lcom/dd/plist/NSString;->content:Ljava/lang/String;

    #@8e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    goto :goto_71
.end method
