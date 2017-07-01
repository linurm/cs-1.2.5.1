.class public Lcom/google/android/gms/internal/gn;
.super Ljava/lang/Object;


# static fields
.field private static Cl:Z


# instance fields
.field private Cm:Z

.field private Cn:Z

.field private Co:Ljava/lang/String;

.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Lcom/google/android/gms/internal/gn;->Cl:Z

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    #@0
    invoke-static {}, Lcom/google/android/gms/internal/gn;->es()Z

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/gn;-><init>(Ljava/lang/String;Z)V

    #@7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/gn;->mTag:Ljava/lang/String;

    #@5
    iput-boolean p2, p0, Lcom/google/android/gms/internal/gn;->Cm:Z

    #@7
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/gn;->Cn:Z

    #@a
    return-void
.end method

.method private varargs e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    #@0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/google/android/gms/internal/gn;->Co:Ljava/lang/String;

    #@6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_1f

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    iget-object v2, p0, Lcom/google/android/gms/internal/gn;->Co:Ljava/lang/String;

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    :cond_1f
    return-object v0
.end method

.method public static es()Z
    .registers 1

    #@0
    sget-boolean v0, Lcom/google/android/gms/internal/gn;->Cl:Z

    #@2
    return v0
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gn;->er()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    iget-object v0, p0, Lcom/google/android/gms/internal/gn;->mTag:Ljava/lang/String;

    #@8
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gn;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    :cond_f
    return-void
.end method

.method public varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gn;->eq()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_a

    #@6
    sget-boolean v0, Lcom/google/android/gms/internal/gn;->Cl:Z

    #@8
    if-eqz v0, :cond_13

    #@a
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/gn;->mTag:Ljava/lang/String;

    #@c
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/gn;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    :cond_13
    return-void
.end method

.method public ap(Ljava/lang/String;)V
    .registers 5

    #@0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_a

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    iput-object v0, p0, Lcom/google/android/gms/internal/gn;->Co:Ljava/lang/String;

    #@9
    return-void

    #@a
    :cond_a
    const-string v0, "[%s] "

    #@c
    const/4 v1, 0x1

    #@d
    new-array v1, v1, [Ljava/lang/Object;

    #@f
    const/4 v2, 0x0

    #@10
    aput-object p1, v1, v2

    #@12
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    goto :goto_7
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gn;->eq()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_a

    #@6
    sget-boolean v0, Lcom/google/android/gms/internal/gn;->Cl:Z

    #@8
    if-eqz v0, :cond_13

    #@a
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/gn;->mTag:Ljava/lang/String;

    #@c
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gn;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    :cond_13
    return-void
.end method

.method public varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gn;->mTag:Ljava/lang/String;

    #@2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gn;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gn;->mTag:Ljava/lang/String;

    #@2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gn;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    return-void
.end method

.method public eq()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gn;->Cm:Z

    #@2
    return v0
.end method

.method public er()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gn;->Cn:Z

    #@2
    return v0
.end method
