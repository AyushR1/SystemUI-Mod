.class public final Lcom/google/protobuf/nano/WireFormatNano;
.super Ljava/lang/Object;
.source "WireFormatNano.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BYTES:[B

.field public static final EMPTY_BYTES_ARRAY:[[B

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    new-array v1, v0, [J

    sput-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    new-array v1, v0, [F

    sput-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    new-array v1, v0, [D

    sput-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    new-array v1, v0, [Z

    sput-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v1, v0, [[B

    sput-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    new-array v0, v0, [B

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-void
.end method

.method public static final getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I
    .locals 3
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x1

    .line 114
    .local v0, "arrayLength":I
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 115
    .local v1, "startPos":I
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 121
    return v0
.end method

.method public static getTagFieldNumber(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static getTagWireType(I)I
    .locals 1
    .param p0, "tag"    # I

    .line 62
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static makeTag(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    return v0
.end method
