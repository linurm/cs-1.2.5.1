.class public final Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appindexing/AppIndexApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppIndexingLink"
.end annotation


# instance fields
.field public final appIndexingUrl:Landroid/net/Uri;

.field public final viewId:I

.field public final webUrl:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/view/View;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->appIndexingUrl:Landroid/net/Uri;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->webUrl:Landroid/net/Uri;

    #@7
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->viewId:I

    #@d
    return-void
.end method
