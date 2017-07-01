.class Lcom/facebook/widget/GraphObjectAdapter;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;,
        Lcom/facebook/widget/GraphObjectAdapter$Filter;,
        Lcom/facebook/widget/GraphObjectAdapter$ItemPicture;,
        Lcom/facebook/widget/GraphObjectAdapter$ItemPictureData;,
        Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;,
        Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;,
        Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/model/GraphObject;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ACTIVITY_CIRCLE_VIEW_TYPE:I = 0x2

.field private static final DISPLAY_SECTIONS_THRESHOLD:I = 0x1

.field private static final GRAPH_OBJECT_VIEW_TYPE:I = 0x1

.field private static final HEADER_VIEW_TYPE:I = 0x0

.field private static final ID:Ljava/lang/String; = "id"

.field private static final MAX_PREFETCHED_PICTURES:I = 0x14

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PICTURE:Ljava/lang/String; = "picture"


# instance fields
.field private context:Landroid/content/Context;

.field private cursor:Lcom/facebook/widget/GraphObjectCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/GraphObjectCursor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private dataNeededListener:Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;

.field private displaySections:Z

.field private filter:Lcom/facebook/widget/GraphObjectAdapter$Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/GraphObjectAdapter$Filter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private graphObjectsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private graphObjectsBySection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private groupByField:Ljava/lang/String;

.field private final inflater:Landroid/view/LayoutInflater;

.field private onErrorListener:Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;

.field private final pendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/ImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private prefetchedPictureCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/ImageResponse;",
            ">;"
        }
    .end annotation
.end field

.field private prefetchedProfilePictureIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sectionKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private showCheckbox:Z

.field private showPicture:Z

