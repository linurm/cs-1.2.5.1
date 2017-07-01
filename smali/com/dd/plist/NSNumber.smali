.class public Lcom/dd/plist/NSNumber;
.super Lcom/dd/plist/NSObject;


# static fields
.field public static final BOOLEAN:I = 0x2

.field public static final INTEGER:I = 0x0

.field public static final REAL:I = 0x1


# instance fields
.field private boolValue:Z

.field private doubleValue:D

.field private longValue:J

.field private type:I


# direct methods
.method public constructor <init>(D)V
    .registers 6

    #@0
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    #@3
    iput-wide p1, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    #@5
    double-to-long v0, p1

    #@6
    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    #@8
    const/4 v0, 0x1

    #@9
    iput v0, p0, Lcom/dd/plist/NSNumber;->type:I

    #@b
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    #@0
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    #@3
    int-to-long v0, p1

    #@4
    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    #@6
    long-to-double v0, v0

    #@7
    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    #@9
    const/4 v0, 0x0

    #@a
    iput v0, p0, Lcom/dd/plist/NSNumber;->type:I

    #@c
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    #@0
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    #@3
    :try_start_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    #@9
    long-to-double v0, v0

    #@a
    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    #@c
    const/4 v0, 0x0

    #@d
    iput v0, p0, Lcom/dd/plist/NSNumber;->type:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    #@f
    :goto_f
    return-void

    #@10
    :catch_10
    move-exception v0

    #@11
    :try_start_11
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@14
    move-result-wide v0

    #@15
    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    #@17
    double-to-long v0, v0

    #@18
    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    #@1a
    const/4 v0, 0x1

    #@1b
    iput v0, p0, Lcom/dd/plist/NSNumber;->type:I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1d} :catch_1e

    #@1d
    goto :goto_f

    #@1e
    :catch_1e
    move-exception v0

    #@1f
    :try_start_1f
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@22
    move-result v0

    #@23
    iput-boolean v0, p0, Lcom/dd/plist/NSNumber;->boolValue:Z

    #@25
    const/4 v0, 0x2

    #@26
    iput v0, p0, Lcom/dd/plist/NSNumber;->type:I

    #@28
    iget-boolean v0, p0, Lcom/dd/plist/NSNumber;->boolValue:Z

    #@2a
    if-eqz v0, :cond_3d

    #@2c
    const-wide/16 v0, 0x1

    #@2e
    :goto_2e
    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    #@30
    long-to-double v0, v0

    #@31
    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_33} :catch_34

    #@33
    goto :goto_f

    #@34
    :catch_34
    move-exception v0

    #@35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@37
    const-string v1, "Given text neither represents a double, int nor boolean value."

    #@39
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0

    #@3d
    :cond_3d
    const-wide/16 v0, 0x0

    #@3f
    goto :goto_2e
.end method

.method public constructor <init>(Z)V
    .registers 4

    #@0
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    #@3
    iput-boolean p1, p0, Lcom/dd/plist/NSNumber;->boolValue:Z

    #@5
    if-eqz p1, :cond_12

    #@7
    const-wide/16 v0, 0x1

    #@9
    :goto_9
    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    #@b
    long-to-double v0, v0

    #@c
    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    #@e
    const/4 v0, 0x2

    #@f
    iput v0, p0, Lcom/dd/plist/NSNumber;->type:I

    #@11
    return-void

    #@12
    :cond_12
    const-wide/16 v0, 0x0

    #@14
    goto :goto_9
.end method

