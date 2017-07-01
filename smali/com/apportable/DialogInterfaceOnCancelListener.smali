.class public Lcom/apportable/DialogInterfaceOnCancelListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private mDelegate:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-wide p1, p0, Lcom/apportable/DialogInterfaceOnCancelListener;->mDelegate:J

    #@5
    return-void
.end method

.method private static native nativeOnCancel(J)V
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    #@0
    iget-wide v0, p0, Lcom/apportable/DialogInterfaceOnCancelListener;->mDelegate:J

    #@2
    invoke-static {v0, v1}, Lcom/apportable/DialogInterfaceOnCancelListener;->nativeOnCancel(J)V

    #@5
    return-void
.end method
