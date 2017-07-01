.class public Lcom/dd/plist/PropertyListParser;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static convertToASCII(Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    invoke-static {p0}, Lcom/dd/plist/PropertyListParser;->parse(Ljava/io/File;)Lcom/dd/plist/NSObject;

    #@3
    move-result-object v2

    #@4
    :try_start_4
    move-object v0, v2

    #@5
    check-cast v0, Lcom/dd/plist/NSDictionary;

    #@7
    move-object v1, v0

    #@8
    invoke-static {v1, p1}, Lcom/dd/plist/PropertyListParser;->saveAsASCII(Lcom/dd/plist/NSDictionary;Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    #@b
    :goto_b
    return-void

    #@c
    :catch_c
    move-exception v1

    #@d
    :try_start_d
    check-cast v2, Lcom/dd/plist/NSArray;

    #@f
    invoke-static {v2, p1}, Lcom/dd/plist/PropertyListParser;->saveAsASCII(Lcom/dd/plist/NSArray;Ljava/io/File;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_13

    #@12
    goto :goto_b

    #@13
    :catch_13
    move-exception v1

    #@14
    new-instance v1, Ljava/lang/Exception;

    #@16
    const-string v2, "The root of the given input property list is neither a Dictionary nor an Array!"

    #@18
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1
.end method

.method public static convertToBinary(Ljava/io/File;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    invoke-static {p0}, Lcom/dd/plist/PropertyListParser;->parse(Ljava/io/File;)Lcom/dd/plist/NSObject;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Lcom/dd/plist/PropertyListParser;->saveAsBinary(Lcom/dd/plist/NSObject;Ljava/io/File;)V

    #@7
    return-void
.end method

.method public static convertToGnuStepASCII(Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    invoke-static {p0}, Lcom/dd/plist/PropertyListParser;->parse(Ljava/io/File;)Lcom/dd/plist/NSObject;

    #@3
    move-result-object v2

    #@4
    :try_start_4
    move-object v0, v2

    #@5
    check-cast v0, Lcom/dd/plist/NSDictionary;

    #@7
    move-object v1, v0

    #@8
    invoke-static {v1, p1}, Lcom/dd/plist/PropertyListParser;->saveAsGnuStepASCII(Lcom/dd/plist/NSDictionary;Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    #@b
    :goto_b
    return-void

    #@c
    :catch_c
    move-exception v1

    #@d
    :try_start_d
    check-cast v2, Lcom/dd/plist/NSArray;

    #@f
    invoke-static {v2, p1}, Lcom/dd/plist/PropertyListParser;->saveAsGnuStepASCII(Lcom/dd/plist/NSArray;Ljava/io/File;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_13

    #@12
    goto :goto_b

    #@13
    :catch_13
    move-exception v1

    #@14
    new-instance v1, Ljava/lang/Exception;

    #@16
    const-string v2, "The root of the given input property list is neither a Dictionary nor an Array!"

    #@18
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1
.end method

.method public static convertToXml(Ljava/io/File;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    invoke-static {p0}, Lcom/dd/plist/PropertyListParser;->parse(Ljava/io/File;)Lcom/dd/plist/NSObject;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Lcom/dd/plist/PropertyListParser;->saveAsXML(Lcom/dd/plist/NSObject;Ljava/io/File;)V

    #@7
    return-void
.end method

.method public static parse(Ljava/io/File;)Lcom/dd/plist/NSObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    const/16 v4, 0x8

    #@2
    new-instance v0, Ljava/io/FileInputStream;

    #@4
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@7
    new-instance v1, Ljava/lang/String;

    #@9
    invoke-static {v0, v4}, Lcom/dd/plist/PropertyListParser;->readAll(Ljava/io/InputStream;I)[B

    #@c
    move-result-object v2

    #@d
    const/4 v3, 0x0

    #@e
    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    #@11
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    #@14
    const-string v0, "bplist"

    #@16
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_21

    #@1c
    invoke-static {p0}, Lcom/dd/plist/BinaryPropertyListParser;->parse(Ljava/io/File;)Lcom/dd/plist/NSObject;

    #@1f
    move-result-object v0

    #@20
    :goto_20
    return-object v0

    #@21
    :cond_21
    const-string v0, "<?xml"

    #@23
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_2e

    #@29
    invoke-static {p0}, Lcom/dd/plist/XMLPropertyListParser;->parse(Ljava/io/File;)Lcom/dd/plist/NSObject;

    #@2c
    move-result-object v0

    #@2d
    goto :goto_20

    #@2e
    :cond_2e
    const-string v0, "("

    #@30
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@33
    move-result v0

    #@34
    if-nez v0, :cond_3e

    #@36
    const-string v0, "{"

    #@38
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_43

    #@3e
    :cond_3e
    invoke-static {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse(Ljava/io/File;)Lcom/dd/plist/NSObject;

    #@41
    move-result-object v0

    #@42
    goto :goto_20

    #@43
    :cond_43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@45
    const-string v1, "The given data is not a valid property list. For supported format see http://code.google.com/p/plist"

    #@47
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v0
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    const/16 v3, 0x8

    #@2
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_51

    #@8
    const/16 v0, 0xa

    #@a
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    #@d
    new-instance v0, Ljava/lang/String;

    #@f
    invoke-static {p0, v3}, Lcom/dd/plist/PropertyListParser;->readAll(Ljava/io/InputStream;I)[B

    #@12
    move-result-object v1

    #@13
    const/4 v2, 0x0

    #@14
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    #@17
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    #@1a
    const-string v1, "bplist"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_27

    #@22
    invoke-static {p0}, Lcom/dd/plist/BinaryPropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;

    #@25
    move-result-object v0

    #@26
    :goto_26
    return-object v0

    #@27
    :cond_27
    const-string v1, "<?xml"

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_34

    #@2f
    invoke-static {p0}, Lcom/dd/plist/XMLPropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;

    #@32
    move-result-object v0

    #@33
    goto :goto_26

    #@34
    :cond_34
    const-string v1, "("

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@39
    move-result v1

    #@3a
    if-nez v1, :cond_44

    #@3c
    const-string v1, "{"

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_49

    #@44
    :cond_44
    invoke-static {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;

    #@47
    move-result-object v0

    #@48
    goto :goto_26

    #@49
    :cond_49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@4b
    const-string v1, "The given data is not a valid property list. For supported format see http://code.google.com/p/plist"

    #@4d
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@50
    throw v0

    #@51
    :cond_51
    const v0, 0x7fffffff

    #@54
    invoke-static {p0, v0}, Lcom/dd/plist/PropertyListParser;->readAll(Ljava/io/InputStream;I)[B

    #@57
    move-result-object v0

    #@58
    invoke-static {v0}, Lcom/dd/plist/PropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    #@5b
    move-result-object v0

    #@5c
    goto :goto_26
.end method

.method public static parse([B)Lcom/dd/plist/NSObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    new-instance v0, Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    const/16 v2, 0x8

    #@5
    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    #@8
    const-string v1, "bplist"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_15

    #@10
    invoke-static {p0}, Lcom/dd/plist/BinaryPropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    #@13
    move-result-object v0

    #@14
    :goto_14
    return-object v0

    #@15
    :cond_15
    const-string v1, "<?xml"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_22

    #@1d
    invoke-static {p0}, Lcom/dd/plist/XMLPropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    #@20
    move-result-object v0

    #@21
    goto :goto_14

    #@22
    :cond_22
    const-string v1, "("

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_32

    #@2a
    const-string v1, "{"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_37

    #@32
    :cond_32
    invoke-static {p0}, Lcom/dd/plist/ASCIIPropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    #@35
    move-result-object v0

    #@36
    goto :goto_14

    #@37
    :cond_37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@39
    const-string v1, "The given data is not a valid property list. For supported format see http://code.google.com/p/plist"

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0
.end method

.method protected static readAll(Ljava/io/InputStream;I)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    :goto_5
    if-lez p1, :cond_e

    #@7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@a
    move-result v1

    #@b
    const/4 v2, -0x1

    #@c
    if-ne v1, v2, :cond_13

    #@e
    :cond_e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    :cond_13
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@16
    add-int/lit8 p1, p1, -0x1

    #@18
    goto :goto_5
.end method

.method public static saveAsASCII(Lcom/dd/plist/NSArray;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@2
    new-instance v1, Ljava/io/FileOutputStream;

    #@4
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@7
    const-string v2, "ASCII"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@c
    invoke-virtual {p0}, Lcom/dd/plist/NSArray;->toASCIIPropertyList()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    #@13
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    #@16
    return-void
.end method

.method public static saveAsASCII(Lcom/dd/plist/NSDictionary;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@2
    new-instance v1, Ljava/io/FileOutputStream;

    #@4
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@7
    const-string v2, "ASCII"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@c
    invoke-virtual {p0}, Lcom/dd/plist/NSDictionary;->toASCIIPropertyList()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    #@13
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    #@16
    return-void
.end method

.method public static saveAsBinary(Lcom/dd/plist/NSObject;Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-static {p1, p0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(Ljava/io/File;Lcom/dd/plist/NSObject;)V

    #@3
    return-void
.end method

.method public static saveAsGnuStepASCII(Lcom/dd/plist/NSArray;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@2
    new-instance v1, Ljava/io/FileOutputStream;

    #@4
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@7
    const-string v2, "ASCII"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@c
    invoke-virtual {p0}, Lcom/dd/plist/NSArray;->toGnuStepASCIIPropertyList()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    #@13
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    #@16
    return-void
.end method

.method public static saveAsGnuStepASCII(Lcom/dd/plist/NSDictionary;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@2
    new-instance v1, Ljava/io/FileOutputStream;

    #@4
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@7
    const-string v2, "ASCII"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@c
    invoke-virtual {p0}, Lcom/dd/plist/NSDictionary;->toGnuStepASCIIPropertyList()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    #@13
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    #@16
    return-void
.end method

.method public static saveAsXML(Lcom/dd/plist/NSObject;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@2
    new-instance v1, Ljava/io/FileOutputStream;

    #@4
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@7
    const-string v2, "UTF-8"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@c
    invoke-virtual {p0}, Lcom/dd/plist/NSObject;->toXMLPropertyList()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    #@13
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    #@16
    return-void
.end method
