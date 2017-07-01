.class public Lcom/facebook/android/AsyncFacebookRunner;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/android/AsyncFacebookRunner$RequestListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field fb:Lcom/facebook/android/Facebook;


# direct methods
.method public constructor <init>(Lcom/facebook/android/Facebook;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/facebook/android/AsyncFacebookRunner;->fb:Lcom/facebook/android/Facebook;

    #@5
    return-void
.end method


# virtual methods
.method public logout(Landroid/content/Context;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/android/AsyncFacebookRunner;->logout(Landroid/content/Context;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    #@4
    return-void
.end method

.method public logout(Landroid/content/Context;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner$1;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/android/AsyncFacebookRunner$1;-><init>(Lcom/facebook/android/AsyncFacebookRunner;Landroid/content/Context;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    #@5
    invoke-virtual {v0}, Lcom/facebook/android/AsyncFacebookRunner$1;->start()V

    #@8
    return-void
.end method

.method public request(Landroid/os/Bundle;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    const-string v3, "GET"

    #@3
    move-object v0, p0

    #@4
    move-object v2, p1

    #@5
    move-object v4, p2

    #@6
    move-object v5, v1

    #@7
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    #@a
    return-void
.end method

.method public request(Landroid/os/Bundle;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    const-string v3, "GET"

    #@3
    move-object v0, p0

    #@4
    move-object v2, p1

    #@5
    move-object v4, p2

    #@6
    move-object v5, p3

    #@7
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    #@a
    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-string v3, "GET"

    #@2
    const/4 v5, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v4, p3

    #@7
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    #@a
    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-string v3, "GET"

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v4, p3

    #@6
    move-object v5, p4

    #@7
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    #@a
    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner$2;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move-object v4, p3

    #@6
    move-object v5, p4

    #@7
    move-object v6, p5

    #@8
    invoke-direct/range {v0 .. v6}, Lcom/facebook/android/AsyncFacebookRunner$2;-><init>(Lcom/facebook/android/AsyncFacebookRunner;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    #@b
    invoke-virtual {v0}, Lcom/facebook/android/AsyncFacebookRunner$2;->start()V

    #@e
    return-void
.end method

.method public request(Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    new-instance v2, Landroid/os/Bundle;

    #@2
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@5
    const-string v3, "GET"

    #@7
    const/4 v5, 0x0

    #@8
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    move-object v4, p2

    #@b
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    #@e
    return-void
.end method

.method public request(Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    new-instance v2, Landroid/os/Bundle;

    #@2
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@5
    const-string v3, "GET"

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    move-object v4, p2

    #@a
    move-object v5, p3

    #@b
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    #@e
    return-void
.end method
