.class Lcom/google/android/gms/tagmanager/v$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/v;->a(Lcom/google/android/gms/tagmanager/DataLayer$c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic afp:Lcom/google/android/gms/tagmanager/v;

.field final synthetic afq:Lcom/google/android/gms/tagmanager/DataLayer$c$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/v;Lcom/google/android/gms/tagmanager/DataLayer$c$a;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/v$2;->afp:Lcom/google/android/gms/tagmanager/v;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/v$2;->afq:Lcom/google/android/gms/tagmanager/DataLayer$c$a;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/v$2;->afq:Lcom/google/android/gms/tagmanager/DataLayer$c$a;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/v$2;->afp:Lcom/google/android/gms/tagmanager/v;

    #@4
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/v;->a(Lcom/google/android/gms/tagmanager/v;)Ljava/util/List;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer$c$a;->d(Ljava/util/List;)V

    #@b
    return-void
.end method
