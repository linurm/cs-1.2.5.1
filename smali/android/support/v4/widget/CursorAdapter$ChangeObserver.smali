.class Landroid/support/v4/widget/CursorAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/CursorAdapter;


# direct methods
.method public constructor <init>(Landroid/support/v4/widget/CursorAdapter;)V
    .registers 3

    #@0
    iput-object p1, p0, Landroid/support/v4/widget/CursorAdapter$ChangeObserver;->this$0:Landroid/support/v4/widget/CursorAdapter;

    #@2
    new-instance v0, Landroid/os/Handler;

    #@4
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@7
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@a
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onChange(Z)V
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter$ChangeObserver;->this$0:Landroid/support/v4/widget/CursorAdapter;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->onContentChanged()V

    #@5
    return-void
.end method
