.class final Lcom/google/android/gms/internal/gt$a;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gt$a$a;
    }
.end annotation


# static fields
.field private static final FK:Lcom/google/android/gms/internal/gt$a;

.field private static final FL:Lcom/google/android/gms/internal/gt$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/internal/gt$a;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/gt$a;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/gt$a;->FK:Lcom/google/android/gms/internal/gt$a;

    #@7
    new-instance v0, Lcom/google/android/gms/internal/gt$a$a;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gt$a$a;-><init>(Lcom/google/android/gms/internal/gt$1;)V

    #@d
    sput-object v0, Lcom/google/android/gms/internal/gt$a;->FL:Lcom/google/android/gms/internal/gt$a$a;

    #@f
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    return-void
.end method

.method static synthetic fh()Lcom/google/android/gms/internal/gt$a;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/gt$a;->FK:Lcom/google/android/gms/internal/gt$a;

    #@2
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    #@0
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/gt$a;->FL:Lcom/google/android/gms/internal/gt$a$a;

    #@2
    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    #@0
    const/4 v0, -0x2

    #@1
    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    #@0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    #@0
    return-void
.end method
