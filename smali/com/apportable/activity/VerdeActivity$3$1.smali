.class Lcom/apportable/activity/VerdeActivity$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apportable/activity/BackgroundLibraryLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity$3;->onFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/activity/VerdeActivity$3;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity$3;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$3$1;->this$1:Lcom/apportable/activity/VerdeActivity$3;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onFinished(Ljava/lang/Throwable;)V
    .registers 7

    #@0
    if-nez p1, :cond_d

    #@2
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$3$1;->this$1:Lcom/apportable/activity/VerdeActivity$3;

    #@4
    iget-object v0, v0, Lcom/apportable/activity/VerdeActivity$3;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@6
    invoke-static {v0}, Lcom/apportable/Lifecycle;->onActivityInit(Lcom/apportable/activity/VerdeActivity;)V

    #@9
    invoke-static {}, Lcom/apportable/Lifecycle;->onLibrariesFinishedLoading()V
    
    const-string v0, "ZTAG"

    const-string v1, "BackgroundLibraryLoader onLibrariesFinishedLoading ... return"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    #@c
    :goto_c
    return-void

    #@d
    :cond_d
    instance-of v0, p1, Lcom/apportable/LibraryManager$NotEnoughSpaceException;

    #@f
    if-eqz v0, :cond_71

    #@11
    check-cast p1, Lcom/apportable/LibraryManager$NotEnoughSpaceException;

    #@13
    const-string v0, "Insufficient Storage"

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string v2, "The device does have enough space to expand native libraries "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p1}, Lcom/apportable/LibraryManager$NotEnoughSpaceException;->getRequiredSize()J

    #@23
    move-result-wide v2

    #@24
    invoke-static {v2, v3}, Lcom/apportable/utils/Utils;->dataSizeString(J)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    const-string v2, " requred but "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {p1}, Lcom/apportable/LibraryManager$NotEnoughSpaceException;->getAvailableSize()J

    #@35
    move-result-wide v2

    #@36
    invoke-static {v2, v3}, Lcom/apportable/utils/Utils;->dataSizeString(J)Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    const-string v2, " available."

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    :goto_48
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@4a
    const/16 v3, 0xb

    #@4c
    if-lt v2, v3, :cond_d3

    #@4e
    new-instance v2, Landroid/app/AlertDialog$Builder;

    #@50
    iget-object v3, p0, Lcom/apportable/activity/VerdeActivity$3$1;->this$1:Lcom/apportable/activity/VerdeActivity$3;

    #@52
    iget-object v3, v3, Lcom/apportable/activity/VerdeActivity$3;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@54
    const/4 v4, 0x2

    #@55
    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    #@58
    :goto_58
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@5b
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@5e
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    #@61
    move-result-object v0

    #@62
    const/4 v1, -0x1

    #@63
    const-string v2, "OK"

    #@65
    new-instance v3, Lcom/apportable/activity/VerdeActivity$3$1$1;

    #@67
    invoke-direct {v3, p0}, Lcom/apportable/activity/VerdeActivity$3$1$1;-><init>(Lcom/apportable/activity/VerdeActivity$3$1;)V

    #@6a
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    #@6d
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    #@70
    goto :goto_c

    #@71
    :cond_71
    instance-of v0, p1, Lcom/apportable/LibraryManager$CorruptedAPKException;

    #@73
    if-eqz v0, :cond_7a

    #@75
    const-string v0, "Corrupted APK"

    #@77
    const-string v1, "Please uninstall and re-download/install"

    #@79
    goto :goto_48

    #@7a
    :cond_7a
    instance-of v0, p1, Lcom/apportable/LibraryManager$PermissionException;

    #@7c
    if-eqz v0, :cond_83

    #@7e
    const-string v0, "Permission Error"

    #@80
    const-string v1, "Unable to unpack native libraries due to insufficent permissions."

    #@82
    goto :goto_48

    #@83
    :cond_83
    instance-of v0, p1, Lcom/apportable/LibraryManager$InvalidArchitectureException;

    #@85
    if-eqz v0, :cond_c7

    #@87
    check-cast p1, Lcom/apportable/LibraryManager$InvalidArchitectureException;

    #@89
    const-string v0, "Incorrect Achitecture"

    #@8b
    new-instance v1, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string v2, "Unable to find an appropriate native library architecture for this device. Expected "

    #@92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    invoke-virtual {p1}, Lcom/apportable/LibraryManager$InvalidArchitectureException;->getPackagedABIs()Ljava/util/ArrayList;

    #@99
    move-result-object v2

    #@9a
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@9d
    move-result-object v2

    #@9e
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@a1
    move-result-object v2

    #@a2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v1

    #@a6
    const-string v2, " but only "

    #@a8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v1

    #@ac
    invoke-virtual {p1}, Lcom/apportable/LibraryManager$InvalidArchitectureException;->getSupportedABIs()Ljava/util/ArrayList;

    #@af
    move-result-object v2

    #@b0
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@b3
    move-result-object v2

    #@b4
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@b7
    move-result-object v2

    #@b8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v1

    #@bc
    const-string v2, " are supported on this device."

    #@be
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v1

    #@c2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v1

    #@c6
    goto :goto_48

    #@c7
    :cond_c7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    #@ca
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$3$1;->this$1:Lcom/apportable/activity/VerdeActivity$3;

    #@cc
    iget-object v0, v0, Lcom/apportable/activity/VerdeActivity$3;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@ce
    invoke-virtual {v0}, Lcom/apportable/activity/VerdeActivity;->finish()V

    #@d1
    goto/16 :goto_c

    #@d3
    :cond_d3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    #@d5
    iget-object v3, p0, Lcom/apportable/activity/VerdeActivity$3$1;->this$1:Lcom/apportable/activity/VerdeActivity$3;

    #@d7
    iget-object v3, v3, Lcom/apportable/activity/VerdeActivity$3;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@d9
    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@dc
    goto/16 :goto_58
.end method
