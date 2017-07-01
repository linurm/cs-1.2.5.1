.class Lcom/google/android/gms/tagmanager/v$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/v;->a(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic afn:Ljava/util/List;

.field final synthetic afo:J

.field final synthetic afp:Lcom/google/android/gms/tagmanager/v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/v;Ljava/util/List;J)V
    .registers 6

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/v$1;->afp:Lcom/google/android/gms/tagmanager/v;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/v$1;->afn:Ljava/util/List;

    #@4
    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/v$1;->afo:J

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/v$1;->afp:Lcom/google/android/gms/tagmanager/v;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/v$1;->afn:Ljava/util/List;

    #@4
    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/v$1;->afo:J

    #@6
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/v;->a(Lcom/google/android/gms/tagmanager/v;Ljava/util/List;J)V

    #@9
    return-void
.end method
