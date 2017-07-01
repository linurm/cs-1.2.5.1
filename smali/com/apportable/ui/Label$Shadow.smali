.class public Lcom/apportable/ui/Label$Shadow;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/Label;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Shadow"
.end annotation


# instance fields
.field color:I

.field dx:F

.field dy:F

.field r:F


# direct methods
.method public constructor <init>(FFFI)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/apportable/ui/Label$Shadow;->r:F

    #@5
    iput p2, p0, Lcom/apportable/ui/Label$Shadow;->dx:F

    #@7
    iput p3, p0, Lcom/apportable/ui/Label$Shadow;->dy:F

    #@9
    iput p4, p0, Lcom/apportable/ui/Label$Shadow;->color:I

    #@b
    return-void
.end method
