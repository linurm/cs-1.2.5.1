.class public Lcom/apportable/LibraryManager$InvalidArchitectureException;
.super Ljava/io/IOException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/LibraryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidArchitectureException"
.end annotation


# instance fields
.field private mPackagedABIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedABIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    #@3
    iput-object p1, p0, Lcom/apportable/LibraryManager$InvalidArchitectureException;->mSupportedABIs:Ljava/util/ArrayList;

    #@5
    iput-object p2, p0, Lcom/apportable/LibraryManager$InvalidArchitectureException;->mPackagedABIs:Ljava/util/ArrayList;

    #@7
    return-void
.end method


# virtual methods
.method public getPackagedABIs()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/apportable/LibraryManager$InvalidArchitectureException;->mPackagedABIs:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getSupportedABIs()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/apportable/LibraryManager$InvalidArchitectureException;->mSupportedABIs:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method
