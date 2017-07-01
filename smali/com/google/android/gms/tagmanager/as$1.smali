.class Lcom/google/android/gms/tagmanager/as$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/as;->b(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic afK:Lcom/google/android/gms/tagmanager/ar;

.field final synthetic afL:J

.field final synthetic afM:Ljava/lang/String;

.field final synthetic afN:Lcom/google/android/gms/tagmanager/as;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/as;Lcom/google/android/gms/tagmanager/ar;JLjava/lang/String;)V
    .registers 7

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/as$1;->afN:Lcom/google/android/gms/tagmanager/as;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/as$1;->afK:Lcom/google/android/gms/tagmanager/ar;

    #@4
    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/as$1;->afL:J

    #@6
    iput-object p5, p0, Lcom/google/android/gms/tagmanager/as$1;->afM:Ljava/lang/String;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/as$1;->afN:Lcom/google/android/gms/tagmanager/as;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/as;->a(Lcom/google/android/gms/tagmanager/as;)Lcom/google/android/gms/tagmanager/at;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_20

    #@8
    invoke-static {}, Lcom/google/android/gms/tagmanager/cx;->mQ()Lcom/google/android/gms/tagmanager/cx;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/as$1;->afN:Lcom/google/android/gms/tagmanager/as;

    #@e
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/as;->b(Lcom/google/android/gms/tagmanager/as;)Landroid/content/Context;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/as$1;->afK:Lcom/google/android/gms/tagmanager/ar;

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tagmanager/cx;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/ar;)V

    #@17
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/as$1;->afN:Lcom/google/android/gms/tagmanager/as;

    #@19
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cx;->mR()Lcom/google/android/gms/tagmanager/at;

    #@1c
    move-result-object v0

    #@1d
    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/as;->a(Lcom/google/android/gms/tagmanager/as;Lcom/google/android/gms/tagmanager/at;)Lcom/google/android/gms/tagmanager/at;

    #@20
    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/as$1;->afN:Lcom/google/android/gms/tagmanager/as;

    #@22
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/as;->a(Lcom/google/android/gms/tagmanager/as;)Lcom/google/android/gms/tagmanager/at;

    #@25
    move-result-object v0

    #@26
    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/as$1;->afL:J

    #@28
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/as$1;->afM:Ljava/lang/String;

    #@2a
    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/tagmanager/at;->f(JLjava/lang/String;)V

    #@2d
    return-void
.end method
