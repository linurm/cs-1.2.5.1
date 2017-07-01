.class Lcom/google/android/gms/tagmanager/co$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/co$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/co;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;Lcom/google/android/gms/tagmanager/co$b;Lcom/google/android/gms/tagmanager/co$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic agT:Lcom/google/android/gms/tagmanager/co;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/co;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/co$2;->agT:Lcom/google/android/gms/tagmanager/co;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/r;)Lcom/google/android/gms/tagmanager/cn;
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/tagmanager/cn;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/co$2;->agT:Lcom/google/android/gms/tagmanager/co;

    #@4
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/co;->a(Lcom/google/android/gms/tagmanager/co;)Landroid/content/Context;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/co$2;->agT:Lcom/google/android/gms/tagmanager/co;

    #@a
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/co;->b(Lcom/google/android/gms/tagmanager/co;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/tagmanager/cn;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;)V

    #@11
    return-object v0
.end method
