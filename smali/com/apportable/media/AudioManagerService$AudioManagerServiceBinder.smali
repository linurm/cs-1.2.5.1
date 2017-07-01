.class public Lcom/apportable/media/AudioManagerService$AudioManagerServiceBinder;
.super Landroid/os/Binder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/media/AudioManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioManagerServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/media/AudioManagerService;


# direct methods
.method public constructor <init>(Lcom/apportable/media/AudioManagerService;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/media/AudioManagerService$AudioManagerServiceBinder;->this$0:Lcom/apportable/media/AudioManagerService;

    #@2
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method getService()Lcom/apportable/media/AudioManagerService;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/media/AudioManagerService$AudioManagerServiceBinder;->this$0:Lcom/apportable/media/AudioManagerService;

    #@2
    return-object v0
.end method
