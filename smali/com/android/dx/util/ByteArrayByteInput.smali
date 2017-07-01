.class public final Lcom/android/dx/util/ByteArrayByteInput;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/util/ByteInput;


# instance fields
.field private final bytes:[B

.field private position:I


# direct methods
.method public varargs constructor <init>([B)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/dx/util/ByteArrayByteInput;->bytes:[B

    #@5
    return-void
.end method


# virtual methods
.method public readByte()B
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/util/ByteArrayByteInput;->bytes:[B

    #@2
    iget v1, p0, Lcom/android/dx/util/ByteArrayByteInput;->position:I

    #@4
    add-int/lit8 v2, v1, 0x1

    #@6
    iput v2, p0, Lcom/android/dx/util/ByteArrayByteInput;->position:I

    #@8
    aget-byte v0, v0, v1

    #@a
    return v0
.end method
