.class final Lcom/google/android/gms/tagmanager/DataLayer$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/DataLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final JL:Ljava/lang/String;

.field public final afh:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/DataLayer$a;->JL:Ljava/lang/String;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/DataLayer$a;->afh:Ljava/lang/Object;

    #@7
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    instance-of v1, p1, Lcom/google/android/gms/tagmanager/DataLayer$a;

    #@3
    if-nez v1, :cond_6

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    check-cast p1, Lcom/google/android/gms/tagmanager/DataLayer$a;

    #@8
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/DataLayer$a;->JL:Ljava/lang/String;

    #@a
    iget-object v2, p1, Lcom/google/android/gms/tagmanager/DataLayer$a;->JL:Ljava/lang/String;

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_5

    #@12
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/DataLayer$a;->afh:Ljava/lang/Object;

    #@14
    iget-object v2, p1, Lcom/google/android/gms/tagmanager/DataLayer$a;->afh:Ljava/lang/Object;

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_5

    #@1c
    const/4 v0, 0x1

    #@1d
    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Integer;

    #@3
    const/4 v1, 0x0

    #@4
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/DataLayer$a;->JL:Ljava/lang/String;

    #@6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@9
    move-result v2

    #@a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v2

    #@e
    aput-object v2, v0, v1

    #@10
    const/4 v1, 0x1

    #@11
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/DataLayer$a;->afh:Ljava/lang/Object;

    #@13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@16
    move-result v2

    #@17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v2

    #@1b
    aput-object v2, v0, v1

    #@1d
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@20
    move-result v0

    #@21
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "Key: "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/DataLayer$a;->JL:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, " value: "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/DataLayer$a;->afh:Ljava/lang/Object;

    #@19
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method
