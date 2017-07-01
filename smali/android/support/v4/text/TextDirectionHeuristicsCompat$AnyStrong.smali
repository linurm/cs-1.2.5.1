.class Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnyStrong"
.end annotation


# static fields
.field public static final INSTANCE_LTR:Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;

.field public static final INSTANCE_RTL:Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;


# instance fields
.field private final mLookForRtl:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;-><init>(Z)V

    #@6
    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->INSTANCE_RTL:Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;

    #@8
    new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {v0, v1}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;-><init>(Z)V

    #@e
    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->INSTANCE_LTR:Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;

    #@10
    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-boolean p1, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    #@5
    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .registers 9

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    move v3, p2

    #@3
    move v0, v2

    #@4
    :goto_4
    add-int v4, p2, p3

    #@6
    if-ge v3, v4, :cond_28

    #@8
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@b
    move-result v4

    #@c
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    #@f
    move-result v4

    #@10
    # invokes: Landroid/support/v4/text/TextDirectionHeuristicsCompat;->isRtlText(I)I
    invoke-static {v4}, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->access$200(I)I

    #@13
    move-result v4

    #@14
    packed-switch v4, :pswitch_data_32

    #@17
    :goto_17
    add-int/lit8 v3, v3, 0x1

    #@19
    goto :goto_4

    #@1a
    :pswitch_1a
    iget-boolean v0, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    #@1c
    if-eqz v0, :cond_20

    #@1e
    move v1, v2

    #@1f
    :cond_1f
    :goto_1f
    return v1

    #@20
    :cond_20
    move v0, v1

    #@21
    goto :goto_17

    #@22
    :pswitch_22
    iget-boolean v0, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    #@24
    if-eqz v0, :cond_1f

    #@26
    move v0, v1

    #@27
    goto :goto_17

    #@28
    :cond_28
    if-eqz v0, :cond_30

    #@2a
    iget-boolean v0, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    #@2c
    if-nez v0, :cond_1f

    #@2e
    move v1, v2

    #@2f
    goto :goto_1f

    #@30
    :cond_30
    const/4 v1, 0x2

    #@31
    goto :goto_1f

    #@32
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_22
    .end packed-switch
.end method
