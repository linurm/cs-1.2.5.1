.class public Lcom/apportable/TextChangeHandler;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private context:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-wide p1, p0, Lcom/apportable/TextChangeHandler;->context:J

    #@5
    return-void
.end method

.method private static native AndroidTextChangeEvent(JLjava/lang/CharSequence;III)V
.end method

.method private static native AndroidTextDidChangeEvent(J)V
.end method

.method private static native AndroidTextWillChangeEvent(JLjava/lang/CharSequence;III)V
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    #@0
    iget-wide v0, p0, Lcom/apportable/TextChangeHandler;->context:J

    #@2
    invoke-static {v0, v1}, Lcom/apportable/TextChangeHandler;->AndroidTextDidChangeEvent(J)V

    #@5
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 11

    #@0
    iget-wide v0, p0, Lcom/apportable/TextChangeHandler;->context:J

    #@2
    move-object v2, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    invoke-static/range {v0 .. v5}, Lcom/apportable/TextChangeHandler;->AndroidTextWillChangeEvent(JLjava/lang/CharSequence;III)V

    #@9
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 11

    #@0
    iget-wide v0, p0, Lcom/apportable/TextChangeHandler;->context:J

    #@2
    move-object v2, p1

    #@3
    move v3, p2

    #@4
    move v4, p4

    #@5
    move v5, p3

    #@6
    invoke-static/range {v0 .. v5}, Lcom/apportable/TextChangeHandler;->AndroidTextChangeEvent(JLjava/lang/CharSequence;III)V

    #@9
    return-void
.end method
