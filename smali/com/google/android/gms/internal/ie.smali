.class public Lcom/google/android/gms/internal/ie;
.super Lcom/google/android/gms/internal/hy;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/if;


# instance fields
.field private final Hj:Lcom/google/android/gms/internal/ib;

.field private final Hq:Landroid/os/Parcel;

.field private final Hr:I

.field private Hs:I

.field private Ht:I

.field private final mClassName:Ljava/lang/String;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/if;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/if;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/ie;->CREATOR:Lcom/google/android/gms/internal/if;

    #@7
    return-void
.end method

.method constructor <init>(ILandroid/os/Parcel;Lcom/google/android/gms/internal/ib;)V
    .registers 6

    #@0
    const/4 v1, 0x2

    #@1
    invoke-direct {p0}, Lcom/google/android/gms/internal/hy;-><init>()V

    #@4
    iput p1, p0, Lcom/google/android/gms/internal/ie;->xM:I

    #@6
    invoke-static {p2}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/os/Parcel;

    #@c
    iput-object v0, p0, Lcom/google/android/gms/internal/ie;->Hq:Landroid/os/Parcel;

    #@e
    iput v1, p0, Lcom/google/android/gms/internal/ie;->Hr:I

    #@10
    iput-object p3, p0, Lcom/google/android/gms/internal/ie;->Hj:Lcom/google/android/gms/internal/ib;

    #@12
    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->Hj:Lcom/google/android/gms/internal/ib;

    #@14
    if-nez v0, :cond_1c

    #@16
    const/4 v0, 0x0

    #@17
    iput-object v0, p0, Lcom/google/android/gms/internal/ie;->mClassName:Ljava/lang/String;

    #@19
    :goto_19
    iput v1, p0, Lcom/google/android/gms/internal/ie;->Hs:I

    #@1b
    return-void

    #@1c
    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->Hj:Lcom/google/android/gms/internal/ib;

    #@1e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ib;->fW()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lcom/google/android/gms/internal/ie;->mClassName:Ljava/lang/String;

    #@24
    goto :goto_19
.end method

.method private constructor <init>(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Lcom/google/android/gms/internal/ib;Ljava/lang/String;)V
    .registers 7

    #@0
    const/4 v2, 0x1

    #@1
    invoke-direct {p0}, Lcom/google/android/gms/internal/hy;-><init>()V

    #@4
    iput v2, p0, Lcom/google/android/gms/internal/ie;->xM:I

    #@6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/google/android/gms/internal/ie;->Hq:Landroid/os/Parcel;

    #@c
    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->Hq:Landroid/os/Parcel;

    #@e
    const/4 v1, 0x0

    #@f
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@12
    iput v2, p0, Lcom/google/android/gms/internal/ie;->Hr:I

    #@14
    invoke-static {p2}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/google/android/gms/internal/ib;

    #@1a
    iput-object v0, p0, Lcom/google/android/gms/internal/ie;->Hj:Lcom/google/android/gms/internal/ib;

    #@1c
    invoke-static {p3}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/lang/String;

    #@22
    iput-object v0, p0, Lcom/google/android/gms/internal/ie;->mClassName:Ljava/lang/String;

    #@24
    const/4 v0, 0x2

    #@25
    iput v0, p0, Lcom/google/android/gms/internal/ie;->Hs:I

    #@27
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/hy;)Lcom/google/android/gms/internal/ie;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/hy;",
            ":",
            "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/ie;"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {p0}, Lcom/google/android/gms/internal/ie;->b(Lcom/google/android/gms/internal/hy;)Lcom/google/android/gms/internal/ib;

    #@b
    move-result-object v1

    #@c
    new-instance v2, Lcom/google/android/gms/internal/ie;

    #@e
    check-cast p0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    #@10
    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/internal/ie;-><init>(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Lcom/google/android/gms/internal/ib;Ljava/lang/String;)V

    #@13
    return-object v2
