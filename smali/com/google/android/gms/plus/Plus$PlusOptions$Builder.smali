.class public final Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/Plus$PlusOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field abr:Ljava/lang/String;

.field final abs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->abs:Ljava/util/Set;

    #@a
    return-void
.end method


# virtual methods
.method public varargs addActivityTypes([Ljava/lang/String;)Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;
    .registers 5

    #@0
    const-string v0, "activityTypes may not be null."

    #@2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    const/4 v0, 0x0

    #@6
    :goto_6
    array-length v1, p1

    #@7
    if-ge v0, v1, :cond_13

    #@9
    iget-object v1, p0, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->abs:Ljava/util/Set;

    #@b
    aget-object v2, p1, v0

    #@d
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@10
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_6

    #@13
    :cond_13
    return-object p0
.end method

.method public build()Lcom/google/android/gms/plus/Plus$PlusOptions;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/plus/Plus$PlusOptions;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/plus/Plus$PlusOptions;-><init>(Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;Lcom/google/android/gms/plus/Plus$1;)V

    #@6
    return-object v0
.end method

.method public setServerClientId(Ljava/lang/String;)Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->abr:Ljava/lang/String;

    #@2
    return-object p0
.end method
