.class public Lcom/apportable/LibraryManager$NotEnoughSpaceException;
.super Ljava/io/IOException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/LibraryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotEnoughSpaceException"
.end annotation


# instance fields
.field private mAvailableSize:J

.field private mRequiredSize:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    #@3
    iput-wide p1, p0, Lcom/apportable/LibraryManager$NotEnoughSpaceException;->mRequiredSize:J

    #@5
    iput-wide p3, p0, Lcom/apportable/LibraryManager$NotEnoughSpaceException;->mAvailableSize:J

    #@7
    return-void
.end method


# virtual methods
.method public getAvailableSize()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/apportable/LibraryManager$NotEnoughSpaceException;->mAvailableSize:J

    #@2
    return-wide v0
.end method

.method public getRequiredSize()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/apportable/LibraryManager$NotEnoughSpaceException;->mRequiredSize:J

    #@2
    return-wide v0
.end method
