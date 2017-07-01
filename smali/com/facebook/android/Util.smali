.class public final Lcom/facebook/android/Util;
.super Ljava/lang/Object;


# static fields
.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v7, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    new-instance v1, Landroid/os/Bundle;

    #@4
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@7
    if-eqz p0, :cond_4a

    #@9
    const-string v2, "&"

    #@b
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    array-length v3, v2

    #@10
    :goto_10
    if-ge v0, v3, :cond_4a

    #@12
    aget-object v4, v2, v0

    #@14
    const-string v5, "="

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    :try_start_1a
    array-length v5, v4

    #@1b
    const/4 v6, 0x2

    #@1c
    if-ne v5, v6, :cond_36

    #@1e
    const/4 v5, 0x0

    #@1f
    aget-object v5, v4, v5

    #@21
    const-string v6, "UTF-8"

    #@23
    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    const/4 v6, 0x1

    #@28
    aget-object v4, v4, v6

    #@2a
    const-string v6, "UTF-8"

    #@2c
    invoke-static {v4, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@33
    :cond_33
    :goto_33
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_10

    #@36
    :cond_36
    array-length v5, v4

    #@37
    if-ne v5, v7, :cond_33

    #@39
    const/4 v5, 0x0

    #@3a
    aget-object v4, v4, v5

    #@3c
    const-string v5, "UTF-8"

    #@3e
    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    const-string v5, ""

    #@44
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_47} :catch_48

    #@47
    goto :goto_33

    #@48
    :catch_48
    move-exception v4

    #@49
    goto :goto_33

    #@4a
    :cond_4a
    return-object v1
.end method

