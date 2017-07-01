.class Landroid/support/v4/app/BundleUtil;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;
    .registers 5

    #@0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    instance-of v1, v0, [Landroid/os/Bundle;

    #@6
    if-nez v1, :cond_a

    #@8
    if-nez v0, :cond_d

    #@a
    :cond_a
    check-cast v0, [Landroid/os/Bundle;

    #@c
    :goto_c
    return-object v0

    #@d
    :cond_d
    array-length v1, v0

    #@e
    const-class v2, [Landroid/os/Bundle;

    #@10
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, [Landroid/os/Bundle;

    #@16
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@19
    goto :goto_c
.end method