.field private sortFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/widget/GraphObjectAdapter;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_c

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    sput-boolean v0, Lcom/facebook/widget/GraphObjectAdapter;->$assertionsDisabled:Z

    #@b
    return-void

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->pendingRequests:Ljava/util/Map;

    #@a
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    #@11
    new-instance v0, Ljava/util/HashMap;

    #@13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@16
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    #@18
    new-instance v0, Ljava/util/HashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsById:Ljava/util/Map;

    #@1f
    new-instance v0, Ljava/util/HashMap;

    #@21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@24
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    #@26
    new-instance v0, Ljava/util/ArrayList;

    #@28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2b
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedProfilePictureIds:Ljava/util/ArrayList;

    #@2d
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->context:Landroid/content/Context;

    #@2f
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->inflater:Landroid/view/LayoutInflater;

    #@35
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/widget/GraphObjectAdapter;)Ljava/util/List;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sortFields:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObject;Ljava/util/Collection;Ljava/text/Collator;)I
    .registers 5

    #@0
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/widget/GraphObjectAdapter;->compareGraphObjects(Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObject;Ljava/util/Collection;Ljava/text/Collator;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$200(Lcom/facebook/widget/GraphObjectAdapter;Lcom/facebook/internal/ImageResponse;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/GraphObjectAdapter;->processImageResponse(Lcom/facebook/internal/ImageResponse;Ljava/lang/String;Landroid/widget/ImageView;)V

    #@3
    return-void
.end method

.method private callOnErrorListener(Ljava/lang/Exception;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->onErrorListener:Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;

    #@2
    if-eqz v0, :cond_14

    #@4
    instance-of v0, p1, Lcom/facebook/FacebookException;

    #@6
    if-nez v0, :cond_15

    #@8
    new-instance v0, Lcom/facebook/FacebookException;

    #@a
    invoke-direct {v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    #@d
    :goto_d
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->onErrorListener:Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;

    #@f
    check-cast v0, Lcom/facebook/FacebookException;

    #@11
    invoke-interface {v1, p0, v0}, Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;->onError(Lcom/facebook/widget/GraphObjectAdapter;Lcom/facebook/FacebookException;)V

    #@14
    :cond_14
    return-void

    #@15
    :cond_15
    move-object v0, p1

    #@16
    goto :goto_d
.end method

.method private static compareGraphObjects(Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObject;Ljava/util/Collection;Ljava/text/Collator;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/model/GraphObject;",
            "Lcom/facebook/model/GraphObject;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/text/Collator;",
            ")I"
        }
    .end annotation

    #@0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v2

    #@4
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_31

    #@a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/String;

    #@10
    invoke-interface {p0, v0}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/lang/String;

    #@16
    invoke-interface {p1, v0}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/lang/String;

    #@1c
    if-eqz v1, :cond_27

    #@1e
    if-eqz v0, :cond_27

    #@20
    invoke-virtual {p3, v1, v0}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_4

    #@26
    :goto_26
    return v0

    #@27
    :cond_27
    if-nez v1, :cond_2b

    #@29
    if-eqz v0, :cond_4

    #@2b
    :cond_2b
    if-nez v1, :cond_2f

    #@2d
    const/4 v0, -0x1

    #@2e
    goto :goto_26

    #@2f
    :cond_2f
    const/4 v0, 0x1

    #@30
    goto :goto_26

    #@31
    :cond_31
    const/4 v0, 0x0

    #@32
    goto :goto_26
.end method

.method private downloadProfilePicture(Ljava/lang/String;Ljava/net/URI;Landroid/widget/ImageView;)V
    .registers 6

    #@0
    if-nez p2, :cond_3

    #@2
    :cond_2
    :goto_2
    return-void

    #@3
    :cond_3
    if-nez p3, :cond_43

    #@5
    const/4 v0, 0x1

    #@6
    :goto_6
    if-nez v0, :cond_12

    #@8
    invoke-virtual {p3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p2, v1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_2

    #@12
    :cond_12
    if-nez v0, :cond_1e

    #@14
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    #@17
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->getDefaultPicture()I

    #@1a
    move-result v0

    #@1b
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    #@1e
    :cond_1e
    new-instance v0, Lcom/facebook/internal/ImageRequest$Builder;

    #@20
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->context:Landroid/content/Context;

    #@22
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1, p2}, Lcom/facebook/internal/ImageRequest$Builder;-><init>(Landroid/content/Context;Ljava/net/URI;)V

    #@29
    invoke-virtual {v0, p0}, Lcom/facebook/internal/ImageRequest$Builder;->setCallerTag(Ljava/lang/Object;)Lcom/facebook/internal/ImageRequest$Builder;

    #@2c
    move-result-object v0

    #@2d
    new-instance v1, Lcom/facebook/widget/GraphObjectAdapter$2;

    #@2f
    invoke-direct {v1, p0, p1, p3}, Lcom/facebook/widget/GraphObjectAdapter$2;-><init>(Lcom/facebook/widget/GraphObjectAdapter;Ljava/lang/String;Landroid/widget/ImageView;)V

    #@32
    invoke-virtual {v0, v1}, Lcom/facebook/internal/ImageRequest$Builder;->setCallback(Lcom/facebook/internal/ImageRequest$Callback;)Lcom/facebook/internal/ImageRequest$Builder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Lcom/facebook/internal/ImageRequest$Builder;->build()Lcom/facebook/internal/ImageRequest;

    #@39
    move-result-object v0

    #@3a
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->pendingRequests:Ljava/util/Map;

    #@3c
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    invoke-static {v0}, Lcom/facebook/internal/ImageDownloader;->downloadAsync(Lcom/facebook/internal/ImageRequest;)V

    #@42
    goto :goto_2

    #@43
    :cond_43
    const/4 v0, 0x0

    #@44
    goto :goto_6
.end method

.method private getActivityCircleView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    #@0
    if-nez p1, :cond_c

    #@2
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->inflater:Landroid/view/LayoutInflater;

    #@4
    const v1, 0x7f030002

    #@7
    const/4 v2, 0x0

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@b
    move-result-object p1

    #@c
    :cond_c
    const v0, 0x7f040019

    #@f
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/widget/ProgressBar;

    #@15
    const/4 v1, 0x0

    #@16
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@19
    return-object p1
.end method

.method private processImageResponse(Lcom/facebook/internal/ImageResponse;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->pendingRequests:Ljava/util/Map;

    #@2
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getError()Ljava/lang/Exception;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_12

    #@b
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getError()Ljava/lang/Exception;

    #@e
    move-result-object v0

    #@f
    invoke-direct {p0, v0}, Lcom/facebook/widget/GraphObjectAdapter;->callOnErrorListener(Ljava/lang/Exception;)V

    #@12
    :cond_12
    if-nez p3, :cond_38

    #@14
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_37

    #@1a
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    #@1c
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@1f
    move-result v0

    #@20
    const/16 v1, 0x14

    #@22
    if-lt v0, v1, :cond_32

    #@24
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedProfilePictureIds:Ljava/util/ArrayList;

    #@26
    const/4 v1, 0x0

    #@27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Ljava/lang/String;

    #@2d
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    #@2f
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    :cond_32
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    #@34
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    :cond_37
    :goto_37
    return-void

    #@38
    :cond_38
    invoke-virtual {p3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_37

    #@42
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getError()Ljava/lang/Exception;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    #@49
    move-result-object v1

    #@4a
    if-nez v0, :cond_37

    #@4c
    if-eqz v1, :cond_37

    #@4e
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@51
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getRequest()Lcom/facebook/internal/ImageRequest;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Ljava/net/URI;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    #@5c
    goto :goto_37
.end method

.method private rebuildSections()V
    .registers 8

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    new-instance v0, Ljava/util/ArrayList;

    #@4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@7
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    #@9
    new-instance v0, Ljava/util/HashMap;

    #@b
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@e
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    #@10
    new-instance v0, Ljava/util/HashMap;

    #@12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@15
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsById:Ljava/util/Map;

    #@17
    iput-boolean v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    #@19
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    #@1b
    if-eqz v0, :cond_25

    #@1d
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    #@1f
    invoke-interface {v0}, Lcom/facebook/widget/GraphObjectCursor;->getCount()I

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_26

    #@25
    :cond_25
    :goto_25
    return-void

    #@26
    :cond_26
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    #@28
    invoke-interface {v0}, Lcom/facebook/widget/GraphObjectCursor;->moveToFirst()Z

    #@2b
    move v0, v1

    #@2c
    :goto_2c
    iget-object v2, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    #@2e
    invoke-interface {v2}, Lcom/facebook/widget/GraphObjectCursor;->getGraphObject()Lcom/facebook/model/GraphObject;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {p0, v4}, Lcom/facebook/widget/GraphObjectAdapter;->filterIncludesItem(Lcom/facebook/model/GraphObject;)Z

    #@35
    move-result v2

    #@36
    if-nez v2, :cond_68

    #@38
    move v2, v0

    #@39
    :goto_39
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    #@3b
    invoke-interface {v0}, Lcom/facebook/widget/GraphObjectCursor;->moveToNext()Z

    #@3e
    move-result v0

    #@3f
    if-nez v0, :cond_b2

    #@41
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sortFields:Ljava/util/List;

    #@43
    if-eqz v0, :cond_9a

    #@45
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    #@48
    move-result-object v4

    #@49
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    #@4b
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@4e
    move-result-object v0

    #@4f
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@52
    move-result-object v5

    #@53
    :goto_53
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@56
    move-result v0

    #@57
    if-eqz v0, :cond_9a

    #@59
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5c
    move-result-object v0

    #@5d
    check-cast v0, Ljava/util/List;

    #@5f
    new-instance v6, Lcom/facebook/widget/GraphObjectAdapter$1;

    #@61
    invoke-direct {v6, p0, v4}, Lcom/facebook/widget/GraphObjectAdapter$1;-><init>(Lcom/facebook/widget/GraphObjectAdapter;Ljava/text/Collator;)V

    #@64
    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@67
    goto :goto_53

    #@68
    :cond_68
    add-int/lit8 v2, v0, 0x1

    #@6a
    invoke-virtual {p0, v4}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionKeyOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    #@70
    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@73
    move-result v5

    #@74
    if-nez v5, :cond_85

    #@76
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    #@78
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7b
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    #@7d
    new-instance v6, Ljava/util/ArrayList;

    #@7f
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@82
    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@85
    :cond_85
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    #@87
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8a
    move-result-object v0

    #@8b
    check-cast v0, Ljava/util/List;

    #@8d
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@90
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsById:Ljava/util/Map;

    #@92
    invoke-virtual {p0, v4}, Lcom/facebook/widget/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;

    #@95
    move-result-object v5

    #@96
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@99
    goto :goto_39

    #@9a
    :cond_9a
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    #@9c
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    #@9f
    move-result-object v4

    #@a0
    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@a3
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    #@a5
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@a8
    move-result v0

    #@a9
    if-le v0, v3, :cond_ae

    #@ab
    if-le v2, v3, :cond_ae

    #@ad
    move v1, v3

    #@ae
    :cond_ae
    iput-boolean v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    #@b0
    goto/16 :goto_25

    #@b2
    :cond_b2
    move v0, v2

    #@b3
    goto/16 :goto_2c
.end method

.method private shouldShowActivityCircleCell()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    #@2
    if-eqz v0, :cond_18

    #@4
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    #@6
    invoke-interface {v0}, Lcom/facebook/widget/GraphObjectCursor;->areMoreObjectsAvailable()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_18

    #@c
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;

    #@e
    if-eqz v0, :cond_18

    #@10
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->isEmpty()Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_18

    #@16
    const/4 v0, 0x1

    #@17
    :goto_17
    return v0

    #@18
    :cond_18
    const/4 v0, 0x0

    #@19
    goto :goto_17
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    #@2
    return v0
.end method

.method public changeCursor(Lcom/facebook/widget/GraphObjectCursor;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/GraphObjectCursor",
            "<TT;>;)Z"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    #@2
    if-ne v0, p1, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    #@8
    if-eqz v0, :cond_f

    #@a
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    #@c
    invoke-interface {v0}, Lcom/facebook/widget/GraphObjectCursor;->close()V

    #@f
    :cond_f
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    #@11
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->rebuildAndNotify()V

    #@14
    const/4 v0, 0x1

    #@15
    goto :goto_5
.end method

.method protected createGraphObjectView(Lcom/facebook/model/GraphObject;)Landroid/view/View;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/view/View;"
        }
    .end annotation

    #@0
    const/16 v4, 0x8

    #@2
    const/4 v3, 0x0

    #@3
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->inflater:Landroid/view/LayoutInflater;

    #@5
    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->getGraphObjectRowLayoutId(Lcom/facebook/model/GraphObject;)I

    #@8
    move-result v1

    #@9
    const/4 v2, 0x0

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@d
    move-result-object v1

    #@e
    const v0, 0x7f04001e

    #@11
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/view/ViewStub;

    #@17
    if-eqz v0, :cond_22

    #@19
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->getShowCheckbox()Z

    #@1c
    move-result v2

    #@1d
    if-nez v2, :cond_35

    #@1f
    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    #@22
    :cond_22
    :goto_22
    const v0, 0x7f04001c

    #@25
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Landroid/view/ViewStub;

    #@2b
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->getShowPicture()Z

    #@2e
    move-result v2

    #@2f
    if-nez v2, :cond_3f

    #@31
    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    #@34
    :goto_34
    return-object v1

    #@35
    :cond_35
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Landroid/widget/CheckBox;

    #@3b
    invoke-virtual {p0, v0, v3}, Lcom/facebook/widget/GraphObjectAdapter;->updateCheckboxState(Landroid/widget/CheckBox;Z)V

    #@3e
    goto :goto_22

    #@3f
    :cond_3f
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Landroid/widget/ImageView;

    #@45
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    #@48
    goto :goto_34
.end method

.method filterIncludesItem(Lcom/facebook/model/GraphObject;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->filter:Lcom/facebook/widget/GraphObjectAdapter$Filter;

    #@2
    if-eqz v0, :cond_c

    #@4
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->filter:Lcom/facebook/widget/GraphObjectAdapter$Filter;

    #@6
    invoke-interface {v0, p1}, Lcom/facebook/widget/GraphObjectAdapter$Filter;->includeItem(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_e

    #@c
    :cond_c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d
.end method

.method public getCount()I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    #@3
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_a

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    iget-boolean v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    #@c
    if-eqz v1, :cond_14

    #@e
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    #@10
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@13
    move-result v0

    #@14
    :cond_14
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    #@16
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@19
    move-result-object v1

    #@1a
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v2

    #@1e
    move v1, v0

    #@1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_32

    #@25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Ljava/util/List;

    #@2b
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@2e
    move-result v0

    #@2f
    add-int/2addr v0, v1

    #@30
    move v1, v0

    #@31
    goto :goto_1f

    #@32
    :cond_32
    invoke-direct {p0}, Lcom/facebook/widget/GraphObjectAdapter;->shouldShowActivityCircleCell()Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_3b

    #@38
    add-int/lit8 v0, v1, 0x1

    #@3a
    goto :goto_9

    #@3b
    :cond_3b
    move v0, v1

    #@3c
    goto :goto_9
.end method

.method public getCursor()Lcom/facebook/widget/GraphObjectCursor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/GraphObjectCursor",
            "<TT;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    #@2
    return-object v0
.end method

.method public getDataNeededListener()Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;

    #@2
    return-object v0
.end method

.method protected getDefaultPicture()I
    .registers 2

    #@0
    const v0, 0x7f02001a

    #@3
    return v0
.end method

.method getFilter()Lcom/facebook/widget/GraphObjectAdapter$Filter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/GraphObjectAdapter$Filter",
            "<TT;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->filter:Lcom/facebook/widget/GraphObjectAdapter$Filter;

    #@2
    return-object v0
.end method

.method protected getGraphObjectRowLayoutId(Lcom/facebook/model/GraphObject;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    #@0
    const v0, 0x7f030005

    #@3
    return v0
.end method

.method protected getGraphObjectView(Lcom/facebook/model/GraphObject;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    #@0
    if-nez p2, :cond_6

    #@2
    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->createGraphObjectView(Lcom/facebook/model/GraphObject;)Landroid/view/View;

    #@5
    move-result-object p2

    #@6
    :cond_6
    invoke-virtual {p0, p2, p1}, Lcom/facebook/widget/GraphObjectAdapter;->populateGraphObjectView(Landroid/view/View;Lcom/facebook/model/GraphObject;)V

    #@9
    return-object p2
.end method

.method public getGraphObjectsById(Ljava/util/Collection;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@8
    new-instance v1, Ljava/util/ArrayList;

    #@a
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@d
    move-result v2

    #@e
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_2f

    #@1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/lang/String;

    #@21
    iget-object v3, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsById:Ljava/util/Map;

    #@23
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lcom/facebook/model/GraphObject;

    #@29
    if-eqz v0, :cond_15

    #@2b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2e
    goto :goto_15

    #@2f
    :cond_2f
    return-object v1
.end method

.method public getGroupByField()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->groupByField:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getIdOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    invoke-interface {p1}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    const-string v1, "id"

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_19

    #@c
    const-string v0, "id"

    #@e
    invoke-interface {p1, v0}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    instance-of v1, v0, Ljava/lang/String;

    #@14
    if-eqz v1, :cond_19

    #@16
    check-cast v0, Ljava/lang/String;

    #@18
    return-object v0

    #@19
    :cond_19
    new-instance v0, Lcom/facebook/FacebookException;

    #@1b
    const-string v1, "Received an object without an ID."

    #@1d
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 5

    #@0
    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    #@7
    move-result-object v1

    #@8
    sget-object v2, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->GRAPH_OBJECT:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    #@a
    if-ne v1, v2, :cond_f

    #@c
    iget-object v0, v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    goto :goto_e
.end method

.method public getItemId(I)J
    .registers 4

    #@0
    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_17

    #@6
    iget-object v1, v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    #@8
    if-eqz v1, :cond_17

    #@a
    iget-object v0, v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    #@c
    invoke-virtual {p0, v0}, Lcom/facebook/widget/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_17

    #@12
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@15
    move-result-wide v0

    #@16
    :goto_16
    return-wide v0

    #@17
    :cond_17
    const-wide/16 v0, 0x0

    #@19
    goto :goto_16
.end method

.method public getItemViewType(I)I
    .registers 4

    #@0
    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/facebook/widget/GraphObjectAdapter$3;->$SwitchMap$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type:[I

    #@6
    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->ordinal()I

    #@d
    move-result v0

    #@e
    aget v0, v1, v0

    #@10
    packed-switch v0, :pswitch_data_22

    #@13
    new-instance v0, Lcom/facebook/FacebookException;

    #@15
    const-string v1, "Unexpected type of section and item."

    #@17
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    :pswitch_1b
    const/4 v0, 0x0

    #@1c
    :goto_1c
    return v0

    #@1d
    :pswitch_1d
    const/4 v0, 0x1

    #@1e
    goto :goto_1c

    #@1f
    :pswitch_1f
    const/4 v0, 0x2

    #@20
    goto :goto_1c

    #@21
    nop

    #@22
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1d
        :pswitch_1f
    .end packed-switch
.end method

.method public getOnErrorListener()Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->onErrorListener:Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;

    #@2
    return-object v0
.end method

.method getPictureFieldSpecifier()Ljava/lang/String;
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->createGraphObjectView(Lcom/facebook/model/GraphObject;)Landroid/view/View;

    #@4
    move-result-object v0

    #@5
    const v2, 0x7f04001b

    #@8
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/widget/ImageView;

    #@e
    if-nez v0, :cond_12

    #@10
    move-object v0, v1

    #@11
    :goto_11
    return-object v0

    #@12
    :cond_12
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@15
    move-result-object v0

    #@16
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@18
    const-string v2, "picture.height(%d).width(%d)"

    #@1a
    const/4 v3, 0x2

    #@1b
    new-array v3, v3, [Ljava/lang/Object;

    #@1d
    const/4 v4, 0x0

    #@1e
    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@20
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v5

    #@24
    aput-object v5, v3, v4

    #@26
    const/4 v4, 0x1

    #@27
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v0

    #@2d
    aput-object v0, v3, v4

    #@2f
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    goto :goto_11
.end method

.method protected getPictureUriOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/net/URI;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/net/URI;"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    const-string v0, "picture"

    #@3
    invoke-interface {p1, v0}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    instance-of v2, v0, Ljava/lang/String;

    #@9
    if-eqz v2, :cond_16

    #@b
    check-cast v0, Ljava/lang/String;

    #@d
    move-object v2, v0

    #@e
    :goto_e
    if-eqz v2, :cond_35

    #@10
    :try_start_10
    new-instance v0, Ljava/net/URI;

    #@12
    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_15} :catch_34

    #@15
    :goto_15
    return-object v0

    #@16
    :cond_16
    instance-of v2, v0, Lorg/json/JSONObject;

    #@18
    if-eqz v2, :cond_37

    #@1a
    check-cast v0, Lorg/json/JSONObject;

    #@1c
    invoke-static {v0}, Lcom/facebook/model/GraphObject$Factory;->create(Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    #@1f
    move-result-object v0

    #@20
    const-class v2, Lcom/facebook/widget/GraphObjectAdapter$ItemPicture;

    #@22
    invoke-interface {v0, v2}, Lcom/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Lcom/facebook/widget/GraphObjectAdapter$ItemPicture;

    #@28
    invoke-interface {v0}, Lcom/facebook/widget/GraphObjectAdapter$ItemPicture;->getData()Lcom/facebook/widget/GraphObjectAdapter$ItemPictureData;

    #@2b
    move-result-object v0

    #@2c
    if-eqz v0, :cond_37

    #@2e
    invoke-interface {v0}, Lcom/facebook/widget/GraphObjectAdapter$ItemPictureData;->getUrl()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    move-object v2, v0

    #@33
    goto :goto_e

    #@34
    :catch_34
    move-exception v0

    #@35
    :cond_35
    move-object v0, v1

    #@36
    goto :goto_15

    #@37
    :cond_37
    move-object v2, v1

    #@38
    goto :goto_e
.end method

.method getPosition(Ljava/lang/String;Lcom/facebook/model/GraphObject;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)I"
        }
    .end annotation

    #@0
    const/4 v4, 0x1

    #@1
    const/4 v3, -0x1

    #@2
    const/4 v2, 0x0

    #@3
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    #@5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v5

    #@9
    move v1, v2

    #@a
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_63

    #@10
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/String;

    #@16
    iget-boolean v6, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    #@18
    if-eqz v6, :cond_1c

    #@1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    :cond_1c
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v6

    #@20
    if-eqz v6, :cond_27

    #@22
    move v0, v4

    #@23
    :goto_23
    if-nez v0, :cond_36

    #@25
    move v0, v3

    #@26
    :goto_26
    return v0

    #@27
    :cond_27
    iget-object v6, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    #@29
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@32
    move-result v0

    #@33
    add-int/2addr v0, v1

    #@34
    move v1, v0

    #@35
    goto :goto_a

    #@36
    :cond_36
    if-nez p2, :cond_40

    #@38
    iget-boolean v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    #@3a
    if-eqz v0, :cond_3d

    #@3c
    move v2, v4

    #@3d
    :cond_3d
    sub-int v0, v1, v2

    #@3f
    goto :goto_26

    #@40
    :cond_40
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    #@42
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    move-result-object v0

    #@46
    check-cast v0, Ljava/util/ArrayList;

    #@48
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@4b
    move-result-object v2

    #@4c
    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_61

    #@52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@55
    move-result-object v0

    #@56
    check-cast v0, Lcom/facebook/model/GraphObject;

    #@58
    invoke-static {v0, p2}, Lcom/facebook/model/GraphObject$Factory;->hasSameId(Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObject;)Z

    #@5b
    move-result v0

    #@5c
    if-nez v0, :cond_65

    #@5e
    add-int/lit8 v1, v1, 0x1

    #@60
    goto :goto_4c

    #@61
    :cond_61
    move v0, v3

    #@62
    goto :goto_26

    #@63
    :cond_63
    move v0, v2

    #@64
    goto :goto_23

    #@65
    :cond_65
    move v0, v1

    #@66
    goto :goto_26
.end method

.method public getPositionForSection(I)I
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    iget-boolean v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    #@3
    if-eqz v1, :cond_2a

    #@5
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    #@7
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@a
    move-result v1

    #@b
    add-int/lit8 v1, v1, -0x1

    #@d
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    #@10
    move-result v1

    #@11
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@14
    move-result v1

    #@15
    iget-object v2, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    #@17
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@1a
    move-result v2

    #@1b
    if-ge v1, v2, :cond_2a

    #@1d
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    #@1f
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/lang/String;

    #@25
    const/4 v1, 0x0

    #@26
    invoke-virtual {p0, v0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->getPosition(Ljava/lang/String;Lcom/facebook/model/GraphObject;)I

    #@29
    move-result v0

    #@2a
    :cond_2a
    return v0
.end method

.method getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem",
            "<TT;>;"
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    #@3
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_b

    #@9
    move-object v0, v2

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    iget-boolean v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    #@d
    if-nez v0, :cond_5b

    #@f
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    #@11
    const/4 v1, 0x0

    #@12
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljava/lang/String;

    #@18
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    #@1a
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Ljava/util/List;

    #@20
    if-ltz p1, :cond_3f

    #@22
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@25
    move-result v1

    #@26
    if-ge p1, v1, :cond_3f

    #@28
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    #@2a
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Ljava/util/ArrayList;

    #@30
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v1

    #@34
    check-cast v1, Lcom/facebook/model/GraphObject;

    #@36
    move-object v2, v0

    #@37
    :goto_37
    if-eqz v2, :cond_91

    #@39
    new-instance v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    #@3b
    invoke-direct {v0, v2, v1}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;-><init>(Ljava/lang/String;Lcom/facebook/model/GraphObject;)V

    #@3e
    goto :goto_a

    #@3f
    :cond_3f
    sget-boolean v0, Lcom/facebook/widget/GraphObjectAdapter;->$assertionsDisabled:Z

    #@41
    if-nez v0, :cond_55

    #@43
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;

    #@45
    if-eqz v0, :cond_4f

    #@47
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    #@49
    invoke-interface {v0}, Lcom/facebook/widget/GraphObjectCursor;->areMoreObjectsAvailable()Z

    #@4c
    move-result v0

    #@4d
    if-nez v0, :cond_55

    #@4f
    :cond_4f
    new-instance v0, Ljava/lang/AssertionError;

    #@51
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@54
    throw v0

    #@55
    :cond_55
    new-instance v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    #@57
    invoke-direct {v0, v2, v2}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;-><init>(Ljava/lang/String;Lcom/facebook/model/GraphObject;)V

    #@5a
    goto :goto_a

    #@5b
    :cond_5b
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    #@5d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@60
    move-result-object v3

    #@61
    :goto_61
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@64
    move-result v0

    #@65
    if-eqz v0, :cond_99

    #@67
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6a
    move-result-object v0

    #@6b
    check-cast v0, Ljava/lang/String;

    #@6d
    add-int/lit8 v4, p1, -0x1

    #@6f
    if-nez p1, :cond_74

    #@71
    move-object v1, v2

    #@72
    move-object v2, v0

    #@73
    goto :goto_37

    #@74
    :cond_74
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    #@76
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    move-result-object v1

    #@7a
    check-cast v1, Ljava/util/List;

    #@7c
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@7f
    move-result v5

    #@80
    if-ge v4, v5, :cond_8a

    #@82
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@85
    move-result-object v1

    #@86
    check-cast v1, Lcom/facebook/model/GraphObject;

    #@88
    move-object v2, v0

    #@89
    goto :goto_37

    #@8a
    :cond_8a
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@8d
    move-result v0

    #@8e
    sub-int p1, v4, v0

    #@90
    goto :goto_61

    #@91
    :cond_91
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@93
    const-string v1, "position"

    #@95
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@98
    throw v0

    #@99
    :cond_99
    move-object v1, v2

    #@9a
    goto :goto_37
.end method

.method public getSectionForPosition(I)I
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    #@4
    move-result-object v1

    #@5
    if-eqz v1, :cond_27

    #@7
    invoke-virtual {v1}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    #@a
    move-result-object v2

    #@b
    sget-object v3, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->ACTIVITY_CIRCLE:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    #@d
    if-eq v2, v3, :cond_27

    #@f
    iget-object v2, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    #@11
    iget-object v1, v1, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->sectionKey:Ljava/lang/String;

    #@13
    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    #@16
    move-result v1

    #@17
    iget-object v2, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    #@19
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@1c
    move-result v2

    #@1d
    add-int/lit8 v2, v2, -0x1

    #@1f
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@22
    move-result v1

    #@23
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@26
    move-result v0

    #@27
    :cond_27
    return v0
.end method

.method protected getSectionHeaderView(Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    #@0
    check-cast p2, Landroid/widget/TextView;

    #@2
    if-nez p2, :cond_14

    #@4
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->inflater:Landroid/view/LayoutInflater;

    #@6
    const v1, 0x7f030006

    #@9
    const/4 v2, 0x0

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/widget/TextView;

    #@10
    :goto_10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@13
    return-object v0

    #@14
    :cond_14
    move-object v0, p2

    #@15
    goto :goto_10
.end method

.method protected getSectionKeyOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->groupByField:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_1f

    #@5
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->groupByField:Ljava/lang/String;

    #@7
    invoke-interface {p1, v0}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/String;

    #@d
    if-eqz v0, :cond_1f

    #@f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@12
    move-result v1

    #@13
    if-lez v1, :cond_1f

    #@15
    const/4 v1, 0x0

    #@16
    const/4 v2, 0x1

    #@17
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    :cond_1f
    if-eqz v0, :cond_22

    #@21
    :goto_21
    return-object v0

    #@22
    :cond_22
    const-string v0, ""

    #@24
    goto :goto_21
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    #@2
    if-eqz v0, :cond_b

    #@4
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    #@6
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Ljava/lang/Object;

    #@e
    goto :goto_a
.end method

.method public getShowCheckbox()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->showCheckbox:Z

    #@2
    return v0
.end method

.method public getShowPicture()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->showPicture:Z

    #@2
    return v0
.end method

.method public getSortFields()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sortFields:Ljava/util/List;

    #@2
    return-object v0
.end method

.method protected getSubTitleOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected getTitleOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    #@0
    const-string v0, "name"

    #@2
    invoke-interface {p1, v0}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    #@0
    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/facebook/widget/GraphObjectAdapter$3;->$SwitchMap$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type:[I

    #@6
    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->ordinal()I

    #@d
    move-result v2

    #@e
    aget v1, v1, v2

    #@10
    packed-switch v1, :pswitch_data_4a

    #@13
    new-instance v0, Lcom/facebook/FacebookException;

    #@15
    const-string v1, "Unexpected type of section and item."

    #@17
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    :pswitch_1b
    iget-object v0, v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->sectionKey:Ljava/lang/String;

    #@1d
    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionHeaderView(Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@20
    move-result-object v0

    #@21
    :goto_21
    return-object v0

    #@22
    :pswitch_22
    iget-object v0, v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    #@24
    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/widget/GraphObjectAdapter;->getGraphObjectView(Lcom/facebook/model/GraphObject;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@27
    move-result-object v0

    #@28
    goto :goto_21

    #@29
    :pswitch_29
    sget-boolean v0, Lcom/facebook/widget/GraphObjectAdapter;->$assertionsDisabled:Z

    #@2b
    if-nez v0, :cond_3f

    #@2d
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    #@2f
    invoke-interface {v0}, Lcom/facebook/widget/GraphObjectCursor;->areMoreObjectsAvailable()Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_39

    #@35
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;

    #@37
    if-nez v0, :cond_3f

    #@39
    :cond_39
    new-instance v0, Ljava/lang/AssertionError;

    #@3b
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@3e
    throw v0

    #@3f
    :cond_3f
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;

    #@41
    invoke-interface {v0}, Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;->onDataNeeded()V

    #@44
    invoke-direct {p0, p2, p3}, Lcom/facebook/widget/GraphObjectAdapter;->getActivityCircleView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@47
    move-result-object v0

    #@48
    goto :goto_21

    #@49
    nop

    #@4a
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_22
        :pswitch_29
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    #@0
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public isEnabled(I)Z
    .registers 4

    #@0
    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    #@7
    move-result-object v0

    #@8
    sget-object v1, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->GRAPH_OBJECT:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    #@a
    if-ne v0, v1, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d
.end method

.method isGraphObjectSelected(Ljava/lang/String;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected populateGraphObjectView(Landroid/view/View;Lcom/facebook/model/GraphObject;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation

    #@0
    invoke-virtual {p0, p2}, Lcom/facebook/widget/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@7
    invoke-virtual {p0, p2}, Lcom/facebook/widget/GraphObjectAdapter;->getTitleOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/CharSequence;

    #@a
    move-result-object v2

    #@b
    const v0, 0x7f04001d

    #@e
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/widget/TextView;

    #@14
    if-eqz v0, :cond_1b

    #@16
    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    #@18
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@1b
    :cond_1b
    invoke-virtual {p0, p2}, Lcom/facebook/widget/GraphObjectAdapter;->getSubTitleOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/CharSequence;

    #@1e
    move-result-object v2

    #@1f
    const v0, 0x7f040025

    #@22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Landroid/widget/TextView;

    #@28
    if-eqz v0, :cond_35

    #@2a
    if-eqz v2, :cond_83

    #@2c
    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    #@2e
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@31
    const/4 v2, 0x0

    #@32
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    #@35
    :cond_35
    :goto_35
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->getShowCheckbox()Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_4b

    #@3b
    const v0, 0x7f04001a

    #@3e
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Landroid/widget/CheckBox;

    #@44
    invoke-virtual {p0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->isGraphObjectSelected(Ljava/lang/String;)Z

    #@47
    move-result v2

    #@48
    invoke-virtual {p0, v0, v2}, Lcom/facebook/widget/GraphObjectAdapter;->updateCheckboxState(Landroid/widget/CheckBox;Z)V

    #@4b
    :cond_4b
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->getShowPicture()Z

    #@4e
    move-result v0

    #@4f
    if-eqz v0, :cond_82

    #@51
    invoke-virtual {p0, p2}, Lcom/facebook/widget/GraphObjectAdapter;->getPictureUriOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/net/URI;

    #@54
    move-result-object v2

    #@55
    if-eqz v2, :cond_82

    #@57
    const v0, 0x7f04001b

    #@5a
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@5d
    move-result-object v0

    #@5e
    check-cast v0, Landroid/widget/ImageView;

    #@60
    iget-object v3, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    #@62
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@65
    move-result v3

    #@66
    if-eqz v3, :cond_89

    #@68
    iget-object v2, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    #@6a
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6d
    move-result-object v1

    #@6e
    check-cast v1, Lcom/facebook/internal/ImageResponse;

    #@70
    invoke-virtual {v1}, Lcom/facebook/internal/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@77
    invoke-virtual {v1}, Lcom/facebook/internal/ImageResponse;->getRequest()Lcom/facebook/internal/ImageRequest;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {v1}, Lcom/facebook/internal/ImageRequest;->getImageUri()Ljava/net/URI;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    #@82
    :cond_82
    :goto_82
    return-void

    #@83
    :cond_83
    const/16 v2, 0x8

    #@85
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    #@88
    goto :goto_35

    #@89
    :cond_89
    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/widget/GraphObjectAdapter;->downloadProfilePicture(Ljava/lang/String;Ljava/net/URI;Landroid/widget/ImageView;)V

    #@8c
    goto :goto_82
.end method

.method public prioritizeViewRange(III)V
    .registers 9

    #@0
    if-lt p2, p1, :cond_a

    #@2
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    #@4
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_b

    #@a
    :cond_a
    return-void

    #@b
    :cond_b
    move v1, p2

    #@c
    :goto_c
    if-ltz v1, :cond_2d

    #@e
    invoke-virtual {p0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    #@11
    move-result-object v0

    #@12
    iget-object v2, v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    #@14
    if-eqz v2, :cond_29

    #@16
    iget-object v0, v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    #@18
    invoke-virtual {p0, v0}, Lcom/facebook/widget/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    iget-object v2, p0, Lcom/facebook/widget/GraphObjectAdapter;->pendingRequests:Ljava/util/Map;

    #@1e
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lcom/facebook/internal/ImageRequest;

    #@24
    if-eqz v0, :cond_29

    #@26
    invoke-static {v0}, Lcom/facebook/internal/ImageDownloader;->prioritizeRequest(Lcom/facebook/internal/ImageRequest;)V

    #@29
    :cond_29
    add-int/lit8 v0, v1, -0x1

    #@2b
    move v1, v0

    #@2c
    goto :goto_c

    #@2d
    :cond_2d
    const/4 v0, 0x0

    #@2e
    sub-int v1, p1, p3

    #@30
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@33
    move-result v0

    #@34
    add-int v1, p2, p3

    #@36
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->getCount()I

    #@39
    move-result v2

    #@3a
    add-int/lit8 v2, v2, -0x1

    #@3c
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@3f
    move-result v1

    #@40
    new-instance v2, Ljava/util/ArrayList;

    #@42
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@45
    :goto_45
    if-ge v0, p1, :cond_57

    #@47
    invoke-virtual {p0, v0}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    #@4a
    move-result-object v3

    #@4b
    iget-object v4, v3, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    #@4d
    if-eqz v4, :cond_54

    #@4f
    iget-object v3, v3, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    #@51
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@54
    :cond_54
    add-int/lit8 v0, v0, 0x1

    #@56
    goto :goto_45

    #@57
    :cond_57
    add-int/lit8 v0, p2, 0x1

    #@59
    :goto_59
    if-gt v0, v1, :cond_6b

    #@5b
    invoke-virtual {p0, v0}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    #@5e
    move-result-object v3

    #@5f
    iget-object v4, v3, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    #@61
    if-eqz v4, :cond_68

    #@63
    iget-object v3, v3, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    #@65
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@68
    :cond_68
    add-int/lit8 v0, v0, 0x1

    #@6a
    goto :goto_59

    #@6b
    :cond_6b
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@6e
    move-result-object v1

    #@6f
    :cond_6f
    :goto_6f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@72
    move-result v0

    #@73
    if-eqz v0, :cond_a

    #@75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@78
    move-result-object v0

    #@79
    check-cast v0, Lcom/facebook/model/GraphObject;

    #@7b
    invoke-virtual {p0, v0}, Lcom/facebook/widget/GraphObjectAdapter;->getPictureUriOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/net/URI;

    #@7e
    move-result-object v2

    #@7f
    invoke-virtual {p0, v0}, Lcom/facebook/widget/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;

    #@82
    move-result-object v0

    #@83
    iget-object v3, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedProfilePictureIds:Ljava/util/ArrayList;

    #@85
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@88
    move-result v3

    #@89
    iget-object v4, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedProfilePictureIds:Ljava/util/ArrayList;

    #@8b
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8e
    if-nez v3, :cond_6f

    #@90
    const/4 v3, 0x0

    #@91
    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/widget/GraphObjectAdapter;->downloadProfilePicture(Ljava/lang/String;Ljava/net/URI;Landroid/widget/ImageView;)V

    #@94
    goto :goto_6f
.end method

.method public rebuildAndNotify()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/facebook/widget/GraphObjectAdapter;->rebuildSections()V

    #@3
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->notifyDataSetChanged()V

    #@6
    return-void
.end method

.method public setDataNeededListener(Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;

    #@2
    return-void
.end method

.method setFilter(Lcom/facebook/widget/GraphObjectAdapter$Filter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/GraphObjectAdapter$Filter",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->filter:Lcom/facebook/widget/GraphObjectAdapter$Filter;

    #@2
    return-void
.end method

.method public setGroupByField(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->groupByField:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->onErrorListener:Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;

    #@2
    return-void
.end method

.method public setShowCheckbox(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->showCheckbox:Z

    #@2
    return-void
.end method

.method public setShowPicture(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->showPicture:Z

    #@2
    return-void
.end method

.method public setSortFields(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->sortFields:Ljava/util/List;

    #@2
    return-void
.end method

.method updateCheckboxState(Landroid/widget/CheckBox;Z)V
    .registers 3

    #@0
    return-void
.end method