.method public static encodePostBody(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    if-nez p0, :cond_5

    #@2
    const-string v0, ""

    #@4
    :goto_4
    return-object v0

    #@5
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v3

    #@12
    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_66

    #@18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/lang/String;

    #@1e
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    instance-of v4, v1, Ljava/lang/String;

    #@24
    if-eqz v4, :cond_12

    #@26
    new-instance v4, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string v5, "Content-Disposition: form-data; name=\""

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    const-string v4, "\"\r\n\r\n"

    #@37
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    move-object v0, v1

    #@3c
    check-cast v0, Ljava/lang/String;

    #@3e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    new-instance v0, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string v1, "\r\n--"

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    const-string v1, "\r\n"

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    goto :goto_12

    #@66
    :cond_66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    goto :goto_4
.end method

.method public static encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    if-nez p0, :cond_5

    #@2
    const-string v0, ""

    #@4
    :goto_4
    return-object v0

    #@5
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v3

    #@12
    const/4 v0, 0x1

    #@13
    move v1, v0

    #@14
    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_58

    #@1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Ljava/lang/String;

    #@20
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@23
    move-result-object v4

    #@24
    instance-of v4, v4, Ljava/lang/String;

    #@26
    if-eqz v4, :cond_14

    #@28
    if-eqz v1, :cond_52

    #@2a
    const/4 v1, 0x0

    #@2b
    :goto_2b
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    const-string v5, "="

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    goto :goto_14

    #@52
    :cond_52
    const-string v4, "&"

    #@54
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    goto :goto_2b

    #@58
    :cond_58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    goto :goto_4
.end method

.method public static openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v6, 0x1

    #@1
    const-string v0, "GET"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_24

    #@9
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string v1, "?"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-static {p2}, Lcom/facebook/android/Util;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object p0

    #@24
    :cond_24
    const-string v0, "Facebook-Util"

    #@26
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    const-string v2, " URL: "

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    #@40
    new-instance v0, Ljava/net/URL;

    #@42
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@45
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@48
    move-result-object v0

    #@49
    check-cast v0, Ljava/net/HttpURLConnection;

    #@4b
    const-string v1, "User-Agent"

    #@4d
    new-instance v2, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    #@55
    move-result-object v3

    #@56
    const-string v4, "http.agent"

    #@58
    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    const-string v3, " FacebookAndroidSDK"

    #@62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@6d
    const-string v1, "GET"

    #@6f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v1

    #@73
    if-nez v1, :cond_1ed

    #@75
    new-instance v3, Landroid/os/Bundle;

    #@77
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@7a
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@7d
    move-result-object v1

    #@7e
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@81
    move-result-object v4

    #@82
    :cond_82
    :goto_82
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@85
    move-result v1

    #@86
    if-eqz v1, :cond_9c

    #@88
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8b
    move-result-object v1

    #@8c
    check-cast v1, Ljava/lang/String;

    #@8e
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@91
    move-result-object v2

    #@92
    instance-of v5, v2, [B

    #@94
    if-eqz v5, :cond_82

    #@96
    check-cast v2, [B

    #@98
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    #@9b
    goto :goto_82

    #@9c
    :cond_9c
    const-string v1, "method"

    #@9e
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@a1
    move-result v1

    #@a2
    if-nez v1, :cond_a9

    #@a4
    const-string v1, "method"

    #@a6
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@a9
    :cond_a9
    const-string v1, "access_token"

    #@ab
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@ae
    move-result v1

    #@af
    if-eqz v1, :cond_c0

    #@b1
    const-string v1, "access_token"

    #@b3
    const-string v2, "access_token"

    #@b5
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@b8
    move-result-object v2

    #@b9
    invoke-static {v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@bc
    move-result-object v2

    #@bd
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@c0
    :cond_c0
    const-string v1, "POST"

    #@c2
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    #@c5
    const-string v1, "Content-Type"

    #@c7
    new-instance v2, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string v4, "multipart/form-data;boundary="

    #@ce
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v2

    #@d2
    const-string v4, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    #@d4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v2

    #@d8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v2

    #@dc
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@df
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    #@e2
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    #@e5
    const-string v1, "Connection"

    #@e7
    const-string v2, "Keep-Alive"

    #@e9
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@ec
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    #@ef
    new-instance v2, Ljava/io/BufferedOutputStream;

    #@f1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    #@f4
    move-result-object v1

    #@f5
    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@f8
    :try_start_f8
    new-instance v1, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string v4, "--"

    #@ff
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v1

    #@103
    const-string v4, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    #@105
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v1

    #@109
    const-string v4, "\r\n"

    #@10b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v1

    #@10f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@112
    move-result-object v1

    #@113
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    #@116
    move-result-object v1

    #@117
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    #@11a
    const-string v1, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    #@11c
    invoke-static {p2, v1}, Lcom/facebook/android/Util;->encodePostBody(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    #@11f
    move-result-object v1

    #@120
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    #@123
    move-result-object v1

    #@124
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    #@127
    new-instance v1, Ljava/lang/StringBuilder;

    #@129
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12c
    const-string v4, "\r\n"

    #@12e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v1

    #@132
    const-string v4, "--"

    #@134
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v1

    #@138
    const-string v4, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    #@13a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v1

    #@13e
    const-string v4, "\r\n"

    #@140
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v1

    #@144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@147
    move-result-object v1

    #@148
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    #@14b
    move-result-object v1

    #@14c
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    #@14f
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    #@152
    move-result v1

    #@153
    if-nez v1, :cond_1e7

    #@155
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@158
    move-result-object v1

    #@159
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@15c
    move-result-object v4

    #@15d
    :goto_15d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@160
    move-result v1

    #@161
    if-eqz v1, :cond_1e7

    #@163
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@166
    move-result-object v1

    #@167
    check-cast v1, Ljava/lang/String;

    #@169
    new-instance v5, Ljava/lang/StringBuilder;

    #@16b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@16e
    const-string v6, "Content-Disposition: form-data; filename=\""

    #@170
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v5

    #@174
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v5

    #@178
    const-string v6, "\""

    #@17a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v5

    #@17e
    const-string v6, "\r\n"

    #@180
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v5

    #@184
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@187
    move-result-object v5

    #@188
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    #@18b
    move-result-object v5

    #@18c
    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    #@18f
    new-instance v5, Ljava/lang/StringBuilder;

    #@191
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@194
    const-string v6, "Content-Type: content/unknown"

    #@196
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v5

    #@19a
    const-string v6, "\r\n"

    #@19c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v5

    #@1a0
    const-string v6, "\r\n"

    #@1a2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v5

    #@1a6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a9
    move-result-object v5

    #@1aa
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    #@1ad
    move-result-object v5

    #@1ae
    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    #@1b1
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    #@1b4
    move-result-object v1

    #@1b5
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    #@1b8
    new-instance v1, Ljava/lang/StringBuilder;

    #@1ba
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1bd
    const-string v5, "\r\n"

    #@1bf
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v1

    #@1c3
    const-string v5, "--"

    #@1c5
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v1

    #@1c9
    const-string v5, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    #@1cb
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ce
    move-result-object v1

    #@1cf
    const-string v5, "\r\n"

    #@1d1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d4
    move-result-object v1

    #@1d5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d8
    move-result-object v1

    #@1d9
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    #@1dc
    move-result-object v1

    #@1dd
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1e0
    .catchall {:try_start_f8 .. :try_end_1e0} :catchall_1e2

    #@1e0
    goto/16 :goto_15d

    #@1e2
    :catchall_1e2
    move-exception v0

    #@1e3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    #@1e6
    throw v0

    #@1e7
    :cond_1e7
    :try_start_1e7
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1ea
    .catchall {:try_start_1e7 .. :try_end_1ea} :catchall_1e2

    #@1ea
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    #@1ed
    :cond_1ed
    :try_start_1ed
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    #@1f0
    move-result-object v1

    #@1f1
    invoke-static {v1}, Lcom/facebook/android/Util;->read(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1f4
    .catch Ljava/io/FileNotFoundException; {:try_start_1ed .. :try_end_1f4} :catch_1f6

    #@1f4
    move-result-object v0

    #@1f5
    :goto_1f5
    return-object v0

    #@1f6
    :catch_1f6
    move-exception v1

    #@1f7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    #@1fa
    move-result-object v0

    #@1fb
    invoke-static {v0}, Lcom/facebook/android/Util;->read(Ljava/io/InputStream;)Ljava/lang/String;

    #@1fe
    move-result-object v0

    #@1ff
    goto :goto_1f5
.end method

.method public static parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/facebook/android/FacebookError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-string v0, "false"

    #@2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_10

    #@8
    new-instance v0, Lcom/facebook/android/FacebookError;

    #@a
    const-string v1, "request failed"

    #@c
    invoke-direct {v0, v1}, Lcom/facebook/android/FacebookError;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    :cond_10
    const-string v0, "true"

    #@12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1a

    #@18
    const-string p0, "{value : true}"

    #@1a
    :cond_1a
    new-instance v0, Lorg/json/JSONObject;

    #@1c
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@1f
    const-string v1, "error"

    #@21
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_40

    #@27
    const-string v1, "error"

    #@29
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@2c
    move-result-object v0

    #@2d
    new-instance v1, Lcom/facebook/android/FacebookError;

    #@2f
    const-string v2, "message"

    #@31
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    const-string v3, "type"

    #@37
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    const/4 v3, 0x0

    #@3c
    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/android/FacebookError;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@3f
    throw v1

    #@40
    :cond_40
    const-string v1, "error_code"

    #@42
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_68

    #@48
    const-string v1, "error_msg"

    #@4a
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@4d
    move-result v1

    #@4e
    if-eqz v1, :cond_68

    #@50
    new-instance v1, Lcom/facebook/android/FacebookError;

    #@52
    const-string v2, "error_msg"

    #@54
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    const-string v3, ""

    #@5a
    const-string v4, "error_code"

    #@5c
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@63
    move-result v0

    #@64
    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/android/FacebookError;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@67
    throw v1

    #@68
    :cond_68
    const-string v1, "error_code"

    #@6a
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@6d
    move-result v1

    #@6e
    if-eqz v1, :cond_84

    #@70
    new-instance v1, Lcom/facebook/android/FacebookError;

    #@72
    const-string v2, "request failed"

    #@74
    const-string v3, ""

    #@76
    const-string v4, "error_code"

    #@78
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@7b
    move-result-object v0

    #@7c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7f
    move-result v0

    #@80
    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/android/FacebookError;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@83
    throw v1

    #@84
    :cond_84
    const-string v1, "error_msg"

    #@86
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@89
    move-result v1

    #@8a
    if-eqz v1, :cond_98

    #@8c
    new-instance v1, Lcom/facebook/android/FacebookError;

    #@8e
    const-string v2, "error_msg"

    #@90
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@93
    move-result-object v0

    #@94
    invoke-direct {v1, v0}, Lcom/facebook/android/FacebookError;-><init>(Ljava/lang/String;)V

    #@97
    throw v1

    #@98
    :cond_98
    const-string v1, "error_reason"

    #@9a
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@9d
    move-result v1

    #@9e
    if-eqz v1, :cond_ac

    #@a0
    new-instance v1, Lcom/facebook/android/FacebookError;

    #@a2
    const-string v2, "error_reason"

    #@a4
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@a7
    move-result-object v0

    #@a8
    invoke-direct {v1, v0}, Lcom/facebook/android/FacebookError;-><init>(Ljava/lang/String;)V

    #@ab
    throw v1

    #@ac
    :cond_ac
    return-object v0
.end method

.method public static parseUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-string v0, "fbconnect"

    #@2
    const-string v1, "http"

    #@4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    :try_start_8
    new-instance v1, Ljava/net/URL;

    #@a
    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Lcom/facebook/android/Util;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v1}, Lcom/facebook/android/Util;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_20
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_20} :catch_21

    #@20
    :goto_20
    return-object v0

    #@21
    :catch_21
    move-exception v0

    #@22
    new-instance v0, Landroid/os/Bundle;

    #@24
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@27
    goto :goto_20
.end method

.method private static read(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    new-instance v2, Ljava/io/BufferedReader;

    #@7
    new-instance v0, Ljava/io/InputStreamReader;

    #@9
    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@c
    const/16 v3, 0x3e8

    #@e
    invoke-direct {v2, v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    #@11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    :goto_15
    if-eqz v0, :cond_1f

    #@17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    goto :goto_15

    #@1f
    :cond_1f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    return-object v0
.end method

.method public static showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #@2
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@5
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@8
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@b
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    #@12
    return-void
.end method