.method public constructor <init>([BI)V
    .registers 5

    #@0
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    #@3
    packed-switch p2, :pswitch_data_26

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string v1, "Type argument is not valid."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :pswitch_e
    invoke-static {p1}, Lcom/dd/plist/BinaryPropertyListParser;->parseLong([B)J

    #@11
    move-result-wide v0

    #@12
    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    #@14
    long-to-double v0, v0

    #@15
    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    #@17
    :goto_17
    iput p2, p0, Lcom/dd/plist/NSNumber;->type:I

    #@19
    return-void

    #@1a
    :pswitch_1a
    invoke-static {p1}, Lcom/dd/plist/BinaryPropertyListParser;->parseDouble([B)D

    #@1d
    move-result-wide v0

    #@1e
    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    #@20
    iget-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    #@22
    double-to-long v0, v0

    #@23
    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    #@25
    goto :goto_17

    #@26
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_e
        :pswitch_1a
    .end packed-switch
.end method


# virtual methods
.method public boolValue()Z
    .registers 5

    #@0
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_8

    #@5
    iget-boolean v0, p0, Lcom/dd/plist/NSNumber;->boolValue:Z

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    iget-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    #@a
    const-wide/16 v2, 0x0

    #@c
    cmp-long v0, v0, v2

    #@e
    if-eqz v0, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    goto :goto_7

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    goto :goto_7
.end method

.method public doubleValue()D
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    #@2
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    instance-of v1, p1, Lcom/dd/plist/NSNumber;

    #@3
    if-nez v1, :cond_6

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    check-cast p1, Lcom/dd/plist/NSNumber;

    #@8
    iget v1, p0, Lcom/dd/plist/NSNumber;->type:I

    #@a
    iget v2, p1, Lcom/dd/plist/NSNumber;->type:I

    #@c
    if-ne v1, v2, :cond_5

    #@e
    iget-wide v2, p0, Lcom/dd/plist/NSNumber;->longValue:J

    #@10
    iget-wide v4, p1, Lcom/dd/plist/NSNumber;->longValue:J

    #@12
    cmp-long v1, v2, v4

    #@14
    if-nez v1, :cond_5

    #@16
    iget-wide v2, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    #@18
    iget-wide v4, p1, Lcom/dd/plist/NSNumber;->doubleValue:D

    #@1a
    cmpl-double v1, v2, v4

    #@1c
    if-nez v1, :cond_5

    #@1e
    iget-boolean v1, p0, Lcom/dd/plist/NSNumber;->boolValue:Z

    #@20
    iget-boolean v2, p1, Lcom/dd/plist/NSNumber;->boolValue:Z

    #@22
    if-ne v1, v2, :cond_5

    #@24
    const/4 v0, 0x1

    #@25
    goto :goto_5
.end method

.method public floatValue()F
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    #@2
    double-to-float v0, v0

    #@3
    return v0
.end method

.method public hashCode()I
    .registers 9

    #@0
    const/16 v0, 0x20

    #@2
    iget v1, p0, Lcom/dd/plist/NSNumber;->type:I

    #@4
    iget-wide v2, p0, Lcom/dd/plist/NSNumber;->longValue:J

    #@6
    iget-wide v4, p0, Lcom/dd/plist/NSNumber;->longValue:J

    #@8
    ushr-long/2addr v4, v0

    #@9
    xor-long/2addr v2, v4

    #@a
    long-to-int v2, v2

    #@b
    iget-wide v4, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    #@d
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@10
    move-result-wide v4

    #@11
    iget-wide v6, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    #@13
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@16
    move-result-wide v6

    #@17
    ushr-long/2addr v6, v0

    #@18
    xor-long/2addr v4, v6

    #@19
    long-to-int v3, v4

    #@1a
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->boolValue()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2b

    #@20
    const/4 v0, 0x1

    #@21
    :goto_21
    mul-int/lit8 v1, v1, 0x25

    #@23
    add-int/2addr v1, v2

    #@24
    mul-int/lit8 v1, v1, 0x25

    #@26
    add-int/2addr v1, v3

    #@27
    mul-int/lit8 v1, v1, 0x25

    #@29
    add-int/2addr v0, v1

    #@2a
    return v0

    #@2b
    :cond_2b
    const/4 v0, 0x0

    #@2c
    goto :goto_21
.end method

.method public intValue()I
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    #@2
    long-to-int v0, v0

    #@3
    return v0
.end method

.method public isBoolean()Z
    .registers 3

    #@0
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_7

    #@5
    const/4 v0, 0x1

    #@6
    :goto_6
    return v0

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    goto :goto_6
.end method

.method public isInteger()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public isReal()Z
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    iget v1, p0, Lcom/dd/plist/NSNumber;->type:I

    #@3
    if-ne v1, v0, :cond_6

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public longValue()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    #@2
    return-wide v0
.end method

.method protected toASCII(Ljava/lang/StringBuilder;I)V
    .registers 5

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSNumber;->indent(Ljava/lang/StringBuilder;I)V

    #@3
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    #@5
    const/4 v1, 0x2

    #@6
    if-ne v0, v1, :cond_15

    #@8
    iget-boolean v0, p0, Lcom/dd/plist/NSNumber;->boolValue:Z

    #@a
    if-eqz v0, :cond_12

    #@c
    const-string v0, "YES"

    #@e
    :goto_e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    :goto_11
    return-void

    #@12
    :cond_12
    const-string v0, "NO"

    #@14
    goto :goto_e

    #@15
    :cond_15
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    goto :goto_11
.end method

.method protected toASCIIGnuStep(Ljava/lang/StringBuilder;I)V
    .registers 4

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSNumber;->indent(Ljava/lang/StringBuilder;I)V

    #@3
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    #@5
    packed-switch v0, :pswitch_data_3e

    #@8
    :goto_8
    return-void

    #@9
    :pswitch_9
    const-string v0, "<*I"

    #@b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->toString()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    const-string v0, ">"

    #@17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    goto :goto_8

    #@1b
    :pswitch_1b
    const-string v0, "<*R"

    #@1d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    const-string v0, ">"

    #@29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    goto :goto_8

    #@2d
    :pswitch_2d
    iget-boolean v0, p0, Lcom/dd/plist/NSNumber;->boolValue:Z

    #@2f
    if-eqz v0, :cond_37

    #@31
    const-string v0, "<*BY>"

    #@33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    goto :goto_8

    #@37
    :cond_37
    const-string v0, "<*BN>"

    #@39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    goto :goto_8

    #@3d
    nop

    #@3e
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1b
        :pswitch_2d
    .end packed-switch
.end method

.method toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/16 v6, 0x13

    #@2
    const/16 v0, 0x8

    #@4
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->type()I

    #@7
    move-result v1

    #@8
    packed-switch v1, :pswitch_data_92

    #@b
    :goto_b
    return-void

    #@c
    :pswitch_c
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    #@f
    move-result-wide v2

    #@10
    const-wide/16 v4, 0x0

    #@12
    cmp-long v1, v2, v4

    #@14
    if-gez v1, :cond_21

    #@16
    invoke-virtual {p1, v6}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    #@19
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    #@1c
    move-result-wide v2

    #@1d
    invoke-virtual {p1, v2, v3, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    #@20
    goto :goto_b

    #@21
    :cond_21
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    #@24
    move-result-wide v2

    #@25
    const-wide/16 v4, 0xff

    #@27
    cmp-long v1, v2, v4

    #@29
    if-gtz v1, :cond_39

    #@2b
    const/16 v0, 0x10

    #@2d
    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    #@30
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    #@33
    move-result-wide v0

    #@34
    const/4 v2, 0x1

    #@35
    invoke-virtual {p1, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    #@38
    goto :goto_b

    #@39
    :cond_39
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    #@3c
    move-result-wide v2

    #@3d
    const-wide/32 v4, 0xffff

    #@40
    cmp-long v1, v2, v4

    #@42
    if-gtz v1, :cond_52

    #@44
    const/16 v0, 0x11

    #@46
    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    #@49
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    #@4c
    move-result-wide v0

    #@4d
    const/4 v2, 0x2

    #@4e
    invoke-virtual {p1, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    #@51
    goto :goto_b

    #@52
    :cond_52
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    #@55
    move-result-wide v2

    #@56
    const-wide v4, 0xffffffffL

    #@5b
    cmp-long v1, v2, v4

    #@5d
    if-gtz v1, :cond_6d

    #@5f
    const/16 v0, 0x12

    #@61
    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    #@64
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    #@67
    move-result-wide v0

    #@68
    const/4 v2, 0x4

    #@69
    invoke-virtual {p1, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    #@6c
    goto :goto_b

    #@6d
    :cond_6d
    invoke-virtual {p1, v6}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    #@70
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    #@73
    move-result-wide v2

    #@74
    invoke-virtual {p1, v2, v3, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    #@77
    goto :goto_b

    #@78
    :pswitch_78
    const/16 v0, 0x23

    #@7a
    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    #@7d
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->doubleValue()D

    #@80
    move-result-wide v0

    #@81
    invoke-virtual {p1, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeDouble(D)V

    #@84
    goto :goto_b

    #@85
    :pswitch_85
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->boolValue()Z

    #@88
    move-result v1

    #@89
    if-eqz v1, :cond_8d

    #@8b
    const/16 v0, 0x9

    #@8d
    :cond_8d
    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    #@90
    goto/16 :goto_b

    #@92
    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_c
        :pswitch_78
        :pswitch_85
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    #@2
    packed-switch v0, :pswitch_data_26

    #@5
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    :goto_9
    return-object v0

    #@a
    :pswitch_a
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    #@d
    move-result-wide v0

    #@e
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    goto :goto_9

    #@13
    :pswitch_13
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->doubleValue()D

    #@16
    move-result-wide v0

    #@17
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    goto :goto_9

    #@1c
    :pswitch_1c
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->boolValue()Z

    #@1f
    move-result v0

    #@20
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    goto :goto_9

    #@25
    nop

    #@26
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_a
        :pswitch_13
        :pswitch_1c
    .end packed-switch
.end method

.method toXML(Ljava/lang/StringBuilder;I)V
    .registers 5

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSNumber;->indent(Ljava/lang/StringBuilder;I)V

    #@3
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    #@5
    packed-switch v0, :pswitch_data_40

    #@8
    :goto_8
    return-void

    #@9
    :pswitch_9
    const-string v0, "<integer>"

    #@b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    #@11
    move-result-wide v0

    #@12
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@15
    const-string v0, "</integer>"

    #@17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    goto :goto_8

    #@1b
    :pswitch_1b
    const-string v0, "<real>"

    #@1d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->doubleValue()D

    #@23
    move-result-wide v0

    #@24
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@27
    const-string v0, "</real>"

    #@29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    goto :goto_8

    #@2d
    :pswitch_2d
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->boolValue()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_39

    #@33
    const-string v0, "<true/>"

    #@35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    goto :goto_8

    #@39
    :cond_39
    const-string v0, "<false/>"

    #@3b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    goto :goto_8

    #@3f
    nop

    #@40
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1b
        :pswitch_2d
    .end packed-switch
.end method

.method public type()I
    .registers 2

    #@0
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    #@2
    return v0
.end method
