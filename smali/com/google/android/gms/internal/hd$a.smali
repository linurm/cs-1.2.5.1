.class final Lcom/google/android/gms/internal/hd$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/hd$a$a;
    }
.end annotation


# instance fields
.field private final GA:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/hb",
            "<*>.f;>;"
        }
    .end annotation
.end field

.field private GB:Z

.field private GC:Landroid/os/IBinder;

.field private GD:Landroid/content/ComponentName;

.field final synthetic GE:Lcom/google/android/gms/internal/hd;

.field private final Gy:Ljava/lang/String;

.field private final Gz:Lcom/google/android/gms/internal/hd$a$a;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hd;Ljava/lang/String;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/hd$a;->GE:Lcom/google/android/gms/internal/hd;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/hd$a;->Gy:Ljava/lang/String;

    #@7
    new-instance v0, Lcom/google/android/gms/internal/hd$a$a;

    #@9
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/hd$a$a;-><init>(Lcom/google/android/gms/internal/hd$a;)V

    #@c
    iput-object v0, p0, Lcom/google/android/gms/internal/hd$a;->Gz:Lcom/google/android/gms/internal/hd$a$a;

    #@e
    new-instance v0, Ljava/util/HashSet;

    #@10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@13
    iput-object v0, p0, Lcom/google/android/gms/internal/hd$a;->GA:Ljava/util/HashSet;

    #@15
    const/4 v0, 0x0

    #@16
    iput v0, p0, Lcom/google/android/gms/internal/hd$a;->mState:I

    #@18
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/hd$a;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/internal/hd$a;->mState:I

    #@2
    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/hd$a;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/hd$a;->GD:Landroid/content/ComponentName;

    #@2
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/hd$a;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/hd$a;->GC:Landroid/os/IBinder;

    #@2
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/hd$a;)Ljava/util/HashSet;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a;->GA:Ljava/util/HashSet;

    #@2
    return-object v0
.end method


# virtual methods
.method public B(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/hd$a;->GB:Z

    #@2
    return-void
.end method

.method public a(Lcom/google/android/gms/internal/hb$f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/hb",
            "<*>.f;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a;->GA:Ljava/util/HashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public b(Lcom/google/android/gms/internal/hb$f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/hb",
            "<*>.f;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a;->GA:Ljava/util/HashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public c(Lcom/google/android/gms/internal/hb$f;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/hb",
            "<*>.f;)Z"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a;->GA:Ljava/util/HashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public fx()Lcom/google/android/gms/internal/hd$a$a;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a;->Gz:Lcom/google/android/gms/internal/hd$a$a;

    #@2
    return-object v0
.end method

.method public fy()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a;->Gy:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public fz()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a;->GA:Ljava/util/HashSet;

    #@2
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a;->GC:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a;->GD:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public getState()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/hd$a;->mState:I

    #@2
    return v0
.end method

.method public isBound()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/hd$a;->GB:Z

    #@2
    return v0
.end method
