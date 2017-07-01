.class public Lcom/apportable/DialogInterfaceOnClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mDelegate:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-wide p1, p0, Lcom/apportable/DialogInterfaceOnClickListener;->mDelegate:J

    #@5
    return-void
.end method

.method private static native nativeOnClick(JI)V
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    #@0
    iget-wide v0, p0, Lcom/apportable/DialogInterfaceOnClickListener;->mDelegate:J

    #@2
    invoke-static {v0, v1, p2}, Lcom/apportable/DialogInterfaceOnClickListener;->nativeOnClick(JI)V

    #@5
    return-void
.end method
