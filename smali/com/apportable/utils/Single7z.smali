.class public Lcom/apportable/utils/Single7z;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/utils/Single7z$SZErrorException;
    }
.end annotation


# static fields
.field public static final SZ_ERROR_ARCHIVE:I = 0x10

.field public static final SZ_ERROR_CRC:I = 0x3

.field public static final SZ_ERROR_DATA:I = 0x1

.field public static final SZ_ERROR_FAIL:I = 0xb

.field public static final SZ_ERROR_INPUT_EOF:I = 0x6

.field public static final SZ_ERROR_MEM:I = 0x2

.field public static final SZ_ERROR_NO_ARCHIVE:I = 0x11

.field public static final SZ_ERROR_OPEN:I = 0x64

.field public static final SZ_ERROR_OUTPUT_EOF:I = 0x7

.field public static final SZ_ERROR_PARAM:I = 0x5

.field public static final SZ_ERROR_PROGRESS:I = 0xa

.field public static final SZ_ERROR_READ:I = 0x8

.field public static final SZ_ERROR_THREAD:I = 0xc

.field public static final SZ_ERROR_UNSUPPORTED:I = 0x4

.field public static final SZ_ERROR_WRITE:I = 0x9

.field public static final SZ_OK:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "Single7z"

    #@2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static extract(Ljava/io/InputStream;JLjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    long-to-int v0, p1

    #@1
    new-array v1, v0, [B

    #@3
    const/4 v0, 0x0

    #@4
    :goto_4
    array-length v2, v1

    #@5
    if-eq v0, v2, :cond_18

    #@7
    array-length v2, v1

    #@8
    sub-int/2addr v2, v0

    #@9
    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    #@c
    move-result v2

    #@d
    const/4 v3, -0x1

    #@e
    if-ne v2, v3, :cond_16

    #@10
    new-instance v0, Ljava/io/EOFException;

    #@12
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    #@15
    throw v0

    #@16
    :cond_16
    add-int/2addr v0, v2

    #@17
    goto :goto_4

    #@18
    :cond_18
    invoke-static {v1, p3}, Lcom/apportable/utils/Single7z;->extract([BLjava/lang/String;)V

    #@1b
    return-void
.end method

.method public static native extract([BLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apportable/utils/Single7z$SZErrorException;
        }
    .end annotation
.end method

.method private static throwSZErrorException(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apportable/utils/Single7z$SZErrorException;
        }
    .end annotation

    #@0
    new-instance v0, Lcom/apportable/utils/Single7z$SZErrorException;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/utils/Single7z$SZErrorException;-><init>(ILjava/lang/String;)V

    #@5
    throw v0
.end method
