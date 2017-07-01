.class Lcom/google/android/gms/tagmanager/o$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/bg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/bg",
        "<",
        "Lcom/google/android/gms/internal/le$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aeS:Lcom/google/android/gms/tagmanager/o;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tagmanager/o;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/o$b;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/tagmanager/o$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/o$b;-><init>(Lcom/google/android/gms/tagmanager/o;)V

    #@3
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/le$a;)V
    .registers 7

    #@0
    iget-object v0, p1, Lcom/google/android/gms/internal/le$a;->aiH:Lcom/google/android/gms/internal/c$j;

    #@2
    if-eqz v0, :cond_f

    #@4
    iget-object v0, p1, Lcom/google/android/gms/internal/le$a;->aiH:Lcom/google/android/gms/internal/c$j;

    #@6
    :goto_6
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o$b;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@8
    iget-wide v2, p1, Lcom/google/android/gms/internal/le$a;->aiG:J

    #@a
    const/4 v4, 0x1

    #@b
    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/internal/c$j;JZ)V

    #@e
    return-void

    #@f
    :cond_f
    iget-object v1, p1, Lcom/google/android/gms/internal/le$a;->fK:Lcom/google/android/gms/internal/c$f;

    #@11
    new-instance v0, Lcom/google/android/gms/internal/c$j;

    #@13
    invoke-direct {v0}, Lcom/google/android/gms/internal/c$j;-><init>()V

    #@16
    iput-object v1, v0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    #@18
    const/4 v2, 0x0

    #@19
    iput-object v2, v0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    #@1b
    iget-object v1, v1, Lcom/google/android/gms/internal/c$f;->fg:Ljava/lang/String;

    #@1d
    iput-object v1, v0, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    #@1f
    goto :goto_6
.end method

.method public a(Lcom/google/android/gms/tagmanager/bg$a;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$b;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/o;->b(Lcom/google/android/gms/tagmanager/o;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_f

    #@8
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$b;->aeS:Lcom/google/android/gms/tagmanager/o;

    #@a
    const-wide/16 v2, 0x0

    #@c
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/tagmanager/o;J)V

    #@f
    :cond_f
    return-void
.end method

.method public synthetic i(Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p1, Lcom/google/android/gms/internal/le$a;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/o$b;->a(Lcom/google/android/gms/internal/le$a;)V

    #@5
    return-void
.end method

.method public lv()V
    .registers 1

    #@0
    return-void
.end method
