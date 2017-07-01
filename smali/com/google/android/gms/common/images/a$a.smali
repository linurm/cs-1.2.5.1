.class final Lcom/google/android/gms/common/images/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    #@5
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    instance-of v0, p1, Lcom/google/android/gms/common/images/a$a;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    if-ne p0, p1, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_5

    #@a
    :cond_a
    check-cast p1, Lcom/google/android/gms/common/images/a$a;

    #@c
    iget-object v0, p1, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    #@e
    iget-object v1, p0, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    iget-object v2, p0, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    #@6
    aput-object v2, v0, v1

    #@8
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@b
    move-result v0

    #@c
    return v0
.end method
