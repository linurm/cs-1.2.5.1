.class Lcom/google/android/gms/tagmanager/cs$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private agY:Lcom/google/android/gms/internal/d$a;

.field private ahD:Lcom/google/android/gms/tagmanager/by;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/by",
            "<",
            "Lcom/google/android/gms/internal/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/by;Lcom/google/android/gms/internal/d$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/by",
            "<",
            "Lcom/google/android/gms/internal/d$a;",
            ">;",
            "Lcom/google/android/gms/internal/d$a;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cs$b;->ahD:Lcom/google/android/gms/tagmanager/by;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/cs$b;->agY:Lcom/google/android/gms/internal/d$a;

    #@7
    return-void
.end method


# virtual methods
.method public getSize()I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cs$b;->ahD:Lcom/google/android/gms/tagmanager/by;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/by;->getObject()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/d$a;->nZ()I

    #@b
    move-result v1

    #@c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cs$b;->agY:Lcom/google/android/gms/internal/d$a;

    #@e
    if-nez v0, :cond_13

    #@10
    const/4 v0, 0x0

    #@11
    :goto_11
    add-int/2addr v0, v1

    #@12
    return v0

    #@13
    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cs$b;->agY:Lcom/google/android/gms/internal/d$a;

    #@15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/d$a;->nZ()I

    #@18
    move-result v0

    #@19
    goto :goto_11
.end method

.method public mJ()Lcom/google/android/gms/tagmanager/by;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tagmanager/by",
            "<",
            "Lcom/google/android/gms/internal/d$a;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cs$b;->ahD:Lcom/google/android/gms/tagmanager/by;

    #@2
    return-object v0
.end method

.method public mp()Lcom/google/android/gms/internal/d$a;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cs$b;->agY:Lcom/google/android/gms/internal/d$a;

    #@2
    return-object v0
.end method
