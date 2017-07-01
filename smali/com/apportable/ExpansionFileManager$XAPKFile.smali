.class Lcom/apportable/ExpansionFileManager$XAPKFile;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ExpansionFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XAPKFile"
.end annotation


# instance fields
.field public final mFileSize:J

.field public final mFileVersion:I

.field public final mIsMain:Z


# direct methods
.method constructor <init>(ZIJ)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-boolean p1, p0, Lcom/apportable/ExpansionFileManager$XAPKFile;->mIsMain:Z

    #@5
    iput p2, p0, Lcom/apportable/ExpansionFileManager$XAPKFile;->mFileVersion:I

    #@7
    iput-wide p3, p0, Lcom/apportable/ExpansionFileManager$XAPKFile;->mFileSize:J

    #@9
    return-void
.end method