.end method

.method private static a(Lcom/google/android/gms/internal/ib;Lcom/google/android/gms/internal/hy;)V
    .registers 7

    #@0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ib;->b(Ljava/lang/Class;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_83

    #@a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy;->fG()Ljava/util/HashMap;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/hy;->fG()Ljava/util/HashMap;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ib;->a(Ljava/lang/Class;Ljava/util/HashMap;)V

    #@15
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@18
    move-result-object v0

    #@19
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v3

    #@1d
    :cond_1d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_83

    #@23
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Ljava/lang/String;

    #@29
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Lcom/google/android/gms/internal/hy$a;

    #@2f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy$a;->fO()Ljava/lang/Class;

    #@32
    move-result-object v1

    #@33
    if-eqz v1, :cond_1d

    #@35
    :try_start_35
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    check-cast v1, Lcom/google/android/gms/internal/hy;

    #@3b
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/ib;Lcom/google/android/gms/internal/hy;)V
    :try_end_3e
    .catch Ljava/lang/InstantiationException; {:try_start_35 .. :try_end_3e} :catch_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_35 .. :try_end_3e} :catch_61

    #@3e
    goto :goto_1d

    #@3f
    :catch_3f
    move-exception v1

    #@40
    new-instance v2, Ljava/lang/IllegalStateException;

    #@42
    new-instance v3, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string v4, "Could not instantiate an object of type "

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy$a;->fO()Ljava/lang/Class;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@60
    throw v2

    #@61
    :catch_61
    move-exception v1

    #@62
    new-instance v2, Ljava/lang/IllegalStateException;

    #@64
    new-instance v3, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string v4, "Could not access object of type "

    #@6b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy$a;->fO()Ljava/lang/Class;

    #@72
    move-result-object v0

    #@73
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@76
    move-result-object v0

    #@77
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v0

    #@7f
    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@82
    throw v2

    #@83
    :cond_83
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;ILjava/lang/Object;)V
    .registers 7

    #@0
    packed-switch p2, :pswitch_data_72

    #@3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string v2, "Unknown type = "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    :pswitch_1c
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    :goto_1f
    return-void

    #@20
    :pswitch_20
    const-string v0, "\""

    #@22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v1}, Lcom/google/android/gms/internal/in;->aK(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    const-string v1, "\""

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    goto :goto_1f

    #@38
    :pswitch_38
    const-string v0, "\""

    #@3a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    check-cast p3, [B

    #@40
    invoke-static {p3}, Lcom/google/android/gms/internal/ih;->d([B)Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    const-string v1, "\""

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    goto :goto_1f

    #@4e
    :pswitch_4e
    const-string v0, "\""

    #@50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    check-cast p3, [B

    #@56
    invoke-static {p3}, Lcom/google/android/gms/internal/ih;->e([B)Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    const-string v0, "\""

    #@5f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    goto :goto_1f

    #@63
    :pswitch_63
    check-cast p3, Ljava/util/HashMap;

    #@65
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/io;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    #@68
    goto :goto_1f

    #@69
    :pswitch_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6b
    const-string v1, "Method does not accept concrete type."

    #@6d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@70
    throw v0

    #@71
    nop

    #@72
    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_20
        :pswitch_38
        :pswitch_4e
        :pswitch_63
        :pswitch_69
    .end packed-switch
.end method

.method private a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/hy$a;Landroid/os/Parcel;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/android/gms/internal/hy$a",
            "<**>;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    #@0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/hy$a;->fF()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_bc

    #@7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string v2, "Unknown field out type = "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p2}, Lcom/google/android/gms/internal/hy$a;->fF()I

    #@17
    move-result v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    :pswitch_24
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@27
    move-result v0

    #@28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ie;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)V

    #@33
    :goto_33
    return-void

    #@34
    :pswitch_34
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)Ljava/math/BigInteger;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ie;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)V

    #@3f
    goto :goto_33

    #@40
    :pswitch_40
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@43
    move-result-wide v0

    #@44
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    move-result-object v0

    #@4c
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ie;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)V

    #@4f
    goto :goto_33

    #@50
    :pswitch_50
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    #@53
    move-result v0

    #@54
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    move-result-object v0

    #@5c
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ie;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)V

    #@5f
    goto :goto_33

    #@60
    :pswitch_60
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)D

    #@63
    move-result-wide v0

    #@64
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@67
    move-result-object v0

    #@68
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)Ljava/lang/Object;

    #@6b
    move-result-object v0

    #@6c
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ie;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)V

    #@6f
    goto :goto_33

    #@70
    :pswitch_70
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/math/BigDecimal;

    #@73
    move-result-object v0

    #@74
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    move-result-object v0

    #@78
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ie;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)V

    #@7b
    goto :goto_33

    #@7c
    :pswitch_7c
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@7f
    move-result v0

    #@80
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@83
    move-result-object v0

    #@84
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)Ljava/lang/Object;

    #@87
    move-result-object v0

    #@88
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ie;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)V

    #@8b
    goto :goto_33

    #@8c
    :pswitch_8c
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@8f
    move-result-object v0

    #@90
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)Ljava/lang/Object;

    #@93
    move-result-object v0

    #@94
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ie;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)V

    #@97
    goto :goto_33

    #@98
    :pswitch_98
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->r(Landroid/os/Parcel;I)[B

    #@9b
    move-result-object v0

    #@9c
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)Ljava/lang/Object;

    #@9f
    move-result-object v0

    #@a0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ie;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)V

    #@a3
    goto :goto_33

    #@a4
    :pswitch_a4
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)Landroid/os/Bundle;

    #@a7
    move-result-object v0

    #@a8
    invoke-static {v0}, Lcom/google/android/gms/internal/ie;->d(Landroid/os/Bundle;)Ljava/util/HashMap;

    #@ab
    move-result-object v0

    #@ac
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)Ljava/lang/Object;

    #@af
    move-result-object v0

    #@b0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ie;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)V

    #@b3
    goto :goto_33

    #@b4
    :pswitch_b4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b6
    const-string v1, "Method does not accept concrete type."

    #@b8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@bb
    throw v0

    #@bc
    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_24
        :pswitch_34
        :pswitch_40
        :pswitch_50
        :pswitch_60
        :pswitch_70
        :pswitch_7c
        :pswitch_8c
        :pswitch_98
        :pswitch_98
        :pswitch_a4
        :pswitch_b4
    .end packed-switch
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/internal/hy$a;Landroid/os/Parcel;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hy$a",
            "<**>;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    #@0
    const-string v0, "\""

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9
    move-result-object v0

    #@a
    const-string v1, "\":"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    invoke-virtual {p3}, Lcom/google/android/gms/internal/hy$a;->fQ()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_19

    #@15
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/google/android/gms/internal/ie;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/hy$a;Landroid/os/Parcel;I)V

    #@18
    :goto_18
    return-void

    #@19
    :cond_19
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/google/android/gms/internal/ie;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/hy$a;Landroid/os/Parcel;I)V

    #@1c
    goto :goto_18
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/util/HashMap;Landroid/os/Parcel;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hy$a",
            "<**>;>;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    #@0
    invoke-static {p2}, Lcom/google/android/gms/internal/ie;->b(Ljava/util/HashMap;)Ljava/util/HashMap;

    #@3
    move-result-object v6

    #@4
    const/16 v0, 0x7b

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9
    invoke-static {p3}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    #@c
    move-result v7

    #@d
    const/4 v0, 0x0

    #@e
    move v1, v0

    #@f
    :cond_f
    :goto_f
    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    #@12
    move-result v0

    #@13
    if-ge v0, v7, :cond_45

    #@15
    invoke-static {p3}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@18
    move-result v5

    #@19
    invoke-static {v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@1c
    move-result v0

    #@1d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Ljava/util/Map$Entry;

    #@27
    if-eqz v0, :cond_f

    #@29
    if-eqz v1, :cond_30

    #@2b
    const-string v1, ","

    #@2d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    :cond_30
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Ljava/lang/String;

    #@36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@39
    move-result-object v3

    #@3a
    check-cast v3, Lcom/google/android/gms/internal/hy$a;

    #@3c
    move-object v0, p0

    #@3d
    move-object v1, p1

    #@3e
    move-object v4, p3

    #@3f
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ie;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/internal/hy$a;Landroid/os/Parcel;I)V

    #@42
    const/4 v0, 0x1

    #@43
    move v1, v0

    #@44
    goto :goto_f

    #@45
    :cond_45
    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    #@48
    move-result v0

    #@49
    if-eq v0, v7, :cond_64

    #@4b
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@4d
    new-instance v1, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string v2, "Overread allowed size end="

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v1

    #@60
    invoke-direct {v0, v1, p3}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@63
    throw v0

    #@64
    :cond_64
    const/16 v0, 0x7d

    #@66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@69
    return-void
