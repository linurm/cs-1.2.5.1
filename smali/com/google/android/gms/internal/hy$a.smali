.class public Lcom/google/android/gms/internal/hy$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/hz;


# instance fields
.field protected final Hb:I

.field protected final Hc:Z

.field protected final Hd:I

.field protected final He:Z

.field protected final Hf:Ljava/lang/String;

.field protected final Hg:I

.field protected final Hh:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/internal/hy;",
            ">;"
        }
    .end annotation
.end field

.field protected final Hi:Ljava/lang/String;

.field private Hj:Lcom/google/android/gms/internal/ib;

.field private Hk:Lcom/google/android/gms/internal/hy$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/hy$b",
            "<TI;TO;>;"
        }
    .end annotation
.end field

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/hz;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/hz;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/hy$a;->CREATOR:Lcom/google/android/gms/internal/hz;

    #@7
    return-void
.end method

.method constructor <init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ht;)V
    .registers 12

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput p1, p0, Lcom/google/android/gms/internal/hy$a;->xM:I

    #@6
    iput p2, p0, Lcom/google/android/gms/internal/hy$a;->Hb:I

    #@8
    iput-boolean p3, p0, Lcom/google/android/gms/internal/hy$a;->Hc:Z

    #@a
    iput p4, p0, Lcom/google/android/gms/internal/hy$a;->Hd:I

    #@c
    iput-boolean p5, p0, Lcom/google/android/gms/internal/hy$a;->He:Z

    #@e
    iput-object p6, p0, Lcom/google/android/gms/internal/hy$a;->Hf:Ljava/lang/String;

    #@10
    iput p7, p0, Lcom/google/android/gms/internal/hy$a;->Hg:I

    #@12
    if-nez p8, :cond_1d

    #@14
    iput-object v1, p0, Lcom/google/android/gms/internal/hy$a;->Hh:Ljava/lang/Class;

    #@16
    iput-object v1, p0, Lcom/google/android/gms/internal/hy$a;->Hi:Ljava/lang/String;

    #@18
    :goto_18
    if-nez p9, :cond_24

    #@1a
    iput-object v1, p0, Lcom/google/android/gms/internal/hy$a;->Hk:Lcom/google/android/gms/internal/hy$b;

    #@1c
    :goto_1c
    return-void

    #@1d
    :cond_1d
    const-class v0, Lcom/google/android/gms/internal/ie;

    #@1f
    iput-object v0, p0, Lcom/google/android/gms/internal/hy$a;->Hh:Ljava/lang/Class;

    #@21
    iput-object p8, p0, Lcom/google/android/gms/internal/hy$a;->Hi:Ljava/lang/String;

    #@23
    goto :goto_18

    #@24
    :cond_24
    invoke-virtual {p9}, Lcom/google/android/gms/internal/ht;->fC()Lcom/google/android/gms/internal/hy$b;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lcom/google/android/gms/internal/hy$a;->Hk:Lcom/google/android/gms/internal/hy$b;

    #@2a
    goto :goto_1c
.end method

