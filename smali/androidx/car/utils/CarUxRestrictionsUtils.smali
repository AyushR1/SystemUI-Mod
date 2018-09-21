.class public Landroidx/car/utils/CarUxRestrictionsUtils;
.super Ljava/lang/Object;
.source "CarUxRestrictionsUtils.java"


# static fields
.field private static sStringLengthFilter:Landroid/text/InputFilter;


# direct methods
.method public static apply(Landroid/content/Context;Landroid/car/drivingstate/CarUxRestrictions;Landroid/widget/TextView;)V
    .locals 4

    sget-object v0, Landroidx/car/utils/CarUxRestrictionsUtils;->sStringLengthFilter:Landroid/text/InputFilter;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->getMaxRestrictedStringLength()I

    move-result v0

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    sput-object v1, Landroidx/car/utils/CarUxRestrictionsUtils;->sStringLengthFilter:Landroid/text/InputFilter;

    :cond_0
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->getActiveRestrictions()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    sget-object v2, Landroidx/car/utils/CarUxRestrictionsUtils;->sStringLengthFilter:Landroid/text/InputFilter;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v3, Landroidx/car/utils/CarUxRestrictionsUtils;->sStringLengthFilter:Landroid/text/InputFilter;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/text/InputFilter;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/InputFilter;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    :cond_1
    sget-object v2, Landroidx/car/utils/CarUxRestrictionsUtils;->sStringLengthFilter:Landroid/text/InputFilter;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v3, Landroidx/car/utils/CarUxRestrictionsUtils;->sStringLengthFilter:Landroid/text/InputFilter;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/text/InputFilter;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/InputFilter;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :cond_2
    :goto_0
    return-void
.end method
