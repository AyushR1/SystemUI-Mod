.class public Lorg/apache/commons/lang/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 10

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_6

    :goto_0
    if-ge v3, v0, :cond_11

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v5, :cond_2

    if-eqz p3, :cond_4

    :cond_2
    const/4 v6, 0x1

    add-int/lit8 v8, v2, 0x1

    if-ne v2, p2, :cond_3

    move v3, v0

    const/4 v6, 0x0

    :cond_3
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    move v5, v2

    move v2, v8

    :cond_4
    add-int/2addr v3, v7

    move v4, v3

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    const/4 v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v7, :cond_c

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_1
    if-ge v3, v0, :cond_b

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_a

    if-nez v5, :cond_7

    if-eqz p3, :cond_9

    :cond_7
    const/4 v6, 0x1

    add-int/lit8 v9, v2, 0x1

    if-ne v2, p2, :cond_8

    move v3, v0

    const/4 v6, 0x0

    :cond_8
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    move v5, v2

    move v2, v9

    :cond_9
    add-int/2addr v3, v7

    move v4, v3

    goto :goto_1

    :cond_a
    const/4 v6, 0x0

    const/4 v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_b
    goto :goto_3

    :cond_c
    :goto_2
    if-ge v3, v0, :cond_11

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_10

    if-nez v5, :cond_d

    if-eqz p3, :cond_f

    :cond_d
    const/4 v6, 0x1

    add-int/lit8 v8, v2, 0x1

    if-ne v2, p2, :cond_e

    move v3, v0

    const/4 v6, 0x0

    :cond_e
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    move v5, v2

    move v2, v8

    :cond_f
    add-int/2addr v3, v7

    move v4, v3

    goto :goto_2

    :cond_10
    const/4 v6, 0x0

    const/4 v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_11
    :goto_3
    if-nez v5, :cond_12

    if-eqz p3, :cond_13

    if-eqz v6, :cond_13

    :cond_12
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method
