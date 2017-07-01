.class synthetic Lcom/apportable/ui/Button$4;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$apportable$ui$Button$DrawableState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    invoke-static {}, Lcom/apportable/ui/Button$DrawableState;->values()[Lcom/apportable/ui/Button$DrawableState;

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    new-array v0, v0, [I

    #@7
    sput-object v0, Lcom/apportable/ui/Button$4;->$SwitchMap$com$apportable$ui$Button$DrawableState:[I

    #@9
    :try_start_9
    sget-object v0, Lcom/apportable/ui/Button$4;->$SwitchMap$com$apportable$ui$Button$DrawableState:[I

    #@b
    sget-object v1, Lcom/apportable/ui/Button$DrawableState;->Normal:Lcom/apportable/ui/Button$DrawableState;

    #@d
    invoke-virtual {v1}, Lcom/apportable/ui/Button$DrawableState;->ordinal()I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x1

    #@12
    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_36

    #@14
    :goto_14
    :try_start_14
    sget-object v0, Lcom/apportable/ui/Button$4;->$SwitchMap$com$apportable$ui$Button$DrawableState:[I

    #@16
    sget-object v1, Lcom/apportable/ui/Button$DrawableState;->Selected:Lcom/apportable/ui/Button$DrawableState;

    #@18
    invoke-virtual {v1}, Lcom/apportable/ui/Button$DrawableState;->ordinal()I

    #@1b
    move-result v1

    #@1c
    const/4 v2, 0x2

    #@1d
    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_38

    #@1f
    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/apportable/ui/Button$4;->$SwitchMap$com$apportable$ui$Button$DrawableState:[I

    #@21
    sget-object v1, Lcom/apportable/ui/Button$DrawableState;->Disabled:Lcom/apportable/ui/Button$DrawableState;

    #@23
    invoke-virtual {v1}, Lcom/apportable/ui/Button$DrawableState;->ordinal()I

    #@26
    move-result v1

    #@27
    const/4 v2, 0x3

    #@28
    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_3a

    #@2a
    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/apportable/ui/Button$4;->$SwitchMap$com$apportable$ui$Button$DrawableState:[I

    #@2c
    sget-object v1, Lcom/apportable/ui/Button$DrawableState;->Highlighted:Lcom/apportable/ui/Button$DrawableState;

    #@2e
    invoke-virtual {v1}, Lcom/apportable/ui/Button$DrawableState;->ordinal()I

    #@31
    move-result v1

    #@32
    const/4 v2, 0x4

    #@33
    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_3c

    #@35
    :goto_35
    return-void

    #@36
    :catch_36
    move-exception v0

    #@37
    goto :goto_14

    #@38
    :catch_38
    move-exception v0

    #@39
    goto :goto_1f

    #@3a
    :catch_3a
    move-exception v0

    #@3b
    goto :goto_2a

    #@3c
    :catch_3c
    move-exception v0

    #@3d
    goto :goto_35
.end method
