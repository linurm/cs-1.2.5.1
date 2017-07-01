.class public Lcom/dd/plist/NSDate;
.super Lcom/dd/plist/NSObject;


# static fields
.field private static final EPOCH:J = 0xe3c7a73400L

.field private static final sdfDefault:Ljava/text/SimpleDateFormat;

.field private static final sdfGnuStep:Ljava/text/SimpleDateFormat;


# instance fields
.field private date:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@2
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    #@4
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@7
    sput-object v0, Lcom/dd/plist/NSDate;->sdfDefault:Ljava/text/SimpleDateFormat;

    #@9
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@b
    const-string v1, "yyyy-MM-dd HH:mm:ss Z"

    #@d
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@10
    sput-object v0, Lcom/dd/plist/NSDate;->sdfGnuStep:Ljava/text/SimpleDateFormat;

    #@12
    sget-object v0, Lcom/dd/plist/NSDate;->sdfDefault:Ljava/text/SimpleDateFormat;

    #@14
    const-string v1, "GMT"

    #@16
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@1d
    sget-object v0, Lcom/dd/plist/NSDate;->sdfGnuStep:Ljava/text/SimpleDateFormat;

    #@1f
    const-string v1, "GMT"

    #@21
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    #@3
    invoke-static {p1}, Lcom/dd/plist/NSDate;->parseDateString(Ljava/lang/String;)Ljava/util/Date;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/dd/plist/NSDate;->date:Ljava/util/Date;

    #@9
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .registers 4

    #@0
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string v1, "Date cannot be null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    iput-object p1, p0, Lcom/dd/plist/NSDate;->date:Ljava/util/Date;

    #@f
    return-void
.end method

.method public constructor <init>([B)V
    .registers 10

    #@0
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    #@3
    new-instance v0, Ljava/util/Date;

    #@5
    const-wide v2, 0xe3c7a73400L

    #@a
    const-wide v4, 0x408f400000000000L    # 1000.0

    #@f
    invoke-static {p1}, Lcom/dd/plist/BinaryPropertyListParser;->parseDouble([B)D

    #@12
    move-result-wide v6

    #@13
    mul-double/2addr v4, v6

    #@14
    double-to-long v4, v4

    #@15
    add-long/2addr v2, v4

    #@16
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@19
    iput-object v0, p0, Lcom/dd/plist/NSDate;->date:Ljava/util/Date;

    #@1b
    return-void
.end method

.method private static makeDateString(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    #@0
    const-class v0, Lcom/dd/plist/NSDate;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/dd/plist/NSDate;->sdfDefault:Ljava/text/SimpleDateFormat;

    #@5
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    #@8
    move-result-object v0

    #@9
    const-class v1, Lcom/dd/plist/NSDate;

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    :catchall_d
    move-exception v0

    #@e
    const-class v1, Lcom/dd/plist/NSDate;

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method private static makeDateStringGnuStep(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    #@0
    const-class v0, Lcom/dd/plist/NSDate;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/dd/plist/NSDate;->sdfGnuStep:Ljava/text/SimpleDateFormat;

    #@5
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    #@8
    move-result-object v0

    #@9
    const-class v1, Lcom/dd/plist/NSDate;

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    :catchall_d
    move-exception v0

    #@e
    const-class v1, Lcom/dd/plist/NSDate;

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method private static parseDateString(Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    const-class v0, Lcom/dd/plist/NSDate;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/dd/plist/NSDate;->sdfDefault:Ljava/text/SimpleDateFormat;

    #@5
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_8} :catch_d
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    #@8
    move-result-object v0

    #@9
    :goto_9
    const-class v1, Lcom/dd/plist/NSDate;

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    :catch_d
    move-exception v0

    #@e
    :try_start_e
    sget-object v0, Lcom/dd/plist/NSDate;->sdfGnuStep:Ljava/text/SimpleDateFormat;

    #@10
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_15

    #@13
    move-result-object v0

    #@14
    goto :goto_9

    #@15
    :catchall_15
    move-exception v0

    #@16
    const-class v1, Lcom/dd/plist/NSDate;

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1e

    #@e
    iget-object v0, p0, Lcom/dd/plist/NSDate;->date:Ljava/util/Date;

    #@10
    check-cast p1, Lcom/dd/plist/NSDate;

    #@12
    invoke-virtual {p1}, Lcom/dd/plist/NSDate;->getDate()Ljava/util/Date;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1e

    #@1c
    const/4 v0, 0x1

    #@1d
    :goto_1d
    return v0

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    goto :goto_1d
.end method

.method public getDate()Ljava/util/Date;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSDate;->date:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSDate;->date:Ljava/util/Date;

    #@2
    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected toASCII(Ljava/lang/StringBuilder;I)V
    .registers 4

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSDate;->indent(Ljava/lang/StringBuilder;I)V

    #@3
    const-string v0, "\""

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    iget-object v0, p0, Lcom/dd/plist/NSDate;->date:Ljava/util/Date;

    #@a
    invoke-static {v0}, Lcom/dd/plist/NSDate;->makeDateString(Ljava/util/Date;)Ljava/lang/String;

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

.method protected toASCIIGnuStep(Ljava/lang/StringBuilder;I)V
    .registers 4

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSDate;->indent(Ljava/lang/StringBuilder;I)V

    #@3
    const-string v0, "<*D"

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    iget-object v0, p0, Lcom/dd/plist/NSDate;->date:Ljava/util/Date;

    #@a
    invoke-static {v0}, Lcom/dd/plist/NSDate;->makeDateStringGnuStep(Ljava/util/Date;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    const-string v0, ">"

    #@13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    return-void
.end method

.method public toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/16 v0, 0x33

    #@2
    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    #@5
    iget-object v0, p0, Lcom/dd/plist/NSDate;->date:Ljava/util/Date;

    #@7
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    #@a
    move-result-wide v0

    #@b
    const-wide v2, 0xe3c7a73400L

    #@10
    sub-long/2addr v0, v2

    #@11
    long-to-double v0, v0

    #@12
    const-wide v2, 0x408f400000000000L    # 1000.0

    #@17
    div-double/2addr v0, v2

    #@18
    invoke-virtual {p1, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeDouble(D)V

    #@1b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSDate;->date:Ljava/util/Date;

    #@2
    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method toXML(Ljava/lang/StringBuilder;I)V
    .registers 4

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSDate;->indent(Ljava/lang/StringBuilder;I)V

    #@3
    const-string v0, "<date>"

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    iget-object v0, p0, Lcom/dd/plist/NSDate;->date:Ljava/util/Date;

    #@a
    invoke-static {v0}, Lcom/dd/plist/NSDate;->makeDateString(Ljava/util/Date;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    const-string v0, "</date>"

    #@13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    return-void
.end method