.end method

.method private static b(Lcom/google/android/gms/internal/hy;)Lcom/google/android/gms/internal/ib;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/internal/ib;

    #@2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ib;-><init>(Ljava/lang/Class;)V

    #@9
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/ib;Lcom/google/android/gms/internal/hy;)V

    #@c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ib;->fU()V

    #@f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ib;->fT()V

    #@12
    return-object v0
.end method

.method private static b(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hy$a",
            "<**>;>;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hy$a",
            "<**>;>;>;"
        }
    .end annotation

    #@0
    new-instance v2, Ljava/util/HashMap;

    #@2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v3

    #@d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_2c

    #@13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    move-object v1, v0

    #@18
    check-cast v1, Ljava/util/Map$Entry;

    #@1a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/google/android/gms/internal/hy$a;

    #@20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hy$a;->fN()I

    #@23
    move-result v0

    #@24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    goto :goto_d

    #@2c
    :cond_2c
    return-object v2
.end method

.method private b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/hy$a;Landroid/os/Parcel;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/android/gms/internal/hy$a",
            "<**>;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/hy$a;->fL()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_88

    #@7
    const-string v0, "["

    #@9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    invoke-virtual {p2}, Lcom/google/android/gms/internal/hy$a;->fF()I

    #@f
    move-result v0

    #@10
    packed-switch v0, :pswitch_data_18c

    #@13
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    const-string v1, "Unknown field type out."

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    :pswitch_1b
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->u(Landroid/os/Parcel;I)[I

    #@1e
    move-result-object v0

    #@1f
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/StringBuilder;[I)V

    #@22
    :cond_22
    :goto_22
    const-string v0, "]"

    #@24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    :goto_27
    return-void

    #@28
    :pswitch_28
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->w(Landroid/os/Parcel;I)[Ljava/math/BigInteger;

    #@2b
    move-result-object v0

    #@2c
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    #@2f
    goto :goto_22

    #@30
    :pswitch_30
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->v(Landroid/os/Parcel;I)[J

    #@33
    move-result-object v0

    #@34
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/StringBuilder;[J)V

    #@37
    goto :goto_22

    #@38
    :pswitch_38
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->x(Landroid/os/Parcel;I)[F

    #@3b
    move-result-object v0

    #@3c
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/StringBuilder;[F)V

    #@3f
    goto :goto_22

    #@40
    :pswitch_40
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->y(Landroid/os/Parcel;I)[D

    #@43
    move-result-object v0

    #@44
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/StringBuilder;[D)V

    #@47
    goto :goto_22

    #@48
    :pswitch_48
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->z(Landroid/os/Parcel;I)[Ljava/math/BigDecimal;

    #@4b
    move-result-object v0

    #@4c
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    #@4f
    goto :goto_22

    #@50
    :pswitch_50
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->t(Landroid/os/Parcel;I)[Z

    #@53
    move-result-object v0

    #@54
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/StringBuilder;[Z)V

    #@57
    goto :goto_22

    #@58
    :pswitch_58
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;I)[Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    #@5f
    goto :goto_22

    #@60
    :pswitch_60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@62
    const-string v1, "List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported"

    #@64
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@67
    throw v0

    #@68
    :pswitch_68
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->D(Landroid/os/Parcel;I)[Landroid/os/Parcel;

    #@6b
    move-result-object v1

    #@6c
    array-length v3, v1

    #@6d
    move v0, v2

    #@6e
    :goto_6e
    if-ge v0, v3, :cond_22

    #@70
    if-lez v0, :cond_77

    #@72
    const-string v4, ","

    #@74
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    :cond_77
    aget-object v4, v1, v0

    #@79
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    #@7c
    invoke-virtual {p2}, Lcom/google/android/gms/internal/hy$a;->fS()Ljava/util/HashMap;

    #@7f
    move-result-object v4

    #@80
    aget-object v5, v1, v0

    #@82
    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/ie;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;Landroid/os/Parcel;)V

    #@85
    add-int/lit8 v0, v0, 0x1

    #@87
    goto :goto_6e

    #@88
    :cond_88
    invoke-virtual {p2}, Lcom/google/android/gms/internal/hy$a;->fF()I

    #@8b
    move-result v0

    #@8c
    packed-switch v0, :pswitch_data_1a8

    #@8f
    new-instance v0, Ljava/lang/IllegalStateException;

    #@91
    const-string v1, "Unknown field type out"

    #@93
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@96
    throw v0

    #@97
    :pswitch_97
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    #@9a
    move-result v0

    #@9b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    goto :goto_27

    #@9f
    :pswitch_9f
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)Ljava/math/BigInteger;

    #@a2
    move-result-object v0

    #@a3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a6
    goto :goto_27

    #@a7
    :pswitch_a7
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    #@aa
    move-result-wide v0

    #@ab
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@ae
    goto/16 :goto_27

    #@b0
    :pswitch_b0
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    #@b3
    move-result v0

    #@b4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@b7
    goto/16 :goto_27

    #@b9
    :pswitch_b9
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)D

    #@bc
    move-result-wide v0

    #@bd
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@c0
    goto/16 :goto_27

    #@c2
    :pswitch_c2
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/math/BigDecimal;

    #@c5
    move-result-object v0

    #@c6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c9
    goto/16 :goto_27

    #@cb
    :pswitch_cb
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    #@ce
    move-result v0

    #@cf
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@d2
    goto/16 :goto_27

    #@d4
    :pswitch_d4
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    #@d7
    move-result-object v0

    #@d8
    const-string v1, "\""

    #@da
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v1

    #@de
    invoke-static {v0}, Lcom/google/android/gms/internal/in;->aK(Ljava/lang/String;)Ljava/lang/String;

    #@e1
    move-result-object v0

    #@e2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v0

    #@e6
    const-string v1, "\""

    #@e8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    goto/16 :goto_27

    #@ed
    :pswitch_ed
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->r(Landroid/os/Parcel;I)[B

    #@f0
    move-result-object v0

    #@f1
    const-string v1, "\""

    #@f3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v1

    #@f7
    invoke-static {v0}, Lcom/google/android/gms/internal/ih;->d([B)Ljava/lang/String;

    #@fa
    move-result-object v0

    #@fb
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v0

    #@ff
    const-string v1, "\""

    #@101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    goto/16 :goto_27

    #@106
    :pswitch_106
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->r(Landroid/os/Parcel;I)[B

    #@109
    move-result-object v0

    #@10a
    const-string v1, "\""

    #@10c
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v1

    #@110
    invoke-static {v0}, Lcom/google/android/gms/internal/ih;->e([B)Ljava/lang/String;

    #@113
    move-result-object v0

    #@114
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    const-string v0, "\""

    #@119
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    goto/16 :goto_27

    #@11e
    :pswitch_11e
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)Landroid/os/Bundle;

    #@121
    move-result-object v3

    #@122
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@125
    move-result-object v0

    #@126
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@129
    const-string v1, "{"

    #@12b
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@131
    move-result-object v4

    #@132
    const/4 v0, 0x1

    #@133
    move v1, v0

    #@134
    :goto_134
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@137
    move-result v0

    #@138
    if-eqz v0, :cond_174

    #@13a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13d
    move-result-object v0

    #@13e
    check-cast v0, Ljava/lang/String;

    #@140
    if-nez v1, :cond_147

    #@142
    const-string v1, ","

    #@144
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    :cond_147
    const-string v1, "\""

    #@149
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v1

    #@14d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v1

    #@151
    const-string v5, "\""

    #@153
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    const-string v1, ":"

    #@158
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    const-string v1, "\""

    #@15d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v1

    #@161
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@164
    move-result-object v0

    #@165
    invoke-static {v0}, Lcom/google/android/gms/internal/in;->aK(Ljava/lang/String;)Ljava/lang/String;

    #@168
    move-result-object v0

    #@169
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v0

    #@16d
    const-string v1, "\""

    #@16f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@172
    move v1, v2

    #@173
    goto :goto_134

    #@174
    :cond_174
    const-string v0, "}"

    #@176
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@179
    goto/16 :goto_27

    #@17b
    :pswitch_17b
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->C(Landroid/os/Parcel;I)Landroid/os/Parcel;

    #@17e
    move-result-object v0

    #@17f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    #@182
    invoke-virtual {p2}, Lcom/google/android/gms/internal/hy$a;->fS()Ljava/util/HashMap;

    #@185
    move-result-object v1

    #@186
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ie;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;Landroid/os/Parcel;)V

    #@189
    goto/16 :goto_27

    #@18b
    nop

    #@18c
    :pswitch_data_18c
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_28
        :pswitch_30
        :pswitch_38
        :pswitch_40
        :pswitch_48
        :pswitch_50
        :pswitch_58
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_68
    .end packed-switch

    #@1a8
    :pswitch_data_1a8
    .packed-switch 0x0
        :pswitch_97
        :pswitch_9f
        :pswitch_a7
        :pswitch_b0
        :pswitch_b9
        :pswitch_c2
        :pswitch_cb
        :pswitch_d4
        :pswitch_ed
        :pswitch_106
        :pswitch_11e
        :pswitch_17b
    .end packed-switch
.end method

.method private b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/hy$a;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/android/gms/internal/hy$a",
            "<**>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/hy$a;->fK()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_c

    #@6
    check-cast p3, Ljava/util/ArrayList;

    #@8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ie;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/hy$a;Ljava/util/ArrayList;)V

    #@b
    :goto_b
    return-void

    #@c
    :cond_c
    invoke-virtual {p2}, Lcom/google/android/gms/internal/hy$a;->fE()I

    #@f
    move-result v0

    #@10
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/ie;->a(Ljava/lang/StringBuilder;ILjava/lang/Object;)V

    #@13
    goto :goto_b
.end method

.method private b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/hy$a;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/android/gms/internal/hy$a",
            "<**>;",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    #@0
    const-string v0, "["

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    const/4 v0, 0x0

    #@a
    :goto_a
    if-ge v0, v1, :cond_21

    #@c
    if-eqz v0, :cond_13

    #@e
    const-string v2, ","

    #@10
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    :cond_13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/hy$a;->fE()I

    #@16
    move-result v2

    #@17
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ie;->a(Ljava/lang/StringBuilder;ILjava/lang/Object;)V

    #@1e
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_a

    #@21
    :cond_21
    const-string v0, "]"

    #@23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    return-void
.end method

.method public static d(Landroid/os/Bundle;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/HashMap;

    #@2
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@5
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_21

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/lang/String;

    #@19
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    goto :goto_d

    #@21
    :cond_21
    return-object v1
.end method


# virtual methods
.method protected aF(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    #@0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "Converting to JSON does not require this method."

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method protected aG(Ljava/lang/String;)Z
    .registers 4

    #@0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "Converting to JSON does not require this method."

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ie;->CREATOR:Lcom/google/android/gms/internal/if;

    #@2
    const/4 v0, 0x0

    #@3
    return v0
.end method

.method public fG()Ljava/util/HashMap;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->Hj:Lcom/google/android/gms/internal/ib;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->Hj:Lcom/google/android/gms/internal/ib;

    #@8
    iget-object v1, p0, Lcom/google/android/gms/internal/ie;->mClassName:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ib;->aJ(Ljava/lang/String;)Ljava/util/HashMap;

    #@d
    move-result-object v0

    #@e
    goto :goto_5
.end method

.method public fY()Landroid/os/Parcel;
    .registers 4

    #@0
    const/4 v2, 0x2

    #@1
    iget v0, p0, Lcom/google/android/gms/internal/ie;->Hs:I

    #@3
    packed-switch v0, :pswitch_data_26

    #@6
    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->Hq:Landroid/os/Parcel;

    #@8
    return-object v0

    #@9
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->Hq:Landroid/os/Parcel;

    #@b
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    #@e
    move-result v0

    #@f
    iput v0, p0, Lcom/google/android/gms/internal/ie;->Ht:I

    #@11
    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->Hq:Landroid/os/Parcel;

    #@13
    iget v1, p0, Lcom/google/android/gms/internal/ie;->Ht:I

    #@15
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@18
    iput v2, p0, Lcom/google/android/gms/internal/ie;->Hs:I

    #@1a
    goto :goto_6

    #@1b
    :pswitch_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->Hq:Landroid/os/Parcel;

    #@1d
    iget v1, p0, Lcom/google/android/gms/internal/ie;->Ht:I

    #@1f
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    #@22
    iput v2, p0, Lcom/google/android/gms/internal/ie;->Hs:I

    #@24
    goto :goto_6

    #@25
    nop

    #@26
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1b
    .end packed-switch
.end method

.method fZ()Lcom/google/android/gms/internal/ib;
    .registers 4

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/ie;->Hr:I

    #@2
    packed-switch v0, :pswitch_data_28

    #@5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string v2, "Invalid creation type: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget v2, p0, Lcom/google/android/gms/internal/ie;->Hr:I

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    :pswitch_20
    const/4 v0, 0x0

    #@21
    :goto_21
    return-object v0

    #@22
    :pswitch_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->Hj:Lcom/google/android/gms/internal/ib;

    #@24
    goto :goto_21

    #@25
    :pswitch_25
    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->Hj:Lcom/google/android/gms/internal/ib;

    #@27
    goto :goto_21

    #@28
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_20
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/ie;->xM:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->Hj:Lcom/google/android/gms/internal/ib;

    #@2
    const-string v1, "Cannot convert to JSON on client side."

    #@4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ie;->fY()Landroid/os/Parcel;

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x0

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    const/16 v2, 0x64

    #@13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@16
    iget-object v2, p0, Lcom/google/android/gms/internal/ie;->Hj:Lcom/google/android/gms/internal/ib;

    #@18
    iget-object v3, p0, Lcom/google/android/gms/internal/ie;->mClassName:Ljava/lang/String;

    #@1a
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ib;->aJ(Ljava/lang/String;)Ljava/util/HashMap;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ie;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;Landroid/os/Parcel;)V

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ie;->CREATOR:Lcom/google/android/gms/internal/if;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/if;->a(Lcom/google/android/gms/internal/ie;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
