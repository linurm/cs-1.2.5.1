.class public Lcom/dd/plist/Base64;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dd/plist/Base64$InputStream;,
        Lcom/dd/plist/Base64$OutputStream;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DECODE:I = 0x0

.field public static final DONT_GUNZIP:I = 0x4

.field public static final DO_BREAK_LINES:I = 0x8

.field public static final ENCODE:I = 0x1

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field public static final GZIP:I = 0x2

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NEW_LINE:B = 0xat

.field public static final NO_OPTIONS:I = 0x0

.field public static final ORDERED:I = 0x20

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "US-ASCII"

.field public static final URL_SAFE:I = 0x10

.field private static final WHITE_SPACE_ENC:B = -0x5t

.field private static final _ORDERED_ALPHABET:[B

.field private static final _ORDERED_DECODABET:[B

.field private static final _STANDARD_ALPHABET:[B

.field private static final _STANDARD_DECODABET:[B

.field private static final _URL_SAFE_ALPHABET:[B

.field private static final _URL_SAFE_DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/16 v2, 0x100

    #@2
    const/16 v1, 0x40

    #@4
    const-class v0, Lcom/dd/plist/Base64;

    #@6
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_3c

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    sput-boolean v0, Lcom/dd/plist/Base64;->$assertionsDisabled:Z

    #@f
    new-array v0, v1, [B

    #@11
    fill-array-data v0, :array_3e

    #@14
    sput-object v0, Lcom/dd/plist/Base64;->_STANDARD_ALPHABET:[B

    #@16
    new-array v0, v2, [B

    #@18
    fill-array-data v0, :array_62

    #@1b
    sput-object v0, Lcom/dd/plist/Base64;->_STANDARD_DECODABET:[B

    #@1d
    new-array v0, v1, [B

    #@1f
    fill-array-data v0, :array_e6

    #@22
    sput-object v0, Lcom/dd/plist/Base64;->_URL_SAFE_ALPHABET:[B

    #@24
    new-array v0, v2, [B

    #@26
    fill-array-data v0, :array_10a

    #@29
    sput-object v0, Lcom/dd/plist/Base64;->_URL_SAFE_DECODABET:[B

    #@2b
    new-array v0, v1, [B

    #@2d
    fill-array-data v0, :array_18e

    #@30
    sput-object v0, Lcom/dd/plist/Base64;->_ORDERED_ALPHABET:[B

    #@32
    const/16 v0, 0x101

    #@34
    new-array v0, v0, [B

    #@36
    fill-array-data v0, :array_1b2

    #@39
    sput-object v0, Lcom/dd/plist/Base64;->_ORDERED_DECODABET:[B

    #@3b
    return-void

    #@3c
    :cond_3c
    const/4 v0, 0x0

    #@3d
    goto :goto_d

    #@3e
    :array_3e
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    #@62
    :array_62
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    #@e6
    :array_e6
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    #@10a
    :array_10a
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    #@18e
    :array_18e
    .array-data 1
        0x2dt
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data

    #@1b2
    :array_1b2
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        -0x9t
        -0x9t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x25t
        -0x9t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x3et
        0x3ft
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000(I)[B
    .registers 2

    #@0
    invoke-static {p0}, Lcom/dd/plist/Base64;->getDecodabet(I)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic access$100([BII[BII)[B
    .registers 7

    #@0
    invoke-static/range {p0 .. p5}, Lcom/dd/plist/Base64;->encode3to4([BII[BII)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic access$200([BI[BII)I
    .registers 6

    #@0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/dd/plist/Base64;->decode4to3([BI[BII)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$300([B[BII)[B
    .registers 5

    #@0
    invoke-static {p0, p1, p2, p3}, Lcom/dd/plist/Base64;->encode3to4([B[BII)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lcom/dd/plist/Base64;->decode(Ljava/lang/String;I)[B

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static decode(Ljava/lang/String;I)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    if-nez p0, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "Input string was null."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    :try_start_d
    const-string v0, "US-ASCII"

    #@f
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_12} :catch_68

    #@12
    move-result-object v0

    #@13
    :goto_13
    array-length v1, v0

    #@14
    invoke-static {v0, v4, v1, p1}, Lcom/dd/plist/Base64;->decode([BIII)[B

    #@17
    move-result-object v0

    #@18
    and-int/lit8 v1, p1, 0x4

    #@1a
    if-eqz v1, :cond_6e

    #@1c
    move v1, v2

    #@1d
    :goto_1d
    if-eqz v0, :cond_67

    #@1f
    array-length v5, v0

    #@20
    const/4 v6, 0x4

    #@21
    if-lt v5, v6, :cond_67

    #@23
    if-nez v1, :cond_67

    #@25
    const v1, 0x8b1f

    #@28
    aget-byte v4, v0, v4

    #@2a
    and-int/lit16 v4, v4, 0xff

    #@2c
    aget-byte v2, v0, v2

    #@2e
    shl-int/lit8 v2, v2, 0x8

    #@30
    const v5, 0xff00

    #@33
    and-int/2addr v2, v5

    #@34
    or-int/2addr v2, v4

    #@35
    if-ne v1, v2, :cond_67

    #@37
    const/16 v1, 0x800

    #@39
    new-array v1, v1, [B

    #@3b
    :try_start_3b
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@3d
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_40} :catch_97
    .catchall {:try_start_3b .. :try_end_40} :catchall_80

    #@40
    :try_start_40
    new-instance v5, Ljava/io/ByteArrayInputStream;

    #@42
    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_45} :catch_9c
    .catchall {:try_start_40 .. :try_end_45} :catchall_8d

    #@45
    :try_start_45
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    #@47
    invoke-direct {v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4a} :catch_a2
    .catchall {:try_start_45 .. :try_end_4a} :catchall_b8

    #@4a
    :goto_4a
    :try_start_4a
    invoke-virtual {v4, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    #@4d
    move-result v3

    #@4e
    if-ltz v3, :cond_70

    #@50
    const/4 v6, 0x0

    #@51
    invoke-virtual {v2, v1, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_54} :catch_55
    .catchall {:try_start_4a .. :try_end_54} :catchall_90

    #@54
    goto :goto_4a

    #@55
    :catch_55
    move-exception v1

    #@56
    move-object v3, v4

    #@57
    move-object v4, v5

    #@58
    move-object v7, v1

    #@59
    move-object v1, v2

    #@5a
    move-object v2, v7

    #@5b
    :goto_5b
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_93

    #@5e
    :try_start_5e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_a8

    #@61
    :goto_61
    :try_start_61
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_aa

    #@64
    :goto_64
    :try_start_64
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_ac

    #@67
    :cond_67
    :goto_67
    return-object v0

    #@68
    :catch_68
    move-exception v0

    #@69
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@6c
    move-result-object v0

    #@6d
    goto :goto_13

    #@6e
    :cond_6e
    move v1, v4

    #@6f
    goto :goto_1d

    #@70
    :cond_70
    :try_start_70
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_55
    .catchall {:try_start_70 .. :try_end_73} :catchall_90

    #@73
    move-result-object v0

    #@74
    :try_start_74
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_ae

    #@77
    :goto_77
    :try_start_77
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_b0

    #@7a
    :goto_7a
    :try_start_7a
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_7e

    #@7d
    goto :goto_67

    #@7e
    :catch_7e
    move-exception v1

    #@7f
    goto :goto_67

    #@80
    :catchall_80
    move-exception v0

    #@81
    move-object v2, v3

    #@82
    move-object v5, v3

    #@83
    :goto_83
    :try_start_83
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_b2

    #@86
    :goto_86
    :try_start_86
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_b4

    #@89
    :goto_89
    :try_start_89
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_b6

    #@8c
    :goto_8c
    throw v0

    #@8d
    :catchall_8d
    move-exception v0

    #@8e
    move-object v5, v3

    #@8f
    goto :goto_83

    #@90
    :catchall_90
    move-exception v0

    #@91
    move-object v3, v4

    #@92
    goto :goto_83

    #@93
    :catchall_93
    move-exception v0

    #@94
    move-object v2, v1

    #@95
    move-object v5, v4

    #@96
    goto :goto_83

    #@97
    :catch_97
    move-exception v1

    #@98
    move-object v2, v1

    #@99
    move-object v4, v3

    #@9a
    move-object v1, v3

    #@9b
    goto :goto_5b

    #@9c
    :catch_9c
    move-exception v1

    #@9d
    move-object v4, v3

    #@9e
    move-object v7, v1

    #@9f
    move-object v1, v2

    #@a0
    move-object v2, v7

    #@a1
    goto :goto_5b

    #@a2
    :catch_a2
    move-exception v1

    #@a3
    move-object v4, v5

    #@a4
    move-object v7, v1

    #@a5
    move-object v1, v2

    #@a6
    move-object v2, v7

    #@a7
    goto :goto_5b

    #@a8
    :catch_a8
    move-exception v1

    #@a9
    goto :goto_61

    #@aa
    :catch_aa
    move-exception v1

    #@ab
    goto :goto_64

    #@ac
    :catch_ac
    move-exception v1

    #@ad
    goto :goto_67

    #@ae
    :catch_ae
    move-exception v1

    #@af
    goto :goto_77

    #@b0
    :catch_b0
    move-exception v1

    #@b1
    goto :goto_7a

    #@b2
    :catch_b2
    move-exception v1

    #@b3
    goto :goto_86

    #@b4
    :catch_b4
    move-exception v1

    #@b5
    goto :goto_89

    #@b6
    :catch_b6
    move-exception v1

    #@b7
    goto :goto_8c

    #@b8
    :catchall_b8
    move-exception v0

    #@b9
    goto :goto_83
.end method

.method public static decode([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    array-length v0, p0

    #@2
    invoke-static {p0, v1, v0, v1}, Lcom/dd/plist/Base64;->decode([BIII)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static decode([BIII)[B
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v3, 0x4

    #@1
    const/4 v11, 0x3

    #@2
    const/4 v10, 0x2

    #@3
    const/4 v9, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    if-nez p0, :cond_f

    #@7
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    const-string v1, "Cannot decode null source array."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    :cond_f
    if-ltz p1, :cond_16

    #@11
    add-int v0, p1, p2

    #@13
    array-length v1, p0

    #@14
    if-le v0, v1, :cond_37

    #@16
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string v1, "Source array with length %d cannot have offset of %d and process %d bytes."

    #@1a
    new-array v3, v11, [Ljava/lang/Object;

    #@1c
    array-length v4, p0

    #@1d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v4

    #@21
    aput-object v4, v3, v2

    #@23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v2

    #@27
    aput-object v2, v3, v9

    #@29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v2

    #@2d
    aput-object v2, v3, v10

    #@2f
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    :cond_37
    if-nez p2, :cond_3c

    #@39
    new-array v0, v2, [B

    #@3b
    :goto_3b
    return-object v0

    #@3c
    :cond_3c
    if-ge p2, v3, :cond_57

    #@3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@40
    new-instance v1, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string v2, "Base64-encoded string must have at least four characters, but length specified was "

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@56
    throw v0

    #@57
    :cond_57
    invoke-static {p3}, Lcom/dd/plist/Base64;->getDecodabet(I)[B

    #@5a
    move-result-object v5

    #@5b
    mul-int/lit8 v0, p2, 0x3

    #@5d
    div-int/lit8 v0, v0, 0x4

    #@5f
    new-array v6, v0, [B

    #@61
    new-array v7, v3, [B

    #@63
    move v4, p1

    #@64
    move v3, v2

    #@65
    move v0, v2

    #@66
    :goto_66
    add-int v1, p1, p2

    #@68
    if-ge v4, v1, :cond_b7

    #@6a
    aget-byte v1, p0, v4

    #@6c
    and-int/lit16 v1, v1, 0xff

    #@6e
    aget-byte v1, v5, v1

    #@70
    const/4 v8, -0x5

    #@71
    if-lt v1, v8, :cond_91

    #@73
    const/4 v8, -0x1

    #@74
    if-lt v1, v8, :cond_b5

    #@76
    add-int/lit8 v1, v3, 0x1

    #@78
    aget-byte v8, p0, v4

    #@7a
    int-to-byte v8, v8

    #@7b
    aput-byte v8, v7, v3

    #@7d
    if-le v1, v11, :cond_b0

    #@7f
    invoke-static {v7, v2, v6, v0, p3}, Lcom/dd/plist/Base64;->decode4to3([BI[BII)I

    #@82
    move-result v1

    #@83
    add-int/2addr v0, v1

    #@84
    aget-byte v1, p0, v4

    #@86
    const/16 v3, 0x3d

    #@88
    if-ne v1, v3, :cond_af

    #@8a
    move v1, v0

    #@8b
    :goto_8b
    new-array v0, v1, [B

    #@8d
    invoke-static {v6, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@90
    goto :goto_3b

    #@91
    :cond_91
    new-instance v0, Ljava/io/IOException;

    #@93
    const-string v1, "Bad Base64 input character decimal %d in array position %d"

    #@95
    new-array v3, v10, [Ljava/lang/Object;

    #@97
    aget-byte v5, p0, v4

    #@99
    and-int/lit16 v5, v5, 0xff

    #@9b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9e
    move-result-object v5

    #@9f
    aput-object v5, v3, v2

    #@a1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a4
    move-result-object v2

    #@a5
    aput-object v2, v3, v9

    #@a7
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@aa
    move-result-object v1

    #@ab
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@ae
    throw v0

    #@af
    :cond_af
    move v1, v2

    #@b0
    :cond_b0
    :goto_b0
    add-int/lit8 v3, v4, 0x1

    #@b2
    move v4, v3

    #@b3
    move v3, v1

    #@b4
    goto :goto_66

    #@b5
    :cond_b5
    move v1, v3

    #@b6
    goto :goto_b0

    #@b7
    :cond_b7
    move v1, v0

    #@b8
    goto :goto_8b
.end method

.method private static decode4to3([BI[BII)I
    .registers 11

    #@0
    const/16 v4, 0x3d

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v1, 0x2

    #@4
    const/4 v0, 0x1

    #@5
    if-nez p0, :cond_f

    #@7
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    const-string v1, "Source array was null."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    :cond_f
    if-nez p2, :cond_19

    #@11
    new-instance v0, Ljava/lang/NullPointerException;

    #@13
    const-string v1, "Destination array was null."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    :cond_19
    if-ltz p1, :cond_20

    #@1b
    add-int/lit8 v2, p1, 0x3

    #@1d
    array-length v3, p0

    #@1e
    if-lt v2, v3, :cond_3b

    #@20
    :cond_20
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@22
    const-string v3, "Source array with length %d cannot have offset of %d and still process four bytes."

    #@24
    new-array v1, v1, [Ljava/lang/Object;

    #@26
    array-length v4, p0

    #@27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v4

    #@2b
    aput-object v4, v1, v5

    #@2d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v4

    #@31
    aput-object v4, v1, v0

    #@33
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v2

    #@3b
    :cond_3b
    if-ltz p3, :cond_42

    #@3d
    add-int/lit8 v2, p3, 0x2

    #@3f
    array-length v3, p2

    #@40
    if-lt v2, v3, :cond_5d

    #@42
    :cond_42
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@44
    const-string v3, "Destination array with length %d cannot have offset of %d and still store three bytes."

    #@46
    new-array v1, v1, [Ljava/lang/Object;

    #@48
    array-length v4, p2

    #@49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v4

    #@4d
    aput-object v4, v1, v5

    #@4f
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@52
    move-result-object v4

    #@53
    aput-object v4, v1, v0

    #@55
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v2

    #@5d
    :cond_5d
    invoke-static {p4}, Lcom/dd/plist/Base64;->getDecodabet(I)[B

    #@60
    move-result-object v2

    #@61
    add-int/lit8 v3, p1, 0x2

    #@63
    aget-byte v3, p0, v3

    #@65
    if-ne v3, v4, :cond_81

    #@67
    aget-byte v1, p0, p1

    #@69
    aget-byte v1, v2, v1

    #@6b
    and-int/lit16 v1, v1, 0xff

    #@6d
    shl-int/lit8 v1, v1, 0x12

    #@6f
    add-int/lit8 v3, p1, 0x1

    #@71
    aget-byte v3, p0, v3

    #@73
    aget-byte v2, v2, v3

    #@75
    and-int/lit16 v2, v2, 0xff

    #@77
    shl-int/lit8 v2, v2, 0xc

    #@79
    or-int/2addr v1, v2

    #@7a
    ushr-int/lit8 v1, v1, 0x10

    #@7c
    int-to-byte v1, v1

    #@7d
    int-to-byte v1, v1

    #@7e
    aput-byte v1, p2, p3

    #@80
    :goto_80
    return v0

    #@81
    :cond_81
    add-int/lit8 v0, p1, 0x3

    #@83
    aget-byte v0, p0, v0

    #@85
    if-ne v0, v4, :cond_b5

    #@87
    aget-byte v0, p0, p1

    #@89
    aget-byte v0, v2, v0

    #@8b
    and-int/lit16 v0, v0, 0xff

    #@8d
    shl-int/lit8 v0, v0, 0x12

    #@8f
    add-int/lit8 v3, p1, 0x1

    #@91
    aget-byte v3, p0, v3

    #@93
    aget-byte v3, v2, v3

    #@95
    and-int/lit16 v3, v3, 0xff

    #@97
    shl-int/lit8 v3, v3, 0xc

    #@99
    or-int/2addr v0, v3

    #@9a
    add-int/lit8 v3, p1, 0x2

    #@9c
    aget-byte v3, p0, v3

    #@9e
    aget-byte v2, v2, v3

    #@a0
    and-int/lit16 v2, v2, 0xff

    #@a2
    shl-int/lit8 v2, v2, 0x6

    #@a4
    or-int/2addr v0, v2

    #@a5
    ushr-int/lit8 v2, v0, 0x10

    #@a7
    int-to-byte v2, v2

    #@a8
    int-to-byte v2, v2

    #@a9
    aput-byte v2, p2, p3

    #@ab
    add-int/lit8 v2, p3, 0x1

    #@ad
    ushr-int/lit8 v0, v0, 0x8

    #@af
    int-to-byte v0, v0

    #@b0
    int-to-byte v0, v0

    #@b1
    aput-byte v0, p2, v2

    #@b3
    move v0, v1

    #@b4
    goto :goto_80

    #@b5
    :cond_b5
    aget-byte v0, p0, p1

    #@b7
    aget-byte v0, v2, v0

    #@b9
    and-int/lit16 v0, v0, 0xff

    #@bb
    shl-int/lit8 v0, v0, 0x12

    #@bd
    add-int/lit8 v1, p1, 0x1

    #@bf
    aget-byte v1, p0, v1

    #@c1
    aget-byte v1, v2, v1

    #@c3
    and-int/lit16 v1, v1, 0xff

    #@c5
    shl-int/lit8 v1, v1, 0xc

    #@c7
    or-int/2addr v0, v1

    #@c8
    add-int/lit8 v1, p1, 0x2

    #@ca
    aget-byte v1, p0, v1

    #@cc
    aget-byte v1, v2, v1

    #@ce
    and-int/lit16 v1, v1, 0xff

    #@d0
    shl-int/lit8 v1, v1, 0x6

    #@d2
    or-int/2addr v0, v1

    #@d3
    add-int/lit8 v1, p1, 0x3

    #@d5
    aget-byte v1, p0, v1

    #@d7
    aget-byte v1, v2, v1

    #@d9
    and-int/lit16 v1, v1, 0xff

    #@db
    or-int/2addr v0, v1

    #@dc
    shr-int/lit8 v1, v0, 0x10

    #@de
    int-to-byte v1, v1

    #@df
    int-to-byte v1, v1

    #@e0
    aput-byte v1, p2, p3

    #@e2
    add-int/lit8 v1, p3, 0x1

    #@e4
    shr-int/lit8 v2, v0, 0x8

    #@e6
    int-to-byte v2, v2

    #@e7
    int-to-byte v2, v2

    #@e8
    aput-byte v2, p2, v1

    #@ea
    add-int/lit8 v1, p3, 0x2

    #@ec
    int-to-byte v0, v0

    #@ed
    int-to-byte v0, v0

    #@ee
    aput-byte v0, p2, v1

    #@f0
    const/4 v0, 0x3

    #@f1
    goto :goto_80
.end method

.method public static decodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {p0}, Lcom/dd/plist/Base64;->decodeFromFile(Ljava/lang/String;)[B

    #@4
    move-result-object v0

    #@5
    :try_start_5
    new-instance v1, Ljava/io/BufferedOutputStream;

    #@7
    new-instance v3, Ljava/io/FileOutputStream;

    #@9
    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@c
    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_16
    .catchall {:try_start_5 .. :try_end_f} :catchall_1e

    #@f
    :try_start_f
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_21
    .catchall {:try_start_f .. :try_end_12} :catchall_19

    #@12
    :try_start_12
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_23

    #@15
    :goto_15
    return-void

    #@16
    :catch_16
    move-exception v0

    #@17
    move-object v1, v2

    #@18
    :goto_18
    :try_start_18
    throw v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    #@19
    :catchall_19
    move-exception v0

    #@1a
    :goto_1a
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_25

    #@1d
    :goto_1d
    throw v0

    #@1e
    :catchall_1e
    move-exception v0

    #@1f
    move-object v1, v2

    #@20
    goto :goto_1a

    #@21
    :catch_21
    move-exception v0

    #@22
    goto :goto_18

    #@23
    :catch_23
    move-exception v0

    #@24
    goto :goto_15

    #@25
    :catch_25
    move-exception v1

    #@26
    goto :goto_1d
.end method

.method public static decodeFromFile(Ljava/lang/String;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    :try_start_2
    new-instance v0, Ljava/io/File;

    #@4
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0}, Ljava/io/File;->length()J

    #@a
    move-result-wide v4

    #@b
    const-wide/32 v6, 0x7fffffff

    #@e
    cmp-long v3, v4, v6

    #@10
    if-lez v3, :cond_45

    #@12
    new-instance v2, Ljava/io/IOException;

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string v4, "File is too big for this convenience method ("

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v0}, Ljava/io/File;->length()J

    #@22
    move-result-wide v4

    #@23
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    const-string v3, " bytes)."

    #@29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@34
    throw v2
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_35} :catch_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_7a

    #@35
    :catch_35
    move-exception v0

    #@36
    move-object v8, v1

    #@37
    move-object v1, v0

    #@38
    move-object v0, v8

    #@39
    :goto_39
    :try_start_39
    throw v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    #@3a
    :catchall_3a
    move-exception v1

    #@3b
    move-object v8, v1

    #@3c
    move-object v1, v0

    #@3d
    move-object v0, v8

    #@3e
    :goto_3e
    move-object v8, v1

    #@3f
    move-object v1, v0

    #@40
    move-object v0, v8

    #@41
    :goto_41
    :try_start_41
    invoke-virtual {v0}, Lcom/dd/plist/Base64$InputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_72

    #@44
    :goto_44
    throw v1

    #@45
    :cond_45
    :try_start_45
    invoke-virtual {v0}, Ljava/io/File;->length()J

    #@48
    move-result-wide v4

    #@49
    long-to-int v3, v4

    #@4a
    new-array v3, v3, [B

    #@4c
    new-instance v4, Ljava/io/BufferedInputStream;

    #@4e
    new-instance v5, Ljava/io/FileInputStream;

    #@50
    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@53
    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@56
    new-instance v0, Lcom/dd/plist/Base64$InputStream;

    #@58
    const/4 v5, 0x0

    #@59
    invoke-direct {v0, v4, v5}, Lcom/dd/plist/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_5c} :catch_35
    .catchall {:try_start_45 .. :try_end_5c} :catchall_7a

    #@5c
    move v1, v2

    #@5d
    :goto_5d
    const/16 v2, 0x1000

    #@5f
    :try_start_5f
    invoke-virtual {v0, v3, v1, v2}, Lcom/dd/plist/Base64$InputStream;->read([BII)I

    #@62
    move-result v2

    #@63
    if-ltz v2, :cond_67

    #@65
    add-int/2addr v1, v2

    #@66
    goto :goto_5d

    #@67
    :cond_67
    new-array v2, v1, [B

    #@69
    const/4 v4, 0x0

    #@6a
    const/4 v5, 0x0

    #@6b
    invoke-static {v3, v4, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_6e} :catch_76
    .catchall {:try_start_5f .. :try_end_6e} :catchall_78

    #@6e
    :try_start_6e
    invoke-virtual {v0}, Lcom/dd/plist/Base64$InputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_74

    #@71
    :goto_71
    return-object v2

    #@72
    :catch_72
    move-exception v0

    #@73
    goto :goto_44

    #@74
    :catch_74
    move-exception v0

    #@75
    goto :goto_71

    #@76
    :catch_76
    move-exception v1

    #@77
    goto :goto_39

    #@78
    :catchall_78
    move-exception v1

    #@79
    goto :goto_41

    #@7a
    :catchall_7a
    move-exception v0

    #@7b
    goto :goto_3e
.end method

.method public static decodeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    :try_start_1
    new-instance v0, Lcom/dd/plist/Base64$OutputStream;

    #@3
    new-instance v2, Ljava/io/FileOutputStream;

    #@5
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@8
    const/4 v3, 0x0

    #@9
    invoke-direct {v0, v2, v3}, Lcom/dd/plist/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_19
    .catchall {:try_start_1 .. :try_end_c} :catchall_2c

    #@c
    :try_start_c
    const-string v1, "US-ASCII"

    #@e
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Lcom/dd/plist/Base64$OutputStream;->write([B)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_2a
    .catchall {:try_start_c .. :try_end_15} :catchall_1e

    #@15
    :try_start_15
    invoke-virtual {v0}, Lcom/dd/plist/Base64$OutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_26

    #@18
    :goto_18
    return-void

    #@19
    :catch_19
    move-exception v0

    #@1a
    move-object v4, v1

    #@1b
    move-object v1, v0

    #@1c
    move-object v0, v4

    #@1d
    :goto_1d
    :try_start_1d
    throw v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    #@1e
    :catchall_1e
    move-exception v1

    #@1f
    move-object v4, v1

    #@20
    move-object v1, v0

    #@21
    move-object v0, v4

    #@22
    :goto_22
    :try_start_22
    invoke-virtual {v1}, Lcom/dd/plist/Base64$OutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_28

    #@25
    :goto_25
    throw v0

    #@26
    :catch_26
    move-exception v0

    #@27
    goto :goto_18

    #@28
    :catch_28
    move-exception v1

    #@29
    goto :goto_25

    #@2a
    :catch_2a
    move-exception v1

    #@2b
    goto :goto_1d

    #@2c
    :catchall_2c
    move-exception v0

    #@2d
    goto :goto_22
.end method

.method public static decodeToObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v0, v1}, Lcom/dd/plist/Base64;->decodeToObject(Ljava/lang/String;ILjava/lang/ClassLoader;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static decodeToObject(Ljava/lang/String;ILjava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {p0, p1}, Lcom/dd/plist/Base64;->decode(Ljava/lang/String;I)[B

    #@4
    move-result-object v0

    #@5
    :try_start_5
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@7
    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_a} :catch_2f
    .catchall {:try_start_5 .. :try_end_a} :catchall_38

    #@a
    if-nez p2, :cond_1c

    #@c
    :try_start_c
    new-instance v0, Ljava/io/ObjectInputStream;

    #@e
    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_22
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_11} :catch_3b
    .catchall {:try_start_c .. :try_end_11} :catchall_24

    #@11
    :goto_11
    :try_start_11
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_48
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_14} :catch_4d
    .catchall {:try_start_11 .. :try_end_14} :catchall_52

    #@14
    move-result-object v2

    #@15
    :try_start_15
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_40

    #@18
    :goto_18
    :try_start_18
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_42

    #@1b
    :goto_1b
    return-object v2

    #@1c
    :cond_1c
    :try_start_1c
    new-instance v0, Lcom/dd/plist/Base64$1;

    #@1e
    invoke-direct {v0, v1, p2}, Lcom/dd/plist/Base64$1;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_22
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_21} :catch_3b
    .catchall {:try_start_1c .. :try_end_21} :catchall_24

    #@21
    goto :goto_11

    #@22
    :catch_22
    move-exception v0

    #@23
    :goto_23
    :try_start_23
    throw v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    #@24
    :catchall_24
    move-exception v0

    #@25
    :goto_25
    :try_start_25
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_44

    #@28
    :goto_28
    :try_start_28
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_46

    #@2b
    :goto_2b
    throw v0

    #@2c
    :catch_2c
    move-exception v0

    #@2d
    move-object v1, v2

    #@2e
    goto :goto_23

    #@2f
    :catch_2f
    move-exception v0

    #@30
    move-object v1, v0

    #@31
    move-object v0, v2

    #@32
    :goto_32
    :try_start_32
    throw v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    #@33
    :catchall_33
    move-exception v1

    #@34
    move-object v3, v1

    #@35
    move-object v1, v0

    #@36
    move-object v0, v3

    #@37
    goto :goto_25

    #@38
    :catchall_38
    move-exception v0

    #@39
    move-object v1, v2

    #@3a
    goto :goto_25

    #@3b
    :catch_3b
    move-exception v0

    #@3c
    :goto_3c
    move-object v3, v1

    #@3d
    move-object v1, v0

    #@3e
    move-object v0, v3

    #@3f
    goto :goto_32

    #@40
    :catch_40
    move-exception v1

    #@41
    goto :goto_18

    #@42
    :catch_42
    move-exception v0

    #@43
    goto :goto_1b

    #@44
    :catch_44
    move-exception v1

    #@45
    goto :goto_28

    #@46
    :catch_46
    move-exception v1

    #@47
    goto :goto_2b

    #@48
    :catch_48
    move-exception v2

    #@49
    move-object v3, v2

    #@4a
    move-object v2, v0

    #@4b
    move-object v0, v3

    #@4c
    goto :goto_23

    #@4d
    :catch_4d
    move-exception v2

    #@4e
    move-object v3, v2

    #@4f
    move-object v2, v0

    #@50
    move-object v0, v3

    #@51
    goto :goto_3c

    #@52
    :catchall_52
    move-exception v2

    #@53
    move-object v3, v2

    #@54
    move-object v2, v0

    #@55
    move-object v0, v3

    #@56
    goto :goto_25
.end method

.method public static encode(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .registers 7

    #@0
    const/4 v4, 0x3

    #@1
    const/4 v3, 0x0

    #@2
    new-array v0, v4, [B

    #@4
    const/4 v1, 0x4

    #@5
    new-array v1, v1, [B

    #@7
    :goto_7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1f

    #@d
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@10
    move-result v2

    #@11
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    #@14
    move-result v2

    #@15
    invoke-virtual {p0, v0, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    #@18
    invoke-static {v1, v0, v2, v3}, Lcom/dd/plist/Base64;->encode3to4([B[BII)[B

    #@1b
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@1e
    goto :goto_7

    #@1f
    :cond_1f
    return-void
.end method

.method public static encode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .registers 9

    #@0
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v1, 0x0

    #@3
    new-array v2, v5, [B

    #@5
    new-array v3, v6, [B

    #@7
    :cond_7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_29

    #@d
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@10
    move-result v0

    #@11
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    #@14
    move-result v0

    #@15
    invoke-virtual {p0, v2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    #@18
    invoke-static {v3, v2, v0, v1}, Lcom/dd/plist/Base64;->encode3to4([B[BII)[B

    #@1b
    move v0, v1

    #@1c
    :goto_1c
    if-ge v0, v6, :cond_7

    #@1e
    aget-byte v4, v3, v0

    #@20
    and-int/lit16 v4, v4, 0xff

    #@22
    int-to-char v4, v4

    #@23
    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    #@26
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_1c

    #@29
    :cond_29
    return-void
.end method

.method private static encode3to4([BII[BII)[B
    .registers 12

    #@0
    const/16 v5, 0x3d

    #@2
    const/4 v0, 0x0

    #@3
    invoke-static {p5}, Lcom/dd/plist/Base64;->getAlphabet(I)[B

    #@6
    move-result-object v3

    #@7
    if-lez p2, :cond_2c

    #@9
    aget-byte v1, p0, p1

    #@b
    shl-int/lit8 v1, v1, 0x18

    #@d
    ushr-int/lit8 v1, v1, 0x8

    #@f
    move v2, v1

    #@10
    :goto_10
    const/4 v1, 0x1

    #@11
    if-le p2, v1, :cond_2e

    #@13
    add-int/lit8 v1, p1, 0x1

    #@15
    aget-byte v1, p0, v1

    #@17
    shl-int/lit8 v1, v1, 0x18

    #@19
    ushr-int/lit8 v1, v1, 0x10

    #@1b
    :goto_1b
    const/4 v4, 0x2

    #@1c
    if-le p2, v4, :cond_26

    #@1e
    add-int/lit8 v0, p1, 0x2

    #@20
    aget-byte v0, p0, v0

    #@22
    shl-int/lit8 v0, v0, 0x18

    #@24
    ushr-int/lit8 v0, v0, 0x18

    #@26
    :cond_26
    or-int/2addr v1, v2

    #@27
    or-int/2addr v0, v1

    #@28
    packed-switch p2, :pswitch_data_98

    #@2b
    :goto_2b
    return-object p3

    #@2c
    :cond_2c
    move v2, v0

    #@2d
    goto :goto_10

    #@2e
    :cond_2e
    move v1, v0

    #@2f
    goto :goto_1b

    #@30
    :pswitch_30
    ushr-int/lit8 v1, v0, 0x12

    #@32
    aget-byte v1, v3, v1

    #@34
    int-to-byte v1, v1

    #@35
    aput-byte v1, p3, p4

    #@37
    add-int/lit8 v1, p4, 0x1

    #@39
    ushr-int/lit8 v2, v0, 0xc

    #@3b
    and-int/lit8 v2, v2, 0x3f

    #@3d
    aget-byte v2, v3, v2

    #@3f
    int-to-byte v2, v2

    #@40
    aput-byte v2, p3, v1

    #@42
    add-int/lit8 v1, p4, 0x2

    #@44
    ushr-int/lit8 v2, v0, 0x6

    #@46
    and-int/lit8 v2, v2, 0x3f

    #@48
    aget-byte v2, v3, v2

    #@4a
    int-to-byte v2, v2

    #@4b
    aput-byte v2, p3, v1

    #@4d
    add-int/lit8 v1, p4, 0x3

    #@4f
    and-int/lit8 v0, v0, 0x3f

    #@51
    aget-byte v0, v3, v0

    #@53
    int-to-byte v0, v0

    #@54
    aput-byte v0, p3, v1

    #@56
    goto :goto_2b

    #@57
    :pswitch_57
    ushr-int/lit8 v1, v0, 0x12

    #@59
    aget-byte v1, v3, v1

    #@5b
    int-to-byte v1, v1

    #@5c
    aput-byte v1, p3, p4

    #@5e
    add-int/lit8 v1, p4, 0x1

    #@60
    ushr-int/lit8 v2, v0, 0xc

    #@62
    and-int/lit8 v2, v2, 0x3f

    #@64
    aget-byte v2, v3, v2

    #@66
    int-to-byte v2, v2

    #@67
    aput-byte v2, p3, v1

    #@69
    add-int/lit8 v1, p4, 0x2

    #@6b
    ushr-int/lit8 v0, v0, 0x6

    #@6d
    and-int/lit8 v0, v0, 0x3f

    #@6f
    aget-byte v0, v3, v0

    #@71
    int-to-byte v0, v0

    #@72
    aput-byte v0, p3, v1

    #@74
    add-int/lit8 v0, p4, 0x3

    #@76
    int-to-byte v1, v5

    #@77
    aput-byte v1, p3, v0

    #@79
    goto :goto_2b

    #@7a
    :pswitch_7a
    ushr-int/lit8 v1, v0, 0x12

    #@7c
    aget-byte v1, v3, v1

    #@7e
    int-to-byte v1, v1

    #@7f
    aput-byte v1, p3, p4

    #@81
    add-int/lit8 v1, p4, 0x1

    #@83
    ushr-int/lit8 v0, v0, 0xc

    #@85
    and-int/lit8 v0, v0, 0x3f

    #@87
    aget-byte v0, v3, v0

    #@89
    int-to-byte v0, v0

    #@8a
    aput-byte v0, p3, v1

    #@8c
    add-int/lit8 v0, p4, 0x2

    #@8e
    int-to-byte v1, v5

    #@8f
    aput-byte v1, p3, v0

    #@91
    add-int/lit8 v0, p4, 0x3

    #@93
    int-to-byte v1, v5

    #@94
    aput-byte v1, p3, v0

    #@96
    goto :goto_2b

    #@97
    nop

    #@98
    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_57
        :pswitch_30
    .end packed-switch
.end method

.method private static encode3to4([B[BII)[B
    .registers 10

    #@0
    const/4 v1, 0x0

    #@1
    move-object v0, p1

    #@2
    move v2, p2

    #@3
    move-object v3, p0

    #@4
    move v4, v1

    #@5
    move v5, p3

    #@6
    invoke-static/range {v0 .. v5}, Lcom/dd/plist/Base64;->encode3to4([BII[BII)[B

    #@9
    return-object p0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    :try_start_2
    array-length v2, p0

    #@3
    const/4 v3, 0x0

    #@4
    invoke-static {p0, v1, v2, v3}, Lcom/dd/plist/Base64;->encodeBytes([BIII)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_14

    #@7
    move-result-object v0

    #@8
    :cond_8
    sget-boolean v1, Lcom/dd/plist/Base64;->$assertionsDisabled:Z

    #@a
    if-nez v1, :cond_23

    #@c
    if-nez v0, :cond_23

    #@e
    new-instance v0, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v0

    #@14
    :catch_14
    move-exception v1

    #@15
    sget-boolean v2, Lcom/dd/plist/Base64;->$assertionsDisabled:Z

    #@17
    if-nez v2, :cond_8

    #@19
    new-instance v0, Ljava/lang/AssertionError;

    #@1b
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@22
    throw v0

    #@23
    :cond_23
    return-object v0
.end method

.method public static encodeBytes([BI)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    array-length v1, p0

    #@2
    invoke-static {p0, v0, v1, p1}, Lcom/dd/plist/Base64;->encodeBytes([BIII)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    :try_start_2
    invoke-static {p0, p1, p2, v1}, Lcom/dd/plist/Base64;->encodeBytes([BIII)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_12

    #@5
    move-result-object v0

    #@6
    :cond_6
    sget-boolean v1, Lcom/dd/plist/Base64;->$assertionsDisabled:Z

    #@8
    if-nez v1, :cond_21

    #@a
    if-nez v0, :cond_21

    #@c
    new-instance v0, Ljava/lang/AssertionError;

    #@e
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@11
    throw v0

    #@12
    :catch_12
    move-exception v1

    #@13
    sget-boolean v2, Lcom/dd/plist/Base64;->$assertionsDisabled:Z

    #@15
    if-nez v2, :cond_6

    #@17
    new-instance v0, Ljava/lang/AssertionError;

    #@19
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@20
    throw v0

    #@21
    :cond_21
    return-object v0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-static {p0, p1, p2, p3}, Lcom/dd/plist/Base64;->encodeBytesToBytes([BIII)[B

    #@3
    move-result-object v1

    #@4
    :try_start_4
    new-instance v0, Ljava/lang/String;

    #@6
    const-string v2, "US-ASCII"

    #@8
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_b} :catch_c

    #@b
    :goto_b
    return-object v0

    #@c
    :catch_c
    move-exception v0

    #@d
    new-instance v0, Ljava/lang/String;

    #@f
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    #@12
    goto :goto_b
.end method

.method public static encodeBytesToBytes([B)[B
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    :try_start_2
    array-length v2, p0

    #@3
    const/4 v3, 0x0

    #@4
    invoke-static {p0, v1, v2, v3}, Lcom/dd/plist/Base64;->encodeBytesToBytes([BIII)[B
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_9

    #@7
    move-result-object v0

    #@8
    :cond_8
    return-object v0

    #@9
    :catch_9
    move-exception v1

    #@a
    sget-boolean v2, Lcom/dd/plist/Base64;->$assertionsDisabled:Z

    #@c
    if-nez v2, :cond_8

    #@e
    new-instance v0, Ljava/lang/AssertionError;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string v3, "IOExceptions only come from GZipping, which is turned off: "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2a
    throw v0
.end method

.method public static encodeBytesToBytes([BIII)[B
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v2, 0x3

    #@1
    const/4 v0, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v7, 0x0

    #@4
    if-nez p0, :cond_e

    #@6
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string v1, "Cannot serialize a null array."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    if-gez p1, :cond_29

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string v2, "Cannot have negative offset: "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    :cond_29
    if-gez p2, :cond_44

    #@2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2d
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string v2, "Cannot have length offset: "

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0

    #@44
    :cond_44
    add-int v3, p1, p2

    #@46
    array-length v4, p0

    #@47
    if-le v3, v4, :cond_6b

    #@49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4b
    const-string v3, "Cannot have offset of %d and length of %d with array of length %d"

    #@4d
    new-array v2, v2, [Ljava/lang/Object;

    #@4f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@52
    move-result-object v4

    #@53
    aput-object v4, v2, v7

    #@55
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@58
    move-result-object v4

    #@59
    aput-object v4, v2, v0

    #@5b
    const/4 v0, 0x2

    #@5c
    array-length v4, p0

    #@5d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@60
    move-result-object v4

    #@61
    aput-object v4, v2, v0

    #@63
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@66
    move-result-object v0

    #@67
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v1

    #@6b
    :cond_6b
    and-int/lit8 v3, p3, 0x2

    #@6d
    if-eqz v3, :cond_a9

    #@6f
    :try_start_6f
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    #@71
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_74} :catch_94
    .catchall {:try_start_6f .. :try_end_74} :catchall_103

    #@74
    :try_start_74
    new-instance v2, Lcom/dd/plist/Base64$OutputStream;

    #@76
    or-int/lit8 v0, p3, 0x1

    #@78
    invoke-direct {v2, v3, v0}, Lcom/dd/plist/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_7b} :catch_10f
    .catchall {:try_start_74 .. :try_end_7b} :catchall_107

    #@7b
    :try_start_7b
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    #@7d
    invoke-direct {v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_80} :catch_115
    .catchall {:try_start_7b .. :try_end_80} :catchall_12f

    #@80
    :try_start_80
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    #@83
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_86} :catch_12c
    .catchall {:try_start_80 .. :try_end_86} :catchall_10a

    #@86
    :try_start_86
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_11a

    #@89
    :goto_89
    :try_start_89
    invoke-virtual {v2}, Lcom/dd/plist/Base64$OutputStream;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_11d

    #@8c
    :goto_8c
    :try_start_8c
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_120

    #@8f
    :goto_8f
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@92
    move-result-object v3

    #@93
    :cond_93
    :goto_93
    return-object v3

    #@94
    :catch_94
    move-exception v0

    #@95
    move-object v2, v1

    #@96
    move-object v3, v1

    #@97
    move-object v10, v1

    #@98
    move-object v1, v0

    #@99
    move-object v0, v10

    #@9a
    :goto_9a
    :try_start_9a
    throw v1
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_9b

    #@9b
    :catchall_9b
    move-exception v1

    #@9c
    move-object v10, v0

    #@9d
    move-object v0, v1

    #@9e
    move-object v1, v10

    #@9f
    :goto_9f
    :try_start_9f
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a2} :catch_123

    #@a2
    :goto_a2
    :try_start_a2
    invoke-virtual {v2}, Lcom/dd/plist/Base64$OutputStream;->close()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a5} :catch_126

    #@a5
    :goto_a5
    :try_start_a5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a8} :catch_129

    #@a8
    :goto_a8
    throw v0

    #@a9
    :cond_a9
    and-int/lit8 v1, p3, 0x8

    #@ab
    if-eqz v1, :cond_e6

    #@ad
    move v6, v0

    #@ae
    :goto_ae
    div-int/lit8 v1, p2, 0x3

    #@b0
    rem-int/lit8 v0, p2, 0x3

    #@b2
    if-lez v0, :cond_e8

    #@b4
    const/4 v0, 0x4

    #@b5
    :goto_b5
    mul-int/lit8 v1, v1, 0x4

    #@b7
    add-int/2addr v0, v1

    #@b8
    if-eqz v6, :cond_bd

    #@ba
    div-int/lit8 v1, v0, 0x4c

    #@bc
    add-int/2addr v0, v1

    #@bd
    :cond_bd
    new-array v3, v0, [B

    #@bf
    move v8, v7

    #@c0
    move v9, v7

    #@c1
    move v4, v7

    #@c2
    :goto_c2
    add-int/lit8 v0, p2, -0x2

    #@c4
    if-ge v8, v0, :cond_ea

    #@c6
    add-int v1, v8, p1

    #@c8
    move-object v0, p0

    #@c9
    move v5, p3

    #@ca
    invoke-static/range {v0 .. v5}, Lcom/dd/plist/Base64;->encode3to4([BII[BII)[B

    #@cd
    add-int/lit8 v0, v9, 0x4

    #@cf
    if-eqz v6, :cond_df

    #@d1
    const/16 v1, 0x4c

    #@d3
    if-lt v0, v1, :cond_df

    #@d5
    add-int/lit8 v0, v4, 0x4

    #@d7
    const/16 v1, 0xa

    #@d9
    int-to-byte v1, v1

    #@da
    aput-byte v1, v3, v0

    #@dc
    add-int/lit8 v4, v4, 0x1

    #@de
    move v0, v7

    #@df
    :cond_df
    add-int/lit8 v4, v4, 0x4

    #@e1
    add-int/lit8 v1, v8, 0x3

    #@e3
    move v8, v1

    #@e4
    move v9, v0

    #@e5
    goto :goto_c2

    #@e6
    :cond_e6
    move v6, v7

    #@e7
    goto :goto_ae

    #@e8
    :cond_e8
    move v0, v7

    #@e9
    goto :goto_b5

    #@ea
    :cond_ea
    if-ge v8, p2, :cond_f7

    #@ec
    add-int v1, v8, p1

    #@ee
    sub-int v2, p2, v8

    #@f0
    move-object v0, p0

    #@f1
    move v5, p3

    #@f2
    invoke-static/range {v0 .. v5}, Lcom/dd/plist/Base64;->encode3to4([BII[BII)[B

    #@f5
    add-int/lit8 v4, v4, 0x4

    #@f7
    :cond_f7
    array-length v0, v3

    #@f8
    add-int/lit8 v0, v0, -0x1

    #@fa
    if-gt v4, v0, :cond_93

    #@fc
    new-array v0, v4, [B

    #@fe
    invoke-static {v3, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@101
    move-object v3, v0

    #@102
    goto :goto_93

    #@103
    :catchall_103
    move-exception v0

    #@104
    move-object v3, v1

    #@105
    move-object v2, v1

    #@106
    goto :goto_9f

    #@107
    :catchall_107
    move-exception v0

    #@108
    move-object v2, v1

    #@109
    goto :goto_9f

    #@10a
    :catchall_10a
    move-exception v1

    #@10b
    move-object v10, v0

    #@10c
    move-object v0, v1

    #@10d
    move-object v1, v10

    #@10e
    goto :goto_9f

    #@10f
    :catch_10f
    move-exception v0

    #@110
    move-object v2, v1

    #@111
    move-object v10, v0

    #@112
    move-object v0, v1

    #@113
    move-object v1, v10

    #@114
    goto :goto_9a

    #@115
    :catch_115
    move-exception v0

    #@116
    move-object v10, v1

    #@117
    move-object v1, v0

    #@118
    move-object v0, v10

    #@119
    goto :goto_9a

    #@11a
    :catch_11a
    move-exception v0

    #@11b
    goto/16 :goto_89

    #@11d
    :catch_11d
    move-exception v0

    #@11e
    goto/16 :goto_8c

    #@120
    :catch_120
    move-exception v0

    #@121
    goto/16 :goto_8f

    #@123
    :catch_123
    move-exception v1

    #@124
    goto/16 :goto_a2

    #@126
    :catch_126
    move-exception v1

    #@127
    goto/16 :goto_a5

    #@129
    :catch_129
    move-exception v1

    #@12a
    goto/16 :goto_a8

    #@12c
    :catch_12c
    move-exception v1

    #@12d
    goto/16 :goto_9a

    #@12f
    :catchall_12f
    move-exception v0

    #@130
    goto/16 :goto_9f
.end method

.method public static encodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {p0}, Lcom/dd/plist/Base64;->encodeFromFile(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    :try_start_5
    new-instance v1, Ljava/io/BufferedOutputStream;

    #@7
    new-instance v3, Ljava/io/FileOutputStream;

    #@9
    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@c
    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_1c
    .catchall {:try_start_5 .. :try_end_f} :catchall_24

    #@f
    :try_start_f
    const-string v2, "US-ASCII"

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_2b
    .catchall {:try_start_f .. :try_end_18} :catchall_1f

    #@18
    :try_start_18
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_27

    #@1b
    :goto_1b
    return-void

    #@1c
    :catch_1c
    move-exception v0

    #@1d
    move-object v1, v2

    #@1e
    :goto_1e
    :try_start_1e
    throw v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    #@1f
    :catchall_1f
    move-exception v0

    #@20
    :goto_20
    :try_start_20
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_29

    #@23
    :goto_23
    throw v0

    #@24
    :catchall_24
    move-exception v0

    #@25
    move-object v1, v2

    #@26
    goto :goto_20

    #@27
    :catch_27
    move-exception v0

    #@28
    goto :goto_1b

    #@29
    :catch_29
    move-exception v1

    #@2a
    goto :goto_23

    #@2b
    :catch_2b
    move-exception v0

    #@2c
    goto :goto_1e
.end method

.method public static encodeFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    :try_start_2
    new-instance v3, Ljava/io/File;

    #@4
    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v3}, Ljava/io/File;->length()J

    #@a
    move-result-wide v4

    #@b
    long-to-double v4, v4

    #@c
    const-wide v6, 0x3ff6666666666666L    # 1.4

    #@11
    mul-double/2addr v4, v6

    #@12
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    #@14
    add-double/2addr v4, v6

    #@15
    double-to-int v1, v4

    #@16
    const/16 v4, 0x28

    #@18
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    #@1b
    move-result v1

    #@1c
    new-array v4, v1, [B

    #@1e
    new-instance v1, Lcom/dd/plist/Base64$InputStream;

    #@20
    new-instance v5, Ljava/io/BufferedInputStream;

    #@22
    new-instance v6, Ljava/io/FileInputStream;

    #@24
    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@27
    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@2a
    const/4 v3, 0x1

    #@2b
    invoke-direct {v1, v5, v3}, Lcom/dd/plist/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2e} :catch_44
    .catchall {:try_start_2 .. :try_end_2e} :catchall_4c

    #@2e
    :goto_2e
    const/16 v2, 0x1000

    #@30
    :try_start_30
    invoke-virtual {v1, v4, v0, v2}, Lcom/dd/plist/Base64$InputStream;->read([BII)I

    #@33
    move-result v2

    #@34
    if-ltz v2, :cond_38

    #@36
    add-int/2addr v0, v2

    #@37
    goto :goto_2e

    #@38
    :cond_38
    new-instance v2, Ljava/lang/String;

    #@3a
    const/4 v3, 0x0

    #@3b
    const-string v5, "US-ASCII"

    #@3d
    invoke-direct {v2, v4, v3, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_40} :catch_53
    .catchall {:try_start_30 .. :try_end_40} :catchall_47

    #@40
    :try_start_40
    invoke-virtual {v1}, Lcom/dd/plist/Base64$InputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_4f

    #@43
    :goto_43
    return-object v2

    #@44
    :catch_44
    move-exception v0

    #@45
    move-object v1, v2

    #@46
    :goto_46
    :try_start_46
    throw v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    #@47
    :catchall_47
    move-exception v0

    #@48
    :goto_48
    :try_start_48
    invoke-virtual {v1}, Lcom/dd/plist/Base64$InputStream;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_51

    #@4b
    :goto_4b
    throw v0

    #@4c
    :catchall_4c
    move-exception v0

    #@4d
    move-object v1, v2

    #@4e
    goto :goto_48

    #@4f
    :catch_4f
    move-exception v0

    #@50
    goto :goto_43

    #@51
    :catch_51
    move-exception v1

    #@52
    goto :goto_4b

    #@53
    :catch_53
    move-exception v0

    #@54
    goto :goto_46
.end method

.method public static encodeObject(Ljava/io/Serializable;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lcom/dd/plist/Base64;->encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    if-nez p0, :cond_b

    #@3
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string v1, "Cannot serialize a null object."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    :cond_b
    :try_start_b
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    #@d
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_47
    .catchall {:try_start_b .. :try_end_10} :catchall_71

    #@10
    :try_start_10
    new-instance v4, Lcom/dd/plist/Base64$OutputStream;

    #@12
    or-int/lit8 v0, p1, 0x1

    #@14
    invoke-direct {v4, v3, v0}, Lcom/dd/plist/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_80
    .catchall {:try_start_10 .. :try_end_17} :catchall_77

    #@17
    and-int/lit8 v0, p1, 0x2

    #@19
    if-eqz v0, :cond_40

    #@1b
    :try_start_1b
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    #@1d
    invoke-direct {v1, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_88
    .catchall {:try_start_1b .. :try_end_20} :catchall_7c

    #@20
    :try_start_20
    new-instance v0, Ljava/io/ObjectOutputStream;

    #@22
    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_90
    .catchall {:try_start_20 .. :try_end_25} :catchall_ae

    #@25
    :goto_25
    :try_start_25
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_a9
    .catchall {:try_start_25 .. :try_end_28} :catchall_b0

    #@28
    :try_start_28
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_99

    #@2b
    :goto_2b
    :try_start_2b
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_9b

    #@2e
    :goto_2e
    :try_start_2e
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_9d

    #@31
    :goto_31
    :try_start_31
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_9f

    #@34
    :goto_34
    :try_start_34
    new-instance v0, Ljava/lang/String;

    #@36
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@39
    move-result-object v1

    #@3a
    const-string v2, "US-ASCII"

    #@3c
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_34 .. :try_end_3f} :catch_66

    #@3f
    :goto_3f
    return-object v0

    #@40
    :cond_40
    :try_start_40
    new-instance v0, Ljava/io/ObjectOutputStream;

    #@42
    invoke-direct {v0, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_45} :catch_88
    .catchall {:try_start_40 .. :try_end_45} :catchall_7c

    #@45
    move-object v1, v2

    #@46
    goto :goto_25

    #@47
    :catch_47
    move-exception v0

    #@48
    move-object v1, v0

    #@49
    move-object v3, v2

    #@4a
    move-object v4, v2

    #@4b
    move-object v0, v2

    #@4c
    :goto_4c
    :try_start_4c
    throw v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    #@4d
    :catchall_4d
    move-exception v1

    #@4e
    move-object v5, v1

    #@4f
    move-object v1, v4

    #@50
    move-object v4, v0

    #@51
    move-object v0, v5

    #@52
    move-object v6, v2

    #@53
    move-object v2, v3

    #@54
    move-object v3, v6

    #@55
    :goto_55
    move-object v5, v1

    #@56
    move-object v1, v0

    #@57
    move-object v0, v2

    #@58
    move-object v2, v5

    #@59
    :goto_59
    :try_start_59
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_a1

    #@5c
    :goto_5c
    :try_start_5c
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_a3

    #@5f
    :goto_5f
    :try_start_5f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_a5

    #@62
    :goto_62
    :try_start_62
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_a7

    #@65
    :goto_65
    throw v1

    #@66
    :catch_66
    move-exception v0

    #@67
    new-instance v0, Ljava/lang/String;

    #@69
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@6c
    move-result-object v1

    #@6d
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    #@70
    goto :goto_3f

    #@71
    :catchall_71
    move-exception v0

    #@72
    move-object v3, v2

    #@73
    move-object v4, v2

    #@74
    move-object v1, v0

    #@75
    move-object v0, v2

    #@76
    goto :goto_59

    #@77
    :catchall_77
    move-exception v0

    #@78
    move-object v4, v2

    #@79
    move-object v1, v0

    #@7a
    move-object v0, v2

    #@7b
    goto :goto_59

    #@7c
    :catchall_7c
    move-exception v0

    #@7d
    move-object v1, v0

    #@7e
    move-object v0, v2

    #@7f
    goto :goto_59

    #@80
    :catch_80
    move-exception v0

    #@81
    move-object v1, v0

    #@82
    move-object v4, v2

    #@83
    move-object v0, v2

    #@84
    move-object v5, v2

    #@85
    move-object v2, v3

    #@86
    move-object v3, v5

    #@87
    goto :goto_4c

    #@88
    :catch_88
    move-exception v0

    #@89
    move-object v1, v0

    #@8a
    move-object v0, v4

    #@8b
    move-object v4, v2

    #@8c
    move-object v5, v2

    #@8d
    move-object v2, v3

    #@8e
    move-object v3, v5

    #@8f
    goto :goto_4c

    #@90
    :catch_90
    move-exception v0

    #@91
    :goto_91
    move-object v5, v3

    #@92
    move-object v3, v2

    #@93
    move-object v2, v5

    #@94
    move-object v6, v0

    #@95
    move-object v0, v4

    #@96
    move-object v4, v1

    #@97
    move-object v1, v6

    #@98
    goto :goto_4c

    #@99
    :catch_99
    move-exception v0

    #@9a
    goto :goto_2b

    #@9b
    :catch_9b
    move-exception v0

    #@9c
    goto :goto_2e

    #@9d
    :catch_9d
    move-exception v0

    #@9e
    goto :goto_31

    #@9f
    :catch_9f
    move-exception v0

    #@a0
    goto :goto_34

    #@a1
    :catch_a1
    move-exception v0

    #@a2
    goto :goto_5c

    #@a3
    :catch_a3
    move-exception v0

    #@a4
    goto :goto_5f

    #@a5
    :catch_a5
    move-exception v0

    #@a6
    goto :goto_62

    #@a7
    :catch_a7
    move-exception v0

    #@a8
    goto :goto_65

    #@a9
    :catch_a9
    move-exception v2

    #@aa
    move-object v5, v2

    #@ab
    move-object v2, v0

    #@ac
    move-object v0, v5

    #@ad
    goto :goto_91

    #@ae
    :catchall_ae
    move-exception v0

    #@af
    goto :goto_55

    #@b0
    :catchall_b0
    move-exception v2

    #@b1
    move-object v5, v2

    #@b2
    move-object v2, v0

    #@b3
    move-object v0, v5

    #@b4
    goto :goto_55
.end method

.method public static encodeToFile([BLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    if-nez p0, :cond_b

    #@3
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string v1, "Data to encode was null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    :cond_b
    :try_start_b
    new-instance v0, Lcom/dd/plist/Base64$OutputStream;

    #@d
    new-instance v2, Ljava/io/FileOutputStream;

    #@f
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@12
    const/4 v3, 0x1

    #@13
    invoke-direct {v0, v2, v3}, Lcom/dd/plist/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_1d
    .catchall {:try_start_b .. :try_end_16} :catchall_30

    #@16
    :try_start_16
    invoke-virtual {v0, p0}, Lcom/dd/plist/Base64$OutputStream;->write([B)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_2a
    .catchall {:try_start_16 .. :try_end_19} :catchall_22

    #@19
    :try_start_19
    invoke-virtual {v0}, Lcom/dd/plist/Base64$OutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_2c

    #@1c
    :goto_1c
    return-void

    #@1d
    :catch_1d
    move-exception v0

    #@1e
    move-object v4, v1

    #@1f
    move-object v1, v0

    #@20
    move-object v0, v4

    #@21
    :goto_21
    :try_start_21
    throw v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    #@22
    :catchall_22
    move-exception v1

    #@23
    move-object v4, v1

    #@24
    move-object v1, v0

    #@25
    move-object v0, v4

    #@26
    :goto_26
    :try_start_26
    invoke-virtual {v1}, Lcom/dd/plist/Base64$OutputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2e

    #@29
    :goto_29
    throw v0

    #@2a
    :catch_2a
    move-exception v1

    #@2b
    goto :goto_21

    #@2c
    :catch_2c
    move-exception v0

    #@2d
    goto :goto_1c

    #@2e
    :catch_2e
    move-exception v1

    #@2f
    goto :goto_29

    #@30
    :catchall_30
    move-exception v0

    #@31
    goto :goto_26
.end method

.method private static final getAlphabet(I)[B
    .registers 3

    #@0
    and-int/lit8 v0, p0, 0x10

    #@2
    const/16 v1, 0x10

    #@4
    if-ne v0, v1, :cond_9

    #@6
    sget-object v0, Lcom/dd/plist/Base64;->_URL_SAFE_ALPHABET:[B

    #@8
    :goto_8
    return-object v0

    #@9
    :cond_9
    and-int/lit8 v0, p0, 0x20

    #@b
    const/16 v1, 0x20

    #@d
    if-ne v0, v1, :cond_12

    #@f
    sget-object v0, Lcom/dd/plist/Base64;->_ORDERED_ALPHABET:[B

    #@11
    goto :goto_8

    #@12
    :cond_12
    sget-object v0, Lcom/dd/plist/Base64;->_STANDARD_ALPHABET:[B

    #@14
    goto :goto_8
.end method

.method private static final getDecodabet(I)[B
    .registers 3

    #@0
    and-int/lit8 v0, p0, 0x10

    #@2
    const/16 v1, 0x10

    #@4
    if-ne v0, v1, :cond_9

    #@6
    sget-object v0, Lcom/dd/plist/Base64;->_URL_SAFE_DECODABET:[B

    #@8
    :goto_8
    return-object v0

    #@9
    :cond_9
    and-int/lit8 v0, p0, 0x20

    #@b
    const/16 v1, 0x20

    #@d
    if-ne v0, v1, :cond_12

    #@f
    sget-object v0, Lcom/dd/plist/Base64;->_ORDERED_DECODABET:[B

    #@11
    goto :goto_8

    #@12
    :cond_12
    sget-object v0, Lcom/dd/plist/Base64;->_STANDARD_DECODABET:[B

    #@14
    goto :goto_8
.end method
