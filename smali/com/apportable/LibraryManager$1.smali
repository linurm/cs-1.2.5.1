.class Lcom/apportable/LibraryManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/LibraryManager;->languages()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/LibraryManager;

.field final synthetic val$defLoc:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/apportable/LibraryManager;Ljava/util/Locale;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/LibraryManager$1;->this$0:Lcom/apportable/LibraryManager;

    #@2
    iput-object p2, p0, Lcom/apportable/LibraryManager$1;->val$defLoc:Ljava/util/Locale;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    #@0
    check-cast p1, Ljava/util/Locale;

    #@2
    check-cast p2, Ljava/util/Locale;

    #@4
    invoke-virtual {p0, p1, p2}, Lcom/apportable/LibraryManager$1;->compare(Ljava/util/Locale;Ljava/util/Locale;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Ljava/util/Locale;Ljava/util/Locale;)I
    .registers 9

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, -0x1

    #@2
    invoke-virtual {p1, p2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    :cond_9
    :goto_9
    return v0

    #@a
    :cond_a
    iget-object v2, p0, Lcom/apportable/LibraryManager$1;->val$defLoc:Ljava/util/Locale;

    #@c
    invoke-virtual {p1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_39

    #@12
    iget-object v2, p0, Lcom/apportable/LibraryManager$1;->val$defLoc:Ljava/util/Locale;

    #@14
    invoke-virtual {p2, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_9

    #@1a
    iget-object v2, p0, Lcom/apportable/LibraryManager$1;->val$defLoc:Ljava/util/Locale;

    #@1c
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v5

    #@2c
    if-nez v5, :cond_39

    #@2e
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v1

    #@32
    if-nez v1, :cond_9

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@37
    move-result v0

    #@38
    goto :goto_9

    #@39
    :cond_39
    move v0, v1

    #@3a
    goto :goto_9
.end method
