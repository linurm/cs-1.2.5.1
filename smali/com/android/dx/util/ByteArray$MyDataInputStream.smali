.class public Lcom/android/dx/util/ByteArray$MyDataInputStream;
.super Ljava/io/DataInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/util/ByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyDataInputStream"
.end annotation


# instance fields
.field private final wrapped:Lcom/android/dx/util/ByteArray$MyInputStream;


# direct methods
.method public constructor <init>(Lcom/android/dx/util/ByteArray$MyInputStream;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@3
    iput-object p1, p0, Lcom/android/dx/util/ByteArray$MyDataInputStream;->wrapped:Lcom/android/dx/util/ByteArray$MyInputStream;

    #@5
    return-void
.end method
