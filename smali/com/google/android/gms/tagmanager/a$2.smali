.class Lcom/google/android/gms/tagmanager/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/a$a;Lcom/google/android/gms/internal/ij;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aei:Lcom/google/android/gms/tagmanager/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/a;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/a$2;->aei:Lcom/google/android/gms/tagmanager/a;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a$2;->aei:Lcom/google/android/gms/tagmanager/a;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/a;->b(Lcom/google/android/gms/tagmanager/a;)V

    #@5
    return-void
.end method
