.class final Lcom/google/android/gms/internal/dx$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ey$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dx;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ey$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic qz:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/dx$2;->qz:Ljava/lang/String;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ex;)V
    .registers 6

    #@0
    const-string v0, "javascript:%s(%s);"

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    const-string v3, "AFMA_buildAdURL"

    #@8
    aput-object v3, v1, v2

    #@a
    const/4 v2, 0x1

    #@b
    iget-object v3, p0, Lcom/google/android/gms/internal/dx$2;->qz:Ljava/lang/String;

    #@d
    aput-object v3, v1, v2

    #@f
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string v2, "About to execute: "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@29
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ex;->loadUrl(Ljava/lang/String;)V

    #@2c
    return-void
.end method
