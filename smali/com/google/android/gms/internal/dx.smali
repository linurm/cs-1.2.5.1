.class public final Lcom/google/android/gms/internal/dx;
.super Lcom/google/android/gms/internal/dw$a;


# static fields
.field private static final qp:Ljava/lang/Object;

.field private static qq:Lcom/google/android/gms/internal/dx;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final qr:Lcom/google/android/gms/internal/ed;

.field private final qs:Lcom/google/android/gms/internal/bi;

.field private final qt:Lcom/google/android/gms/internal/ay;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/dx;->qp:Ljava/lang/Object;

    #@7
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/bi;Lcom/google/android/gms/internal/ed;)V
    .registers 5

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/dw$a;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/dx;->mContext:Landroid/content/Context;

    #@5
    iput-object p4, p0, Lcom/google/android/gms/internal/dx;->qr:Lcom/google/android/gms/internal/ed;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/internal/dx;->qs:Lcom/google/android/gms/internal/bi;

    #@9
    iput-object p2, p0, Lcom/google/android/gms/internal/dx;->qt:Lcom/google/android/gms/internal/ay;

    #@b
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/bi;Lcom/google/android/gms/internal/ed;Lcom/google/android/gms/internal/ds;)Lcom/google/android/gms/internal/du;
    .registers 12

    #@0
    const-string v0, "Starting ad request from service."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    invoke-interface {p2}, Lcom/google/android/gms/internal/bi;->init()V

    #@8
    new-instance v0, Lcom/google/android/gms/internal/ec;

    #@a
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ec;-><init>(Landroid/content/Context;)V

    #@d
    iget v1, v0, Lcom/google/android/gms/internal/ec;->rm:I

    #@f
    const/4 v2, -0x1

    #@10
    if-ne v1, v2, :cond_1e

    #@12
    const-string v0, "Device is offline."

    #@14
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@17
    new-instance v0, Lcom/google/android/gms/internal/du;

    #@19
    const/4 v1, 0x2

    #@1a
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/du;-><init>(I)V

    #@1d
    :goto_1d
    return-object v0

    #@1e
    :cond_1e
    new-instance v3, Lcom/google/android/gms/internal/dz;

    #@20
    iget-object v1, p4, Lcom/google/android/gms/internal/ds;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@22
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@24
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/dz;-><init>(Ljava/lang/String;)V

    #@27
    iget-object v1, p4, Lcom/google/android/gms/internal/ds;->pX:Lcom/google/android/gms/internal/ai;

    #@29
    iget-object v1, v1, Lcom/google/android/gms/internal/ai;->extras:Landroid/os/Bundle;

    #@2b
    if-eqz v1, :cond_3e

    #@2d
    iget-object v1, p4, Lcom/google/android/gms/internal/ds;->pX:Lcom/google/android/gms/internal/ai;

    #@2f
    iget-object v1, v1, Lcom/google/android/gms/internal/ai;->extras:Landroid/os/Bundle;

    #@31
    const-string v2, "_ad"

    #@33
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    if-eqz v1, :cond_3e

    #@39
    invoke-static {p0, p4, v1}, Lcom/google/android/gms/internal/dy;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Ljava/lang/String;)Lcom/google/android/gms/internal/du;

    #@3c
    move-result-object v0

    #@3d
    goto :goto_1d

    #@3e
    :cond_3e
    const-wide/16 v4, 0xfa

    #@40
    invoke-interface {p2, v4, v5}, Lcom/google/android/gms/internal/bi;->a(J)Landroid/location/Location;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ay;->aN()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ay;->aO()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-static {p4, v0, v1, v2}, Lcom/google/android/gms/internal/dy;->a(Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/ec;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    if-nez v0, :cond_59

    #@52
    new-instance v0, Lcom/google/android/gms/internal/du;

    #@54
    const/4 v1, 0x0

    #@55
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/du;-><init>(I)V

    #@58
    goto :goto_1d

    #@59
    :cond_59
    invoke-static {v0}, Lcom/google/android/gms/internal/dx;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ey$a;

    #@5c
    move-result-object v4

    #@5d
    sget-object v6, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@5f
    new-instance v0, Lcom/google/android/gms/internal/dx$1;

    #@61
    move-object v1, p0

    #@62
    move-object v2, p4

    #@63
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/dx$1;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/internal/ey$a;Ljava/lang/String;)V

    #@66
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@69
    invoke-virtual {v3}, Lcom/google/android/gms/internal/dz;->bx()Lcom/google/android/gms/internal/eb;

    #@6c
    move-result-object v1

    #@6d
    if-eqz v1, :cond_79

    #@6f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/eb;->getUrl()Ljava/lang/String;

    #@72
    move-result-object v0

    #@73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@76
    move-result v0

    #@77
    if-eqz v0, :cond_83

    #@79
    :cond_79
    new-instance v0, Lcom/google/android/gms/internal/du;

    #@7b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/dz;->getErrorCode()I

    #@7e
    move-result v1

    #@7f
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/du;-><init>(I)V

    #@82
    goto :goto_1d

    #@83
    :cond_83
    const/4 v0, 0x0

    #@84
    invoke-virtual {v1}, Lcom/google/android/gms/internal/eb;->bA()Z

    #@87
    move-result v2

    #@88
    if-eqz v2, :cond_92

    #@8a
    iget-object v0, p4, Lcom/google/android/gms/internal/ds;->pY:Landroid/content/pm/PackageInfo;

    #@8c
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@8e
    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/ed;->u(Ljava/lang/String;)Ljava/lang/String;

    #@91
    move-result-object v0

    #@92
    :cond_92
    iget-object v2, p4, Lcom/google/android/gms/internal/ds;->kQ:Lcom/google/android/gms/internal/ev;

    #@94
    iget-object v2, v2, Lcom/google/android/gms/internal/ev;->sw:Ljava/lang/String;

    #@96
    invoke-virtual {v1}, Lcom/google/android/gms/internal/eb;->getUrl()Ljava/lang/String;

    #@99
    move-result-object v3

    #@9a
    invoke-static {p0, v2, v3, v0, v1}, Lcom/google/android/gms/internal/dx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/eb;)Lcom/google/android/gms/internal/du;

    #@9d
    move-result-object v0

    #@9e
    goto/16 :goto_1d
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/eb;)Lcom/google/android/gms/internal/du;
    .registers 15

    #@0
    const/16 v9, 0x12c

    #@2
    const/4 v0, 0x0

    #@3
    :try_start_3
    new-instance v3, Lcom/google/android/gms/internal/ea;

    #@5
    invoke-direct {v3}, Lcom/google/android/gms/internal/ea;-><init>()V

    #@8
    new-instance v1, Ljava/net/URL;

    #@a
    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@10
    move-result-wide v4

    #@11
    move-object v2, v1

    #@12
    move v1, v0

    #@13
    :goto_13
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_19} :catch_ee

    #@19
    const/4 v6, 0x0

    #@1a
    :try_start_1a
    invoke-static {p0, p1, v6, v0}, Lcom/google/android/gms/internal/eo;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    #@1d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@20
    move-result v6

    #@21
    if-nez v6, :cond_28

    #@23
    const-string v6, "x-afma-drt-cookie"

    #@25
    invoke-virtual {v0, v6, p3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@28
    :cond_28
    if-eqz p4, :cond_53

    #@2a
    invoke-virtual {p4}, Lcom/google/android/gms/internal/eb;->bz()Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@31
    move-result v6

    #@32
    if-nez v6, :cond_53

    #@34
    const/4 v6, 0x1

    #@35
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    #@38
    invoke-virtual {p4}, Lcom/google/android/gms/internal/eb;->bz()Ljava/lang/String;

    #@3b
    move-result-object v6

    #@3c
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    #@3f
    move-result-object v6

    #@40
    array-length v7, v6

    #@41
    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    #@44
    new-instance v7, Ljava/io/BufferedOutputStream;

    #@46
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    #@49
    move-result-object v8

    #@4a
    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@4d
    invoke-virtual {v7, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    #@50
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    #@53
    :cond_53
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@56
    move-result v6

    #@57
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    #@5a
    move-result-object v7

    #@5b
    const/16 v8, 0xc8

    #@5d
    if-lt v6, v8, :cond_81

    #@5f
    if-ge v6, v9, :cond_81

    #@61
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    new-instance v2, Ljava/io/InputStreamReader;

    #@67
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    #@6a
    move-result-object v8

    #@6b
    invoke-direct {v2, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@6e
    invoke-static {v2}, Lcom/google/android/gms/internal/eo;->a(Ljava/lang/Readable;)Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    invoke-static {v1, v7, v2, v6}, Lcom/google/android/gms/internal/dx;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    #@75
    invoke-virtual {v3, v1, v7, v2}, Lcom/google/android/gms/internal/ea;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    #@78
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ea;->i(J)Lcom/google/android/gms/internal/du;
    :try_end_7b
    .catchall {:try_start_1a .. :try_end_7b} :catchall_111

    #@7b
    move-result-object v1

    #@7c
    :try_start_7c
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_ee

    #@7f
    move-object v0, v1

    #@80
    :goto_80
    return-object v0

    #@81
    :cond_81
    :try_start_81
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@84
    move-result-object v2

    #@85
    const/4 v8, 0x0

    #@86
    invoke-static {v2, v7, v8, v6}, Lcom/google/android/gms/internal/dx;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    #@89
    if-lt v6, v9, :cond_c5

    #@8b
    const/16 v2, 0x190

    #@8d
    if-ge v6, v2, :cond_c5

    #@8f
    const-string v2, "Location"

    #@91
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@94
    move-result-object v6

    #@95
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@98
    move-result v2

    #@99
    if-eqz v2, :cond_ab

    #@9b
    const-string v1, "No location header to follow redirect."

    #@9d
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@a0
    new-instance v1, Lcom/google/android/gms/internal/du;

    #@a2
    const/4 v2, 0x0

    #@a3
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/du;-><init>(I)V
    :try_end_a6
    .catchall {:try_start_81 .. :try_end_a6} :catchall_111

    #@a6
    :try_start_a6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_ee

    #@a9
    move-object v0, v1

    #@aa
    goto :goto_80

    #@ab
    :cond_ab
    :try_start_ab
    new-instance v2, Ljava/net/URL;

    #@ad
    invoke-direct {v2, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@b0
    add-int/lit8 v1, v1, 0x1

    #@b2
    const/4 v6, 0x5

    #@b3
    if-le v1, v6, :cond_e6

    #@b5
    const-string v1, "Too many redirects."

    #@b7
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@ba
    new-instance v1, Lcom/google/android/gms/internal/du;

    #@bc
    const/4 v2, 0x0

    #@bd
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/du;-><init>(I)V
    :try_end_c0
    .catchall {:try_start_ab .. :try_end_c0} :catchall_111

    #@c0
    :try_start_c0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_ee

    #@c3
    move-object v0, v1

    #@c4
    goto :goto_80

    #@c5
    :cond_c5
    :try_start_c5
    new-instance v1, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    const-string v2, "Received error HTTP response code: "

    #@cc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v1

    #@d0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v1

    #@d4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v1

    #@d8
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@db
    new-instance v1, Lcom/google/android/gms/internal/du;

    #@dd
    const/4 v2, 0x0

    #@de
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/du;-><init>(I)V
    :try_end_e1
    .catchall {:try_start_c5 .. :try_end_e1} :catchall_111

    #@e1
    :try_start_e1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_ee

    #@e4
    move-object v0, v1

    #@e5
    goto :goto_80

    #@e6
    :cond_e6
    :try_start_e6
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ea;->d(Ljava/util/Map;)V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_111

    #@e9
    :try_start_e9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_ee

    #@ec
    goto/16 :goto_13

    #@ee
    :catch_ee
    move-exception v0

    #@ef
    new-instance v1, Ljava/lang/StringBuilder;

    #@f1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f4
    const-string v2, "Error while connecting to ad server: "

    #@f6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v1

    #@fa
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@fd
    move-result-object v0

    #@fe
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v0

    #@102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v0

    #@106
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@109
    new-instance v0, Lcom/google/android/gms/internal/du;

    #@10b
    const/4 v1, 0x2

    #@10c
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/du;-><init>(I)V

    #@10f
    goto/16 :goto_80

    #@111
    :catchall_111
    move-exception v1

    #@112
    :try_start_112
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    #@115
    throw v1
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_116} :catch_ee
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/bi;Lcom/google/android/gms/internal/ed;)Lcom/google/android/gms/internal/dx;
    .registers 7

    #@0
    sget-object v1, Lcom/google/android/gms/internal/dx;->qp:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/dx;->qq:Lcom/google/android/gms/internal/dx;

    #@5
    if-nez v0, :cond_12

    #@7
    new-instance v0, Lcom/google/android/gms/internal/dx;

    #@9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v0, v2, p1, p2, p3}, Lcom/google/android/gms/internal/dx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/bi;Lcom/google/android/gms/internal/ed;)V

    #@10
    sput-object v0, Lcom/google/android/gms/internal/dx;->qq:Lcom/google/android/gms/internal/dx;

    #@12
    :cond_12
    sget-object v0, Lcom/google/android/gms/internal/dx;->qq:Lcom/google/android/gms/internal/dx;

    #@14
    monitor-exit v1

    #@15
    return-object v0

    #@16
    :catchall_16
    move-exception v0

    #@17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    #@18
    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x2

    #@1
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->p(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_cc

    #@7
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string v1, "Http Response: {\n  URL:\n    "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string v1, "\n  Headers:"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@23
    if-eqz p1, :cond_82

    #@25
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@28
    move-result-object v0

    #@29
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v1

    #@2d
    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_82

    #@33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Ljava/lang/String;

    #@39
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string v3, "    "

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    const-string v3, ":"

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    invoke-static {v2}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@55
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    move-result-object v0

    #@59
    check-cast v0, Ljava/util/List;

    #@5b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5e
    move-result-object v2

    #@5f
    :goto_5f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@62
    move-result v0

    #@63
    if-eqz v0, :cond_2d

    #@65
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@68
    move-result-object v0

    #@69
    check-cast v0, Ljava/lang/String;

    #@6b
    new-instance v3, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string v4, "      "

    #@72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v3

    #@76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v0

    #@7e
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@81
    goto :goto_5f

    #@82
    :cond_82
    const-string v0, "  Body:"

    #@84
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@87
    if-eqz p2, :cond_ab

    #@89
    const/4 v0, 0x0

    #@8a
    :goto_8a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@8d
    move-result v1

    #@8e
    const v2, 0x186a0

    #@91
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@94
    move-result v1

    #@95
    if-ge v0, v1, :cond_b0

    #@97
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@9a
    move-result v1

    #@9b
    add-int/lit16 v2, v0, 0x3e8

    #@9d
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@a0
    move-result v1

    #@a1
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a4
    move-result-object v1

    #@a5
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@a8
    add-int/lit16 v0, v0, 0x3e8

    #@aa
    goto :goto_8a

    #@ab
    :cond_ab
    const-string v0, "    null"

    #@ad
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@b0
    :cond_b0
    new-instance v0, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string v1, "  Response Code:\n    "

    #@b7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v0

    #@bb
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@be
    move-result-object v0

    #@bf
    const-string v1, "\n}"

    #@c1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v0

    #@c5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v0

    #@c9
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@cc
    :cond_cc
    return-void
.end method

.method private static s(Ljava/lang/String;)Lcom/google/android/gms/internal/ey$a;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/internal/dx$2;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dx$2;-><init>(Ljava/lang/String;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public b(Lcom/google/android/gms/internal/ds;)Lcom/google/android/gms/internal/du;
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/dx;->mContext:Landroid/content/Context;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/internal/dx;->qt:Lcom/google/android/gms/internal/ay;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/internal/dx;->qs:Lcom/google/android/gms/internal/bi;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/internal/dx;->qr:Lcom/google/android/gms/internal/ed;

    #@8
    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/dx;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/bi;Lcom/google/android/gms/internal/ed;Lcom/google/android/gms/internal/ds;)Lcom/google/android/gms/internal/du;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method
