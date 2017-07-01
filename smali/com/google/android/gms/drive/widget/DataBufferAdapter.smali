.class public Lcom/google/android/gms/drive/widget/DataBufferAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private final LR:I

.field private LS:I

.field private final LT:I

.field private final LU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final LV:Landroid/view/LayoutInflater;

.field private LW:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    new-instance v1, Ljava/util/ArrayList;

    #@3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@6
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    #@9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5

    #@0
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    #@8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<TT;>;>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LW:Z

    #@6
    iput-object p1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->mContext:Landroid/content/Context;

    #@8
    iput p2, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LS:I

    #@a
    iput p2, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LR:I

    #@c
    iput p3, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LT:I

    #@e
    iput-object p4, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LU:Ljava/util/List;

    #@10
    const-string v0, "layout_inflater"

    #@12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/view/LayoutInflater;

    #@18
    iput-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LV:Landroid/view/LayoutInflater;

    #@1a
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;II[Lcom/google/android/gms/common/data/DataBuffer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    #@7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<TT;>;>;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    #@4
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;I[Lcom/google/android/gms/common/data/DataBuffer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@4
    move-result-object v1

    #@5
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    #@8
    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 10

    #@0
    if-nez p2, :cond_20

    #@2
    iget-object v1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LV:Landroid/view/LayoutInflater;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {v1, p4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@8
    move-result-object v2

    #@9
    :goto_9
    :try_start_9
    iget v1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LT:I

    #@b
    if-nez v1, :cond_22

    #@d
    move-object v0, v2

    #@e
    check-cast v0, Landroid/widget/TextView;

    #@10
    move-object v1, v0
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_11} :catch_2c

    #@11
    move-object v3, v1

    #@12
    :goto_12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->getItem(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    instance-of v4, v1, Ljava/lang/CharSequence;

    #@18
    if-eqz v4, :cond_3c

    #@1a
    check-cast v1, Ljava/lang/CharSequence;

    #@1c
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@1f
    :goto_1f
    return-object v2

    #@20
    :cond_20
    move-object v2, p2

    #@21
    goto :goto_9

    #@22
    :cond_22
    :try_start_22
    iget v1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LT:I

    #@24
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Landroid/widget/TextView;
    :try_end_2a
    .catch Ljava/lang/ClassCastException; {:try_start_22 .. :try_end_2a} :catch_2c

    #@2a
    move-object v3, v1

    #@2b
    goto :goto_12

    #@2c
    :catch_2c
    move-exception v1

    #@2d
    const-string v2, "DataBufferAdapter"

    #@2f
    const-string v3, "You must supply a resource ID for a TextView"

    #@31
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    new-instance v2, Ljava/lang/IllegalStateException;

    #@36
    const-string v3, "DataBufferAdapter requires the resource ID to be a TextView"

    #@38
    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3b
    throw v2

    #@3c
    :cond_3c
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@43
    goto :goto_1f
.end method


# virtual methods
.method public append(Lcom/google/android/gms/common/data/DataBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LU:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    iget-boolean v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LW:Z

    #@7
    if-eqz v0, :cond_c

    #@9
    invoke-virtual {p0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->notifyDataSetChanged()V

    #@c
    :cond_c
    return-void
.end method

.method public clear()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LU:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_16

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/android/gms/common/data/DataBuffer;

    #@12
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataBuffer;->close()V

    #@15
    goto :goto_6

    #@16
    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LU:Ljava/util/List;

    #@18
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@1b
    iget-boolean v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LW:Z

    #@1d
    if-eqz v0, :cond_22

    #@1f
    invoke-virtual {p0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->notifyDataSetChanged()V

    #@22
    :cond_22
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getCount()I
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LU:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    const/4 v0, 0x0

    #@7
    move v1, v0

    #@8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1b

    #@e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/google/android/gms/common/data/DataBuffer;

    #@14
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    #@17
    move-result v0

    #@18
    add-int/2addr v0, v1

    #@19
    move v1, v0

    #@1a
    goto :goto_8

    #@1b
    :cond_1b
    return v1
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    #@0
    iget v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LS:I

    #@2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/CursorIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LU:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    move v1, p1

    #@7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_2d

    #@d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/google/android/gms/common/data/DataBuffer;

    #@13
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    #@16
    move-result v3

    #@17
    if-gt v3, v1, :cond_1d

    #@19
    sub-int v0, v1, v3

    #@1b
    move v1, v0

    #@1c
    goto :goto_7

    #@1d
    :cond_1d
    :try_start_1d
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;
    :try_end_20
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1d .. :try_end_20} :catch_22

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    :catch_22
    move-exception v0

    #@23
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    #@25
    invoke-virtual {p0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->getCount()I

    #@28
    move-result v1

    #@29
    invoke-direct {v0, p1, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    #@2c
    throw v0

    #@2d
    :cond_2d
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    #@2f
    invoke-virtual {p0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->getCount()I

    #@32
    move-result v1

    #@33
    invoke-direct {v0, p1, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    #@36
    throw v0
.end method

.method public getItemId(I)J
    .registers 4

    #@0
    int-to-long v0, p1

    #@1
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    #@0
    iget v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LR:I

    #@2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    #@3
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LW:Z

    #@6
    return-void
.end method

.method public setDropDownViewResource(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LS:I

    #@2
    return-void
.end method

.method public setNotifyOnChange(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->LW:Z

    #@2
    return-void
.end method
