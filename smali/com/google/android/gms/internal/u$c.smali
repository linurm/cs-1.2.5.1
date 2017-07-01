.class final Lcom/google/android/gms/internal/u$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public final kM:Lcom/google/android/gms/internal/u$a;

.field public final kN:Ljava/lang/String;

.field public final kO:Landroid/content/Context;

.field public final kP:Lcom/google/android/gms/internal/k;

.field public final kQ:Lcom/google/android/gms/internal/ev;

.field public kR:Lcom/google/android/gms/internal/ap;

.field public kS:Lcom/google/android/gms/internal/em;

.field public kT:Lcom/google/android/gms/internal/al;

.field public kU:Lcom/google/android/gms/internal/ef;

.field public kV:Lcom/google/android/gms/internal/eg;

.field public kW:Lcom/google/android/gms/internal/as;

.field public kX:Lcom/google/android/gms/internal/dg;

.field public kY:Lcom/google/android/gms/internal/dc;

.field public kZ:Lcom/google/android/gms/internal/cz;

.field public la:Lcom/google/android/gms/internal/ek;

.field public lb:Z

.field private lc:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/eg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/al;Ljava/lang/String;Lcom/google/android/gms/internal/ev;)V
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput-object v1, p0, Lcom/google/android/gms/internal/u$c;->la:Lcom/google/android/gms/internal/ek;

    #@6
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/u$c;->lb:Z

    #@9
    iput-object v1, p0, Lcom/google/android/gms/internal/u$c;->lc:Ljava/util/HashSet;

    #@b
    iget-boolean v0, p2, Lcom/google/android/gms/internal/al;->mf:Z

    #@d
    if-eqz v0, :cond_26

    #@f
    iput-object v1, p0, Lcom/google/android/gms/internal/u$c;->kM:Lcom/google/android/gms/internal/u$a;

    #@11
    :goto_11
    iput-object p2, p0, Lcom/google/android/gms/internal/u$c;->kT:Lcom/google/android/gms/internal/al;

    #@13
    iput-object p3, p0, Lcom/google/android/gms/internal/u$c;->kN:Ljava/lang/String;

    #@15
    iput-object p1, p0, Lcom/google/android/gms/internal/u$c;->kO:Landroid/content/Context;

    #@17
    iput-object p4, p0, Lcom/google/android/gms/internal/u$c;->kQ:Lcom/google/android/gms/internal/ev;

    #@19
    new-instance v0, Lcom/google/android/gms/internal/k;

    #@1b
    new-instance v1, Lcom/google/android/gms/internal/u$b;

    #@1d
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/u$b;-><init>(Lcom/google/android/gms/internal/u$c;)V

    #@20
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/k;-><init>(Lcom/google/android/gms/internal/g;)V

    #@23
    iput-object v0, p0, Lcom/google/android/gms/internal/u$c;->kP:Lcom/google/android/gms/internal/k;

    #@25
    return-void

    #@26
    :cond_26
    new-instance v0, Lcom/google/android/gms/internal/u$a;

    #@28
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/u$a;-><init>(Landroid/content/Context;)V

    #@2b
    iput-object v0, p0, Lcom/google/android/gms/internal/u$c;->kM:Lcom/google/android/gms/internal/u$a;

    #@2d
    iget-object v0, p0, Lcom/google/android/gms/internal/u$c;->kM:Lcom/google/android/gms/internal/u$a;

    #@2f
    iget v1, p2, Lcom/google/android/gms/internal/al;->widthPixels:I

    #@31
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/u$a;->setMinimumWidth(I)V

    #@34
    iget-object v0, p0, Lcom/google/android/gms/internal/u$c;->kM:Lcom/google/android/gms/internal/u$a;

    #@36
    iget v1, p2, Lcom/google/android/gms/internal/al;->heightPixels:I

    #@38
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/u$a;->setMinimumHeight(I)V

    #@3b
    iget-object v0, p0, Lcom/google/android/gms/internal/u$c;->kM:Lcom/google/android/gms/internal/u$a;

    #@3d
    const/4 v1, 0x4

    #@3e
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/u$a;->setVisibility(I)V

    #@41
    goto :goto_11
.end method


# virtual methods
.method public a(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/eg;",
            ">;)V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/u$c;->lc:Ljava/util/HashSet;

    #@2
    return-void
.end method

.method public aq()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/eg;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/u$c;->lc:Ljava/util/HashSet;

    #@2
    return-object v0
.end method
