.class public Lcom/apportable/utils/Single7z$SZErrorException;
.super Ljava/io/IOException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/utils/Single7z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SZErrorException"
.end annotation


# instance fields
.field private mError:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    iput p1, p0, Lcom/apportable/utils/Single7z$SZErrorException;->mError:I

    #@5
    return-void
.end method


# virtual methods
.method public getError()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/utils/Single7z$SZErrorException;->mError:I

    #@2
    return v0
.end method
