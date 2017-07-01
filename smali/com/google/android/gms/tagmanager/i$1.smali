.class Lcom/google/android/gms/tagmanager/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/i;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qu:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/i$1;->qu:Landroid/content/Context;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public li()Lcom/google/android/gms/tagmanager/aq;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/i$1;->qu:Landroid/content/Context;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/y;->N(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/aq;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
