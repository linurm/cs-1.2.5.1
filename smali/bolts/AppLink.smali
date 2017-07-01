.class public Lbolts/AppLink;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbolts/AppLink$Target;
    }
.end annotation


# instance fields
.field private sourceUrl:Landroid/net/Uri;

.field private targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbolts/AppLink$Target;",
            ">;"
        }
    .end annotation
.end field

.field private webUrl:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lbolts/AppLink$Target;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lbolts/AppLink;->sourceUrl:Landroid/net/Uri;

    #@5
    if-nez p2, :cond_b

    #@7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@a
    move-result-object p2

    #@b
    :cond_b
    iput-object p2, p0, Lbolts/AppLink;->targets:Ljava/util/List;

    #@d
    iput-object p3, p0, Lbolts/AppLink;->webUrl:Landroid/net/Uri;

    #@f
    return-void
.end method


# virtual methods
.method public getSourceUrl()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lbolts/AppLink;->sourceUrl:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbolts/AppLink$Target;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lbolts/AppLink;->targets:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getWebUrl()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lbolts/AppLink;->webUrl:Landroid/net/Uri;

    #@2
    return-object v0
.end method
