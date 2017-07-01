.class synthetic Lcom/facebook/Session$5;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$facebook$SessionState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    invoke-static {}, Lcom/facebook/SessionState;->values()[Lcom/facebook/SessionState;

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    new-array v0, v0, [I

    #@7
    sput-object v0, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    #@9
    :try_start_9
    sget-object v0, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    #@b
    sget-object v1, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;

    #@d
    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x1

    #@12
    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_57

    #@14
    :goto_14
    :try_start_14
    sget-object v0, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    #@16
    sget-object v1, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    #@18
    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    #@1b
    move-result v1

    #@1c
    const/4 v2, 0x2

    #@1d
    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_59

    #@1f
    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    #@21
    sget-object v1, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    #@23
    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    #@26
    move-result v1

    #@27
    const/4 v2, 0x3

    #@28
    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_5b

    #@2a
    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    #@2c
    sget-object v1, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    #@2e
    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    #@31
    move-result v1

    #@32
    const/4 v2, 0x4

    #@33
    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_5d

    #@35
    :goto_35
    :try_start_35
    sget-object v0, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    #@37
    sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    #@39
    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    #@3c
    move-result v1

    #@3d
    const/4 v2, 0x5

    #@3e
    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_5f

    #@40
    :goto_40
    :try_start_40
    sget-object v0, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    #@42
    sget-object v1, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    #@44
    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    #@47
    move-result v1

    #@48
    const/4 v2, 0x6

    #@49
    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_61

    #@4b
    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    #@4d
    sget-object v1, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    #@4f
    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    #@52
    move-result v1

    #@53
    const/4 v2, 0x7

    #@54
    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_63

    #@56
    :goto_56
    return-void

    #@57
    :catch_57
    move-exception v0

    #@58
    goto :goto_14

    #@59
    :catch_59
    move-exception v0

    #@5a
    goto :goto_1f

    #@5b
    :catch_5b
    move-exception v0

    #@5c
    goto :goto_2a

    #@5d
    :catch_5d
    move-exception v0

    #@5e
    goto :goto_35

    #@5f
    :catch_5f
    move-exception v0

    #@60
    goto :goto_40

    #@61
    :catch_61
    move-exception v0

    #@62
    goto :goto_4b

    #@63
    :catch_63
    move-exception v0

    #@64
    goto :goto_56
.end method