.method protected constructor <init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hy$b;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIZ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/internal/hy;",
            ">;",
            "Lcom/google/android/gms/internal/hy$b",
            "<TI;TO;>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/internal/hy$a;->xM:I

    #@6
    iput p1, p0, Lcom/google/android/gms/internal/hy$a;->Hb:I

    #@8
    iput-boolean p2, p0, Lcom/google/android/gms/internal/hy$a;->Hc:Z

    #@a
    iput p3, p0, Lcom/google/android/gms/internal/hy$a;->Hd:I

    #@c
    iput-boolean p4, p0, Lcom/google/android/gms/internal/hy$a;->He:Z

    #@e
    iput-object p5, p0, Lcom/google/android/gms/internal/hy$a;->Hf:Ljava/lang/String;

    #@10
    iput p6, p0, Lcom/google/android/gms/internal/hy$a;->Hg:I

    #@12
    iput-object p7, p0, Lcom/google/android/gms/internal/hy$a;->Hh:Ljava/lang/Class;

    #@14
    if-nez p7, :cond_1c

    #@16
    const/4 v0, 0x0

    #@17
    iput-object v0, p0, Lcom/google/android/gms/internal/hy$a;->Hi:Ljava/lang/String;

    #@19
    :goto_19
    iput-object p8, p0, Lcom/google/android/gms/internal/hy$a;->Hk:Lcom/google/android/gms/internal/hy$b;

    #@1b
    return-void

    #@1c
    :cond_1c
    invoke-virtual {p7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/google/android/gms/internal/hy$a;->Hi:Ljava/lang/String;

    #@22
    goto :goto_19
.end method

.method public static a(Ljava/lang/String;ILcom/google/android/gms/internal/hy$b;Z)Lcom/google/android/gms/internal/hy$a;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/internal/hy$b",
            "<**>;Z)",
            "Lcom/google/android/gms/internal/hy$a;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/internal/hy$a;

    #@2
    invoke-interface {p2}, Lcom/google/android/gms/internal/hy$b;->fE()I

    #@5
    move-result v1

    #@6
    invoke-interface {p2}, Lcom/google/android/gms/internal/hy$b;->fF()I

    #@9
    move-result v3

    #@a
    const/4 v4, 0x0

    #@b
    const/4 v7, 0x0

    #@c
    move v2, p3

    #@d
    move-object v5, p0

    #@e
    move v6, p1

    #@f
    move-object v8, p2

    #@10
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/hy$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hy$b;)V

    #@13
    return-object v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/hy$a;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/hy;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/hy$a",
            "<TT;TT;>;"
        }
    .end annotation

    #@0
    const/16 v1, 0xb

    #@2
    const/4 v2, 0x0

    #@3
    new-instance v0, Lcom/google/android/gms/internal/hy$a;

    #@5
    const/4 v8, 0x0

    #@6
    move v3, v1

    #@7
    move v4, v2

    #@8
    move-object v5, p0

    #@9
    move v6, p1

    #@a
    move-object v7, p2

    #@b
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/hy$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hy$b;)V

    #@e
    return-object v0
.end method

.method public static b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/hy$a;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/hy;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/hy$a",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation

    #@0
    const/16 v1, 0xb

    #@2
    const/4 v2, 0x1

    #@3
    new-instance v0, Lcom/google/android/gms/internal/hy$a;

    #@5
    const/4 v8, 0x0

    #@6
    move v3, v1

    #@7
    move v4, v2

    #@8
    move-object v5, p0

    #@9
    move v6, p1

    #@a
    move-object v7, p2

    #@b
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/hy$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hy$b;)V

    #@e
    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/hy$a;)Lcom/google/android/gms/internal/hy$b;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hy$a;->Hk:Lcom/google/android/gms/internal/hy$b;

    #@2
    return-object v0
.end method

.method public static g(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/hy$a",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v7, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    new-instance v0, Lcom/google/android/gms/internal/hy$a;

    #@4
    move v2, v1

    #@5
    move v3, v1

    #@6
    move v4, v1

    #@7
    move-object v5, p0

    #@8
    move v6, p1

    #@9
    move-object v8, v7

    #@a
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/hy$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hy$b;)V

    #@d
    return-object v0
.end method

.method public static h(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/hy$a",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v7, 0x0

    #@1
    const/4 v1, 0x4

    #@2
    const/4 v2, 0x0

    #@3
    new-instance v0, Lcom/google/android/gms/internal/hy$a;

    #@5
    move v3, v1

    #@6
    move v4, v2

    #@7
    move-object v5, p0

    #@8
    move v6, p1

    #@9
    move-object v8, v7

    #@a
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/hy$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hy$b;)V

    #@d
    return-object v0
.end method

