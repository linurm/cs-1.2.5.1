.class synthetic Lcom/facebook/widget/GraphObjectAdapter$3;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/GraphObjectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    invoke-static {}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->values()[Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    new-array v0, v0, [I

    #@7
    sput-object v0, Lcom/facebook/widget/GraphObjectAdapter$3;->$SwitchMap$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type:[I

    #@9
    :try_start_9
    sget-object v0, Lcom/facebook/widget/GraphObjectAdapter$3;->$SwitchMap$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type:[I

    #@b
    sget-object v1, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->SECTION_HEADER:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    #@d
    invoke-virtual {v1}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->ordinal()I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x1

    #@12
    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2b

    #@14
    :goto_14
    :try_start_14
    sget-object v0, Lcom/facebook/widget/GraphObjectAdapter$3;->$SwitchMap$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type:[I

    #@16
    sget-object v1, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->GRAPH_OBJECT:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    #@18
    invoke-virtual {v1}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->ordinal()I

    #@1b
    move-result v1

    #@1c
    const/4 v2, 0x2

    #@1d
    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    #@1f
    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/facebook/widget/GraphObjectAdapter$3;->$SwitchMap$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type:[I

    #@21
    sget-object v1, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->ACTIVITY_CIRCLE:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    #@23
    invoke-virtual {v1}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->ordinal()I

    #@26
    move-result v1

    #@27
    const/4 v2, 0x3

    #@28
    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2f

    #@2a
    :goto_2a
    return-void

    #@2b
    :catch_2b
    move-exception v0

    #@2c
    goto :goto_14

    #@2d
    :catch_2d
    move-exception v0

    #@2e
    goto :goto_1f

    #@2f
    :catch_2f
    move-exception v0

    #@30
    goto :goto_2a
.end method
