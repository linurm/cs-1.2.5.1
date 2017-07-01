.class Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirstStrong"
.end annotation


# static fields
.field public static final INSTANCE:Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;

    #@2
    invoke-direct {v0}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;-><init>()V

    #@5
    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .registers 8

    #@0
    const/4 v2, 0x2

    #@1
    move v0, p2

    #@2
    move v1, v2

    #@3
    :goto_3
    add-int v3, p2, p3

    #@5
    if-ge v0, v3, :cond_18

    #@7
    if-ne v1, v2, :cond_18

    #@9
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@c
    move-result v1

    #@d
    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    #@10
    move-result v1

    #@11
    # invokes: Landroid/support/v4/text/TextDirectionHeuristicsCompat;->isRtlTextOrFormat(I)I
    invoke-static {v1}, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->access$100(I)I

    #@14
    move-result v1

    #@15
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_3

    #@18
    :cond_18
    return v1
.end method
