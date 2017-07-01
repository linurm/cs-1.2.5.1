.class Lcom/google/android/gms/tagmanager/cs$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/cs;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/cq$c;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/s$a;Lcom/google/android/gms/tagmanager/s$a;Lcom/google/android/gms/tagmanager/ag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/l$a",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/android/gms/tagmanager/cs$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ahy:Lcom/google/android/gms/tagmanager/cs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cs;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cs$2;->ahy:Lcom/google/android/gms/tagmanager/cs;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/android/gms/tagmanager/cs$b;)I
    .registers 5

    #@0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/cs$b;->getSize()I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    #@0
    check-cast p1, Ljava/lang/String;

    #@2
    check-cast p2, Lcom/google/android/gms/tagmanager/cs$b;

    #@4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tagmanager/cs$2;->a(Ljava/lang/String;Lcom/google/android/gms/tagmanager/cs$b;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