.method public static i(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/hy$a",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v7, 0x0

    #@1
    const/4 v1, 0x6

    #@2
    const/4 v2, 0x0

    #@3
    new-instance v0, Lcom/google/android/gms/internal/hy$a;

    #@5
    move v3, v1

    #@6
    move v4, v2

    #@7
    move-object v5, p0

    #@8
    move v6, p1

    #@9
    move-object v8, v7

    #@a
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/hy$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hy$b;)V

    #@d
    return-object v0
.end method

.method public static j(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/hy$a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v7, 0x0

    #@1
    const/4 v1, 0x7

    #@2
    const/4 v2, 0x0

    #@3
    new-instance v0, Lcom/google/android/gms/internal/hy$a;

    #@5
    move v3, v1

    #@6
    move v4, v2

    #@7
    move-object v5, p0

    #@8
    move v6, p1

    #@9
    move-object v8, v7

    #@a
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/hy$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hy$b;)V

    #@d
    return-object v0
.end method

.method public static k(Ljava/lang/String;I)Lcom/google/android/gms/internal/hy$a;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/hy$a",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    const/4 v7, 0x0

    #@1
    const/4 v1, 0x7

    #@2
    const/4 v2, 0x1

    #@3
    new-instance v0, Lcom/google/android/gms/internal/hy$a;

    #@5
    move v3, v1

    #@6
    move v4, v2

    #@7
    move-object v5, p0

    #@8
    move v6, p1

    #@9
    move-object v8, v7

    #@a
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/hy$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hy$b;)V

    #@d
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ib;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/hy$a;->Hj:Lcom/google/android/gms/internal/ib;

    #@2
    return-void
.end method

.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/hy$a;->CREATOR:Lcom/google/android/gms/internal/hz;

    #@2
    const/4 v0, 0x0

    #@3
    return v0
.end method

.method public fE()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/hy$a;->Hb:I

    #@2
    return v0
.end method

.method public fF()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/hy$a;->Hd:I

    #@2
    return v0
.end method

.method public fJ()Lcom/google/android/gms/internal/hy$a;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/hy$a",
            "<TI;TO;>;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/internal/hy$a;

    #@2
    iget v1, p0, Lcom/google/android/gms/internal/hy$a;->xM:I

    #@4
    iget v2, p0, Lcom/google/android/gms/internal/hy$a;->Hb:I

    #@6
    iget-boolean v3, p0, Lcom/google/android/gms/internal/hy$a;->Hc:Z

    #@8
    iget v4, p0, Lcom/google/android/gms/internal/hy$a;->Hd:I

    #@a
    iget-boolean v5, p0, Lcom/google/android/gms/internal/hy$a;->He:Z

    #@c
    iget-object v6, p0, Lcom/google/android/gms/internal/hy$a;->Hf:Ljava/lang/String;

    #@e
    iget v7, p0, Lcom/google/android/gms/internal/hy$a;->Hg:I

    #@10
    iget-object v8, p0, Lcom/google/android/gms/internal/hy$a;->Hi:Ljava/lang/String;

    #@12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hy$a;->fR()Lcom/google/android/gms/internal/ht;

    #@15
    move-result-object v9

    #@16
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/hy$a;-><init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ht;)V

    #@19
    return-object v0
.end method

.method public fK()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/hy$a;->Hc:Z

    #@2
    return v0
.end method

.method public fL()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/hy$a;->He:Z

    #@2
    return v0
.end method

.method public fM()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hy$a;->Hf:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public fN()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/hy$a;->Hg:I

    #@2
    return v0
.end method

.method public fO()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/internal/hy;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hy$a;->Hh:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method fP()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hy$a;->Hi:Ljava/lang/String;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/hy$a;->Hi:Ljava/lang/String;

    #@8
    goto :goto_5
.end method

