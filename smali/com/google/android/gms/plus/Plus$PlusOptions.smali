.class public final Lcom/google/android/gms/plus/Plus$PlusOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/Plus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlusOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;
    }
.end annotation


# instance fields
.field final abr:Ljava/lang/String;

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
.method private constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions;->abr:Ljava/lang/String;

    #@6
    new-instance v0, Ljava/util/HashSet;

    #@8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@b
    iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions;->abs:Ljava/util/Set;

    #@d
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/plus/Plus$1;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/plus/Plus$PlusOptions;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iget-object v0, p1, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->abr:Ljava/lang/String;

    #@5
    iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions;->abr:Ljava/lang/String;

    #@7
    iget-object v0, p1, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->abs:Ljava/util/Set;

    #@9
    iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions;->abs:Ljava/util/Set;

    #@b
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;Lcom/google/android/gms/plus/Plus$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/Plus$PlusOptions;-><init>(Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;)V

    #@3
    return-void
.end method

.method public static builder()Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;-><init>()V

    #@5
    return-object v0
.end method
