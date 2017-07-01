.class public final Lcom/android/dx/dex/DexFormat;
.super Ljava/lang/Object;


# static fields
.field public static final API_CURRENT:I = 0xe

.field public static final API_NO_EXTENDED_OPCODES:I = 0xd

.field public static final DEX_IN_JAR_NAME:Ljava/lang/String; = "classes.dex"

.field public static final ENDIAN_TAG:I = 0x12345678

.field public static final MAGIC_PREFIX:Ljava/lang/String; = "dex\n"

.field public static final MAGIC_SUFFIX:Ljava/lang/String; = "\u0000"

.field public static final VERSION_CURRENT:Ljava/lang/String; = "036"

.field public static final VERSION_FOR_API_13:Ljava/lang/String; = "035"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static apiToMagic(I)Ljava/lang/String;
    .registers 4

    #@0
    const/16 v0, 0xe

    #@2
    if-lt p0, v0, :cond_20

    #@4
    const-string v0, "036"

    #@6
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v2, "dex\n"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const-string v1, "\u0000"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0

    #@20
    :cond_20
    const-string v0, "035"

    #@22
    goto :goto_6
.end method

.method public static magicToApi([B)I
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    array-length v1, p0

    #@2
    const/16 v2, 0x8

    #@4
    if-eq v1, v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    const/4 v1, 0x0

    #@8
    aget-byte v1, p0, v1

    #@a
    const/16 v2, 0x64

    #@c
    if-ne v1, v2, :cond_6

    #@e
    const/4 v1, 0x1

    #@f
    aget-byte v1, p0, v1

    #@11
    const/16 v2, 0x65

    #@13
    if-ne v1, v2, :cond_6

    #@15
    const/4 v1, 0x2

    #@16
    aget-byte v1, p0, v1

    #@18
    const/16 v2, 0x78

    #@1a
    if-ne v1, v2, :cond_6

    #@1c
    const/4 v1, 0x3

    #@1d
    aget-byte v1, p0, v1

    #@1f
    const/16 v2, 0xa

    #@21
    if-ne v1, v2, :cond_6

    #@23
    const/4 v1, 0x7

    #@24
    aget-byte v1, p0, v1

    #@26
    if-nez v1, :cond_6

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string v2, ""

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    const/4 v2, 0x4

    #@34
    aget-byte v2, p0, v2

    #@36
    int-to-char v2, v2

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    const/4 v2, 0x5

    #@3c
    aget-byte v2, p0, v2

    #@3e
    int-to-char v2, v2

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    const/4 v2, 0x6

    #@44
    aget-byte v2, p0, v2

    #@46
    int-to-char v2, v2

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    const-string v2, "036"

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v2

    #@55
    if-eqz v2, :cond_5a

    #@57
    const/16 v0, 0xe

    #@59
    goto :goto_6

    #@5a
    :cond_5a
    const-string v2, "035"

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v1

    #@60
    if-eqz v1, :cond_6

    #@62
    const/16 v0, 0xd

    #@64
    goto :goto_6
.end method
