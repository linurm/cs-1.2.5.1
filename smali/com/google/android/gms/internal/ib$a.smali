.class public Lcom/google/android/gms/internal/ib$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/id;


# instance fields
.field final Ho:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ib$b;",
            ">;"
        }
    .end annotation
.end field

.field final className:Ljava/lang/String;

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/id;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/id;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/ib$a;->CREATOR:Lcom/google/android/gms/internal/id;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ib$b;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/ib$a;->versionCode:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/ib$a;->className:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/internal/ib$a;->Ho:Ljava/util/ArrayList;

    #@9
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hy$a",
            "<**>;>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/internal/ib$a;->versionCode:I

    #@6
    iput-object p1, p0, Lcom/google/android/gms/internal/ib$a;->className:Ljava/lang/String;

    #@8
    invoke-static {p2}, Lcom/google/android/gms/internal/ib$a;->a(Ljava/util/HashMap;)Ljava/util/ArrayList;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/google/android/gms/internal/ib$a;->Ho:Ljava/util/ArrayList;

    #@e
    return-void
.end method

.method private static a(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hy$a",
            "<**>;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ib$b;",
            ">;"
        }
    .end annotation

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    #@6
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@9
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@c
    move-result-object v0

    #@d
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v3

    #@11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_2c

    #@17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/lang/String;

    #@1d
    new-instance v4, Lcom/google/android/gms/internal/ib$b;

    #@1f
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Lcom/google/android/gms/internal/hy$a;

    #@25
    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/internal/ib$b;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/hy$a;)V

    #@28
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    goto :goto_11

    #@2c
    :cond_2c
    move-object v0, v2

    #@2d
    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ib$a;->CREATOR:Lcom/google/android/gms/internal/id;

    #@2
    const/4 v0, 0x0

    #@3
    return v0
.end method

.method fX()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hy$a",
            "<**>;>;"
        }
    .end annotation

    #@0
    new-instance v2, Ljava/util/HashMap;

    #@2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/ib$a;->Ho:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v3

    #@b
    const/4 v0, 0x0

    #@c
    move v1, v0

    #@d
    :goto_d
    if-ge v1, v3, :cond_22

    #@f
    iget-object v0, p0, Lcom/google/android/gms/internal/ib$a;->Ho:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/google/android/gms/internal/ib$b;

    #@17
    iget-object v4, v0, Lcom/google/android/gms/internal/ib$b;->eM:Ljava/lang/String;

    #@19
    iget-object v0, v0, Lcom/google/android/gms/internal/ib$b;->Hp:Lcom/google/android/gms/internal/hy$a;

    #@1b
    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    add-int/lit8 v0, v1, 0x1

    #@20
    move v1, v0

    #@21
    goto :goto_d

    #@22
    :cond_22
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ib$a;->CREATOR:Lcom/google/android/gms/internal/id;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/id;->a(Lcom/google/android/gms/internal/ib$a;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