.method public fQ()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hy$a;->Hk:Lcom/google/android/gms/internal/hy$b;

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method fR()Lcom/google/android/gms/internal/ht;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hy$a;->Hk:Lcom/google/android/gms/internal/hy$b;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/hy$a;->Hk:Lcom/google/android/gms/internal/hy$b;

    #@8
    invoke-static {v0}, Lcom/google/android/gms/internal/ht;->a(Lcom/google/android/gms/internal/hy$b;)Lcom/google/android/gms/internal/ht;

    #@b
    move-result-object v0

    #@c
    goto :goto_5
.end method

.method public fS()Ljava/util/HashMap;
    .registers 3
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
    iget-object v0, p0, Lcom/google/android/gms/internal/hy$a;->Hi:Ljava/lang/String;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/hy$a;->Hj:Lcom/google/android/gms/internal/ib;

    #@7
    invoke-static {v0}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    iget-object v0, p0, Lcom/google/android/gms/internal/hy$a;->Hj:Lcom/google/android/gms/internal/ib;

    #@c
    iget-object v1, p0, Lcom/google/android/gms/internal/hy$a;->Hi:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ib;->aJ(Ljava/lang/String;)Ljava/util/HashMap;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)TI;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hy$a;->Hk:Lcom/google/android/gms/internal/hy$b;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hy$b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/hy$a;->xM:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    const/16 v3, 0xa

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string v0, "Field\n"

    #@9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    const-string v0, "            versionCode="

    #@e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget v2, p0, Lcom/google/android/gms/internal/hy$a;->xM:I

    #@14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    const-string v0, "                 typeIn="

    #@1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    iget v2, p0, Lcom/google/android/gms/internal/hy$a;->Hb:I

    #@23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    const-string v0, "            typeInArray="

    #@2c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    iget-boolean v2, p0, Lcom/google/android/gms/internal/hy$a;->Hc:Z

    #@32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    const-string v0, "                typeOut="

    #@3b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    iget v2, p0, Lcom/google/android/gms/internal/hy$a;->Hd:I

    #@41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@48
    const-string v0, "           typeOutArray="

    #@4a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    iget-boolean v2, p0, Lcom/google/android/gms/internal/hy$a;->He:Z

    #@50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@57
    const-string v0, "        outputFieldName="

    #@59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    iget-object v2, p0, Lcom/google/android/gms/internal/hy$a;->Hf:Ljava/lang/String;

    #@5f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@66
    const-string v0, "      safeParcelFieldId="

    #@68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v0

    #@6c
    iget v2, p0, Lcom/google/android/gms/internal/hy$a;->Hg:I

    #@6e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@75
    const-string v0, "       concreteTypeName="

    #@77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hy$a;->fP()Ljava/lang/String;

    #@7e
    move-result-object v2

    #@7f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v0

    #@83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@86
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hy$a;->fO()Ljava/lang/Class;

    #@89
    move-result-object v0

    #@8a
    if-eqz v0, :cond_a1

    #@8c
    const-string v0, "     concreteType.class="

    #@8e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hy$a;->fO()Ljava/lang/Class;

    #@95
    move-result-object v2

    #@96
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@99
    move-result-object v2

    #@9a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v0

    #@9e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a1
    :cond_a1
    const-string v0, "          converterName="

    #@a3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v2

    #@a7
    iget-object v0, p0, Lcom/google/android/gms/internal/hy$a;->Hk:Lcom/google/android/gms/internal/hy$b;

    #@a9
    if-nez v0, :cond_b9

    #@ab
    const-string v0, "null"

    #@ad
    :goto_ad
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v0

    #@b1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v0

    #@b8
    return-object v0

    #@b9
    :cond_b9
    iget-object v0, p0, Lcom/google/android/gms/internal/hy$a;->Hk:Lcom/google/android/gms/internal/hy$b;

    #@bb
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@be
    move-result-object v0

    #@bf
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@c2
    move-result-object v0

    #@c3
    goto :goto_ad
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/hy$a;->CREATOR:Lcom/google/android/gms/internal/hz;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/hy$a;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
