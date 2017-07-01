.class Lcom/google/android/gms/tagmanager/v$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/v;->bP(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic afp:Lcom/google/android/gms/tagmanager/v;

.field final synthetic afr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/v;Ljava/lang/String;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/v$3;->afp:Lcom/google/android/gms/tagmanager/v;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/v$3;->afr:Ljava/lang/String;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/v$3;->afp:Lcom/google/android/gms/tagmanager/v;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/v$3;->afr:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/v;->a(Lcom/google/android/gms/tagmanager/v;Ljava/lang/String;)V

    #@7
    return-void
.end method
