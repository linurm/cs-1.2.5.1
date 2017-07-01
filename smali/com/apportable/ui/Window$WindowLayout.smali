.class public Lcom/apportable/ui/Window$WindowLayout;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WindowLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/Window;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/Window;Landroid/content/Context;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/ui/Window$WindowLayout;->this$0:Lcom/apportable/ui/Window;

    #@2
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@5
    return-void
.end method
