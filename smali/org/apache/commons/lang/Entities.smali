.class Lorg/apache/commons/lang/Entities;
.super Ljava/lang/Object;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/Entities$LookupEntityMap;,
        Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;,
        Lorg/apache/commons/lang/Entities$EntityMap;
    }
.end annotation


# static fields
.field private static final APOS_ARRAY:[[Ljava/lang/String;

.field private static final BASIC_ARRAY:[[Ljava/lang/String;

.field public static final HTML32:Lorg/apache/commons/lang/Entities;

.field public static final HTML40:Lorg/apache/commons/lang/Entities;

.field static final HTML40_ARRAY:[[Ljava/lang/String;

.field static final ISO8859_1_ARRAY:[[Ljava/lang/String;

.field public static final XML:Lorg/apache/commons/lang/Entities;


# instance fields
.field private final map:Lorg/apache/commons/lang/Entities$EntityMap;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/4 v0, 0x4

    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "quot"

    const-string v3, "34"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "amp"

    const-string v4, "38"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "lt"

    const-string v5, "60"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "gt"

    const-string v6, "62"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lorg/apache/commons/lang/Entities;->BASIC_ARRAY:[[Ljava/lang/String;

    new-array v1, v4, [[Ljava/lang/String;

    const-string v2, "apos"

    const-string v7, "39"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sput-object v1, Lorg/apache/commons/lang/Entities;->APOS_ARRAY:[[Ljava/lang/String;

    const/16 v1, 0x60

    new-array v2, v1, [[Ljava/lang/String;

    const-string v7, "nbsp"

    const-string v8, "160"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    const-string v7, "iexcl"

    const-string v8, "161"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    const-string v7, "cent"

    const-string v8, "162"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    const-string v7, "pound"

    const-string v8, "163"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const-string v7, "curren"

    const-string v8, "164"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v0

    const-string v7, "yen"

    const-string v8, "165"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v2, v8

    const-string v7, "brvbar"

    const-string v9, "166"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x6

    aput-object v7, v2, v9

    const-string v7, "sect"

    const-string v10, "167"

    filled-new-array {v7, v10}, [Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x7

    aput-object v7, v2, v10

    const-string v7, "uml"

    const-string v11, "168"

    filled-new-array {v7, v11}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x8

    aput-object v7, v2, v11

    const-string v7, "copy"

    const-string v12, "169"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x9

    aput-object v7, v2, v12

    const-string v7, "ordf"

    const-string v13, "170"

    filled-new-array {v7, v13}, [Ljava/lang/String;

    move-result-object v7

    const/16 v13, 0xa

    aput-object v7, v2, v13

    const-string v7, "laquo"

    const-string v14, "171"

    filled-new-array {v7, v14}, [Ljava/lang/String;

    move-result-object v7

    const/16 v14, 0xb

    aput-object v7, v2, v14

    const-string v7, "not"

    const-string v15, "172"

    filled-new-array {v7, v15}, [Ljava/lang/String;

    move-result-object v7

    const/16 v15, 0xc

    aput-object v7, v2, v15

    const-string v7, "shy"

    const-string v1, "173"

    filled-new-array {v7, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0xd

    aput-object v1, v2, v7

    const-string v1, "reg"

    const-string v7, "174"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0xe

    aput-object v1, v2, v7

    const-string v1, "macr"

    const-string v7, "175"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0xf

    aput-object v1, v2, v7

    const-string v1, "deg"

    const-string v7, "176"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x10

    aput-object v1, v2, v7

    const-string v1, "plusmn"

    const-string v7, "177"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x11

    aput-object v1, v2, v7

    const-string v1, "sup2"

    const-string v7, "178"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x12

    aput-object v1, v2, v7

    const-string v1, "sup3"

    const-string v7, "179"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x13

    aput-object v1, v2, v7

    const-string v1, "acute"

    const-string v7, "180"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x14

    aput-object v1, v2, v7

    const-string v1, "micro"

    const-string v7, "181"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x15

    aput-object v1, v2, v7

    const-string v1, "para"

    const-string v7, "182"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x16

    aput-object v1, v2, v7

    const-string v1, "middot"

    const-string v7, "183"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x17

    aput-object v1, v2, v7

    const-string v1, "cedil"

    const-string v7, "184"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x18

    aput-object v1, v2, v7

    const-string v1, "sup1"

    const-string v7, "185"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x19

    aput-object v1, v2, v7

    const-string v1, "ordm"

    const-string v7, "186"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x1a

    aput-object v1, v2, v7

    const-string v1, "raquo"

    const-string v7, "187"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x1b

    aput-object v1, v2, v7

    const-string v1, "frac14"

    const-string v7, "188"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x1c

    aput-object v1, v2, v7

    const-string v1, "frac12"

    const-string v7, "189"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x1d

    aput-object v1, v2, v7

    const-string v1, "frac34"

    const-string v7, "190"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x1e

    aput-object v1, v2, v7

    const-string v1, "iquest"

    const-string v7, "191"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x1f

    aput-object v1, v2, v7

    const-string v1, "Agrave"

    const-string v7, "192"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x20

    aput-object v1, v2, v7

    const-string v1, "Aacute"

    const-string v7, "193"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x21

    aput-object v1, v2, v7

    const-string v1, "Acirc"

    const-string v7, "194"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x22

    aput-object v1, v2, v7

    const-string v1, "Atilde"

    const-string v7, "195"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x23

    aput-object v1, v2, v7

    const-string v1, "Auml"

    const-string v7, "196"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x24

    aput-object v1, v2, v7

    const-string v1, "Aring"

    const-string v7, "197"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x25

    aput-object v1, v2, v7

    const-string v1, "AElig"

    const-string v7, "198"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x26

    aput-object v1, v2, v7

    const-string v1, "Ccedil"

    const-string v7, "199"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x27

    aput-object v1, v2, v7

    const-string v1, "Egrave"

    const-string v7, "200"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x28

    aput-object v1, v2, v7

    const-string v1, "Eacute"

    const-string v7, "201"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x29

    aput-object v1, v2, v7

    const-string v1, "Ecirc"

    const-string v7, "202"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x2a

    aput-object v1, v2, v7

    const-string v1, "Euml"

    const-string v7, "203"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x2b

    aput-object v1, v2, v7

    const-string v1, "Igrave"

    const-string v7, "204"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x2c

    aput-object v1, v2, v7

    const-string v1, "Iacute"

    const-string v7, "205"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x2d

    aput-object v1, v2, v7

    const-string v1, "Icirc"

    const-string v7, "206"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x2e

    aput-object v1, v2, v7

    const-string v1, "Iuml"

    const-string v7, "207"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x2f

    aput-object v1, v2, v7

    const-string v1, "ETH"

    const-string v7, "208"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x30

    aput-object v1, v2, v7

    const-string v1, "Ntilde"

    const-string v7, "209"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x31

    aput-object v1, v2, v7

    const-string v1, "Ograve"

    const-string v7, "210"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x32

    aput-object v1, v2, v7

    const-string v1, "Oacute"

    const-string v7, "211"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x33

    aput-object v1, v2, v7

    const-string v1, "Ocirc"

    const-string v7, "212"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x34

    aput-object v1, v2, v7

    const-string v1, "Otilde"

    const-string v7, "213"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x35

    aput-object v1, v2, v7

    const-string v1, "Ouml"

    const-string v7, "214"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x36

    aput-object v1, v2, v7

    const-string v1, "times"

    const-string v7, "215"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x37

    aput-object v1, v2, v7

    const-string v1, "Oslash"

    const-string v7, "216"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x38

    aput-object v1, v2, v7

    const-string v1, "Ugrave"

    const-string v7, "217"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x39

    aput-object v1, v2, v7

    const-string v1, "Uacute"

    const-string v7, "218"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x3a

    aput-object v1, v2, v7

    const-string v1, "Ucirc"

    const-string v7, "219"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x3b

    aput-object v1, v2, v7

    const-string v1, "Uuml"

    const-string v7, "220"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x3c

    aput-object v1, v2, v7

    const-string v1, "Yacute"

    const-string v7, "221"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x3d

    aput-object v1, v2, v7

    const-string v1, "THORN"

    const-string v7, "222"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x3e

    aput-object v1, v2, v7

    const-string v1, "szlig"

    const-string v7, "223"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x3f

    aput-object v1, v2, v7

    const-string v1, "agrave"

    const-string v7, "224"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x40

    aput-object v1, v2, v7

    const-string v1, "aacute"

    const-string v7, "225"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x41

    aput-object v1, v2, v7

    const-string v1, "acirc"

    const-string v7, "226"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x42

    aput-object v1, v2, v7

    const-string v1, "atilde"

    const-string v7, "227"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x43

    aput-object v1, v2, v7

    const-string v1, "auml"

    const-string v7, "228"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x44

    aput-object v1, v2, v7

    const-string v1, "aring"

    const-string v7, "229"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x45

    aput-object v1, v2, v7

    const-string v1, "aelig"

    const-string v7, "230"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x46

    aput-object v1, v2, v7

    const-string v1, "ccedil"

    const-string v7, "231"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x47

    aput-object v1, v2, v7

    const-string v1, "egrave"

    const-string v7, "232"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x48

    aput-object v1, v2, v7

    const-string v1, "eacute"

    const-string v7, "233"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x49

    aput-object v1, v2, v7

    const-string v1, "ecirc"

    const-string v7, "234"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x4a

    aput-object v1, v2, v7

    const-string v1, "euml"

    const-string v7, "235"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x4b

    aput-object v1, v2, v7

    const-string v1, "igrave"

    const-string v7, "236"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x4c

    aput-object v1, v2, v7

    const-string v1, "iacute"

    const-string v7, "237"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x4d

    aput-object v1, v2, v7

    const-string v1, "icirc"

    const-string v7, "238"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x4e

    aput-object v1, v2, v7

    const-string v1, "iuml"

    const-string v7, "239"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x4f

    aput-object v1, v2, v7

    const-string v1, "eth"

    const-string v7, "240"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x50

    aput-object v1, v2, v7

    const-string v1, "ntilde"

    const-string v7, "241"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x51

    aput-object v1, v2, v7

    const-string v1, "ograve"

    const-string v7, "242"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x52

    aput-object v1, v2, v7

    const-string v1, "oacute"

    const-string v7, "243"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x53

    aput-object v1, v2, v7

    const-string v1, "ocirc"

    const-string v7, "244"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x54

    aput-object v1, v2, v7

    const-string v1, "otilde"

    const-string v7, "245"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x55

    aput-object v1, v2, v7

    const-string v1, "ouml"

    const-string v7, "246"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x56

    aput-object v1, v2, v7

    const-string v1, "divide"

    const-string v7, "247"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x57

    aput-object v1, v2, v7

    const-string v1, "oslash"

    const-string v7, "248"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x58

    aput-object v1, v2, v7

    const-string v1, "ugrave"

    const-string v7, "249"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x59

    aput-object v1, v2, v7

    const-string v1, "uacute"

    const-string v7, "250"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x5a

    aput-object v1, v2, v7

    const-string v1, "ucirc"

    const-string v7, "251"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x5b

    aput-object v1, v2, v7

    const-string v1, "uuml"

    const-string v7, "252"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x5c

    aput-object v1, v2, v7

    const-string v1, "yacute"

    const-string v7, "253"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x5d

    aput-object v1, v2, v7

    const-string v1, "thorn"

    const-string v7, "254"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x5e

    aput-object v1, v2, v7

    const-string v1, "yuml"

    const-string v7, "255"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x5f

    aput-object v1, v2, v7

    sput-object v2, Lorg/apache/commons/lang/Entities;->ISO8859_1_ARRAY:[[Ljava/lang/String;

    const/16 v1, 0x97

    new-array v1, v1, [[Ljava/lang/String;

    const-string v2, "fnof"

    const-string v7, "402"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Alpha"

    const-string v3, "913"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Beta"

    const-string v3, "914"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Gamma"

    const-string v3, "915"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "Delta"

    const-string v3, "916"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Epsilon"

    const-string v2, "917"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v8

    const-string v0, "Zeta"

    const-string v2, "918"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v9

    const-string v0, "Eta"

    const-string v2, "919"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v10

    const-string v0, "Theta"

    const-string v2, "920"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v11

    const-string v0, "Iota"

    const-string v2, "921"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v12

    const-string v0, "Kappa"

    const-string v2, "922"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v13

    const-string v0, "Lambda"

    const-string v2, "923"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v14

    const-string v0, "Mu"

    const-string v2, "924"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v15

    const-string v0, "Nu"

    const-string v2, "925"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    aput-object v0, v1, v2

    const-string v0, "Xi"

    const-string v2, "926"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe

    aput-object v0, v1, v2

    const-string v0, "Omicron"

    const-string v2, "927"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf

    aput-object v0, v1, v2

    const-string v0, "Pi"

    const-string v2, "928"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    aput-object v0, v1, v2

    const-string v0, "Rho"

    const-string v2, "929"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x11

    aput-object v0, v1, v2

    const-string v0, "Sigma"

    const-string v2, "931"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12

    aput-object v0, v1, v2

    const-string v0, "Tau"

    const-string v2, "932"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x13

    aput-object v0, v1, v2

    const-string v0, "Upsilon"

    const-string v2, "933"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14

    aput-object v0, v1, v2

    const-string v0, "Phi"

    const-string v2, "934"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x15

    aput-object v0, v1, v2

    const-string v0, "Chi"

    const-string v2, "935"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const-string v0, "Psi"

    const-string v2, "936"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x17

    aput-object v0, v1, v2

    const-string v0, "Omega"

    const-string v2, "937"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const-string v0, "alpha"

    const-string v2, "945"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x19

    aput-object v0, v1, v2

    const-string v0, "beta"

    const-string v2, "946"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const-string v0, "gamma"

    const-string v2, "947"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    const-string v0, "delta"

    const-string v2, "948"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    const-string v0, "epsilon"

    const-string v2, "949"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    const-string v0, "zeta"

    const-string v2, "950"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    const-string v0, "eta"

    const-string v2, "951"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    const-string v0, "theta"

    const-string v2, "952"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x20

    aput-object v0, v1, v2

    const-string v0, "iota"

    const-string v2, "953"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x21

    aput-object v0, v1, v2

    const-string v0, "kappa"

    const-string v2, "954"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x22

    aput-object v0, v1, v2

    const-string v0, "lambda"

    const-string v2, "955"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x23

    aput-object v0, v1, v2

    const-string v0, "mu"

    const-string v2, "956"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x24

    aput-object v0, v1, v2

    const-string v0, "nu"

    const-string v2, "957"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x25

    aput-object v0, v1, v2

    const-string v0, "xi"

    const-string v2, "958"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x26

    aput-object v0, v1, v2

    const-string v0, "omicron"

    const-string v2, "959"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x27

    aput-object v0, v1, v2

    const-string v0, "pi"

    const-string v2, "960"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x28

    aput-object v0, v1, v2

    const-string v0, "rho"

    const-string v2, "961"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x29

    aput-object v0, v1, v2

    const-string v0, "sigmaf"

    const-string v2, "962"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    const-string v0, "sigma"

    const-string v2, "963"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    const-string v0, "tau"

    const-string v2, "964"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    const-string v0, "upsilon"

    const-string v2, "965"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    const-string v0, "phi"

    const-string v2, "966"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    const-string v0, "chi"

    const-string v2, "967"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    const-string v0, "psi"

    const-string v2, "968"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x30

    aput-object v0, v1, v2

    const-string v0, "omega"

    const-string v2, "969"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x31

    aput-object v0, v1, v2

    const-string v0, "thetasym"

    const-string v2, "977"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x32

    aput-object v0, v1, v2

    const-string v0, "upsih"

    const-string v2, "978"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x33

    aput-object v0, v1, v2

    const-string v0, "piv"

    const-string v2, "982"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x34

    aput-object v0, v1, v2

    const-string v0, "bull"

    const-string v2, "8226"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x35

    aput-object v0, v1, v2

    const-string v0, "hellip"

    const-string v2, "8230"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x36

    aput-object v0, v1, v2

    const-string v0, "prime"

    const-string v2, "8242"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x37

    aput-object v0, v1, v2

    const-string v0, "Prime"

    const-string v2, "8243"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x38

    aput-object v0, v1, v2

    const-string v0, "oline"

    const-string v2, "8254"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x39

    aput-object v0, v1, v2

    const-string v0, "frasl"

    const-string v2, "8260"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3a

    aput-object v0, v1, v2

    const-string v0, "weierp"

    const-string v2, "8472"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3b

    aput-object v0, v1, v2

    const-string v0, "image"

    const-string v2, "8465"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3c

    aput-object v0, v1, v2

    const-string v0, "real"

    const-string v2, "8476"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3d

    aput-object v0, v1, v2

    const-string v0, "trade"

    const-string v2, "8482"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3e

    aput-object v0, v1, v2

    const-string v0, "alefsym"

    const-string v2, "8501"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3f

    aput-object v0, v1, v2

    const-string v0, "larr"

    const-string v2, "8592"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x40

    aput-object v0, v1, v2

    const-string v0, "uarr"

    const-string v2, "8593"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x41

    aput-object v0, v1, v2

    const-string v0, "rarr"

    const-string v2, "8594"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x42

    aput-object v0, v1, v2

    const-string v0, "darr"

    const-string v2, "8595"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x43

    aput-object v0, v1, v2

    const-string v0, "harr"

    const-string v2, "8596"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x44

    aput-object v0, v1, v2

    const-string v0, "crarr"

    const-string v2, "8629"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x45

    aput-object v0, v1, v2

    const-string v0, "lArr"

    const-string v2, "8656"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x46

    aput-object v0, v1, v2

    const-string v0, "uArr"

    const-string v2, "8657"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x47

    aput-object v0, v1, v2

    const-string v0, "rArr"

    const-string v2, "8658"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x48

    aput-object v0, v1, v2

    const-string v0, "dArr"

    const-string v2, "8659"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x49

    aput-object v0, v1, v2

    const-string v0, "hArr"

    const-string v2, "8660"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4a

    aput-object v0, v1, v2

    const-string v0, "forall"

    const-string v2, "8704"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4b

    aput-object v0, v1, v2

    const-string v0, "part"

    const-string v2, "8706"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4c

    aput-object v0, v1, v2

    const-string v0, "exist"

    const-string v2, "8707"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4d

    aput-object v0, v1, v2

    const-string v0, "empty"

    const-string v2, "8709"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4e

    aput-object v0, v1, v2

    const-string v0, "nabla"

    const-string v2, "8711"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4f

    aput-object v0, v1, v2

    const-string v0, "isin"

    const-string v2, "8712"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x50

    aput-object v0, v1, v2

    const-string v0, "notin"

    const-string v2, "8713"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x51

    aput-object v0, v1, v2

    const-string v0, "ni"

    const-string v2, "8715"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x52

    aput-object v0, v1, v2

    const-string v0, "prod"

    const-string v2, "8719"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x53

    aput-object v0, v1, v2

    const-string v0, "sum"

    const-string v2, "8721"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x54

    aput-object v0, v1, v2

    const-string v0, "minus"

    const-string v2, "8722"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x55

    aput-object v0, v1, v2

    const-string v0, "lowast"

    const-string v2, "8727"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x56

    aput-object v0, v1, v2

    const-string v0, "radic"

    const-string v2, "8730"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x57

    aput-object v0, v1, v2

    const-string v0, "prop"

    const-string v2, "8733"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x58

    aput-object v0, v1, v2

    const-string v0, "infin"

    const-string v2, "8734"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x59

    aput-object v0, v1, v2

    const-string v0, "ang"

    const-string v2, "8736"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5a

    aput-object v0, v1, v2

    const-string v0, "and"

    const-string v2, "8743"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5b

    aput-object v0, v1, v2

    const-string v0, "or"

    const-string v2, "8744"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5c

    aput-object v0, v1, v2

    const-string v0, "cap"

    const-string v2, "8745"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5d

    aput-object v0, v1, v2

    const-string v0, "cup"

    const-string v2, "8746"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5e

    aput-object v0, v1, v2

    const-string v0, "int"

    const-string v2, "8747"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5f

    aput-object v0, v1, v2

    const-string v0, "there4"

    const-string v2, "8756"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x60

    aput-object v0, v1, v2

    const-string v0, "sim"

    const-string v2, "8764"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x61

    aput-object v0, v1, v2

    const-string v0, "cong"

    const-string v2, "8773"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x62

    aput-object v0, v1, v2

    const-string v0, "asymp"

    const-string v2, "8776"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x63

    aput-object v0, v1, v2

    const-string v0, "ne"

    const-string v2, "8800"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x64

    aput-object v0, v1, v2

    const-string v0, "equiv"

    const-string v2, "8801"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x65

    aput-object v0, v1, v2

    const-string v0, "le"

    const-string v2, "8804"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x66

    aput-object v0, v1, v2

    const-string v0, "ge"

    const-string v2, "8805"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x67

    aput-object v0, v1, v2

    const-string v0, "sub"

    const-string v2, "8834"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x68

    aput-object v0, v1, v2

    const-string v0, "sup"

    const-string v2, "8835"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x69

    aput-object v0, v1, v2

    const-string v0, "sube"

    const-string v2, "8838"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6a

    aput-object v0, v1, v2

    const-string v0, "supe"

    const-string v2, "8839"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6b

    aput-object v0, v1, v2

    const-string v0, "oplus"

    const-string v2, "8853"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6c

    aput-object v0, v1, v2

    const-string v0, "otimes"

    const-string v2, "8855"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6d

    aput-object v0, v1, v2

    const-string v0, "perp"

    const-string v2, "8869"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6e

    aput-object v0, v1, v2

    const-string v0, "sdot"

    const-string v2, "8901"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6f

    aput-object v0, v1, v2

    const-string v0, "lceil"

    const-string v2, "8968"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x70

    aput-object v0, v1, v2

    const-string v0, "rceil"

    const-string v2, "8969"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x71

    aput-object v0, v1, v2

    const-string v0, "lfloor"

    const-string v2, "8970"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x72

    aput-object v0, v1, v2

    const-string v0, "rfloor"

    const-string v2, "8971"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x73

    aput-object v0, v1, v2

    const-string v0, "lang"

    const-string v2, "9001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x74

    aput-object v0, v1, v2

    const-string v0, "rang"

    const-string v2, "9002"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x75

    aput-object v0, v1, v2

    const-string v0, "loz"

    const-string v2, "9674"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x76

    aput-object v0, v1, v2

    const-string v0, "spades"

    const-string v2, "9824"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x77

    aput-object v0, v1, v2

    const-string v0, "clubs"

    const-string v2, "9827"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x78

    aput-object v0, v1, v2

    const-string v0, "hearts"

    const-string v2, "9829"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x79

    aput-object v0, v1, v2

    const-string v0, "diams"

    const-string v2, "9830"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7a

    aput-object v0, v1, v2

    const-string v0, "OElig"

    const-string v2, "338"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7b

    aput-object v0, v1, v2

    const-string v0, "oelig"

    const-string v2, "339"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7c

    aput-object v0, v1, v2

    const-string v0, "Scaron"

    const-string v2, "352"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7d

    aput-object v0, v1, v2

    const-string v0, "scaron"

    const-string v2, "353"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7e

    aput-object v0, v1, v2

    const-string v0, "Yuml"

    const-string v2, "376"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7f

    aput-object v0, v1, v2

    const-string v0, "circ"

    const-string v2, "710"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    aput-object v0, v1, v2

    const-string v0, "tilde"

    const-string v2, "732"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x81

    aput-object v0, v1, v2

    const-string v0, "ensp"

    const-string v2, "8194"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x82

    aput-object v0, v1, v2

    const-string v0, "emsp"

    const-string v2, "8195"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x83

    aput-object v0, v1, v2

    const-string v0, "thinsp"

    const-string v2, "8201"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x84

    aput-object v0, v1, v2

    const-string v0, "zwnj"

    const-string v2, "8204"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x85

    aput-object v0, v1, v2

    const-string v0, "zwj"

    const-string v2, "8205"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x86

    aput-object v0, v1, v2

    const-string v0, "lrm"

    const-string v2, "8206"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x87

    aput-object v0, v1, v2

    const-string v0, "rlm"

    const-string v2, "8207"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x88

    aput-object v0, v1, v2

    const-string v0, "ndash"

    const-string v2, "8211"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x89

    aput-object v0, v1, v2

    const-string v0, "mdash"

    const-string v2, "8212"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8a

    aput-object v0, v1, v2

    const-string v0, "lsquo"

    const-string v2, "8216"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8b

    aput-object v0, v1, v2

    const-string v0, "rsquo"

    const-string v2, "8217"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8c

    aput-object v0, v1, v2

    const-string v0, "sbquo"

    const-string v2, "8218"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8d

    aput-object v0, v1, v2

    const-string v0, "ldquo"

    const-string v2, "8220"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8e

    aput-object v0, v1, v2

    const-string v0, "rdquo"

    const-string v2, "8221"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8f

    aput-object v0, v1, v2

    const-string v0, "bdquo"

    const-string v2, "8222"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x90

    aput-object v0, v1, v2

    const-string v0, "dagger"

    const-string v2, "8224"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x91

    aput-object v0, v1, v2

    const-string v0, "Dagger"

    const-string v2, "8225"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x92

    aput-object v0, v1, v2

    const-string v0, "permil"

    const-string v2, "8240"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x93

    aput-object v0, v1, v2

    const-string v0, "lsaquo"

    const-string v2, "8249"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x94

    aput-object v0, v1, v2

    const-string v0, "rsaquo"

    const-string v2, "8250"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x95

    aput-object v0, v1, v2

    const-string v0, "euro"

    const-string v2, "8364"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x96

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/commons/lang/Entities;->HTML40_ARRAY:[[Ljava/lang/String;

    new-instance v0, Lorg/apache/commons/lang/Entities;

    invoke-direct {v0}, Lorg/apache/commons/lang/Entities;-><init>()V

    sget-object v1, Lorg/apache/commons/lang/Entities;->BASIC_ARRAY:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    sget-object v1, Lorg/apache/commons/lang/Entities;->APOS_ARRAY:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang/Entities;->XML:Lorg/apache/commons/lang/Entities;

    new-instance v0, Lorg/apache/commons/lang/Entities;

    invoke-direct {v0}, Lorg/apache/commons/lang/Entities;-><init>()V

    sget-object v1, Lorg/apache/commons/lang/Entities;->BASIC_ARRAY:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    sget-object v1, Lorg/apache/commons/lang/Entities;->ISO8859_1_ARRAY:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang/Entities;->HTML32:Lorg/apache/commons/lang/Entities;

    new-instance v0, Lorg/apache/commons/lang/Entities;

    invoke-direct {v0}, Lorg/apache/commons/lang/Entities;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/lang/Entities;->fillWithHtml40Entities(Lorg/apache/commons/lang/Entities;)V

    sput-object v0, Lorg/apache/commons/lang/Entities;->HTML40:Lorg/apache/commons/lang/Entities;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/lang/Entities$LookupEntityMap;

    invoke-direct {v0}, Lorg/apache/commons/lang/Entities$LookupEntityMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang/Entities;->map:Lorg/apache/commons/lang/Entities$EntityMap;

    return-void
.end method

.method private doUnescape(Ljava/io/Writer;Ljava/lang/String;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    move/from16 v4, p3

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v4

    :goto_0
    move v6, v0

    if-ge v6, v5, :cond_8

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x26

    const/4 v9, 0x1

    if-ne v7, v8, :cond_7

    add-int/lit8 v10, v6, 0x1

    const/16 v11, 0x3b

    invoke-virtual {v2, v11, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_0

    invoke-virtual {v1, v7}, Ljava/io/Writer;->write(I)V

    nop

    :goto_1
    move-object/from16 v3, p0

    goto/16 :goto_7

    :cond_0
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v2, v8, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    if-eq v14, v13, :cond_1

    if-ge v14, v12, :cond_1

    invoke-virtual {v1, v7}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const/16 v16, -0x1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_5

    if-le v11, v9, :cond_4

    invoke-virtual {v15, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v3, v0

    const/16 v0, 0x58

    if-eq v3, v0, :cond_2

    const/16 v0, 0x78

    if-eq v3, v0, :cond_2

    :try_start_0
    invoke-virtual {v15, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v9, 0xa

    invoke-static {v0, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v9, 0x10

    invoke-static {v0, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_2
    const v9, 0xffff

    if-le v0, v9, :cond_3

    const/4 v0, -0x1

    :cond_3
    goto :goto_4

    :goto_3
    nop

    const/4 v0, -0x1

    :goto_4
    move/from16 v16, v0

    :cond_4
    move-object/from16 v3, p0

    goto :goto_5

    :cond_5
    move-object/from16 v3, p0

    invoke-virtual {v3, v15}, Lorg/apache/commons/lang/Entities;->entityValue(Ljava/lang/String;)I

    move-result v16

    :goto_5
    move/from16 v0, v16

    if-ne v0, v13, :cond_6

    invoke-virtual {v1, v8}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v1, v15}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v8, 0x3b

    invoke-virtual {v1, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    :goto_6
    move v6, v12

    goto :goto_7

    :cond_7
    move-object/from16 v3, p0

    invoke-virtual {v1, v7}, Ljava/io/Writer;->write(I)V

    :goto_7
    const/4 v7, 0x1

    add-int/lit8 v0, v6, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_8
    move-object/from16 v3, p0

    return-void
.end method

.method static fillWithHtml40Entities(Lorg/apache/commons/lang/Entities;)V
    .locals 1

    sget-object v0, Lorg/apache/commons/lang/Entities;->BASIC_ARRAY:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    sget-object v0, Lorg/apache/commons/lang/Entities;->ISO8859_1_ARRAY:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    sget-object v0, Lorg/apache/commons/lang/Entities;->HTML40_ARRAY:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addEntities([[Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    aget-object v2, v2, v0

    aget-object v3, p1, v1

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/lang/Entities;->addEntity(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addEntity(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang/Entities;->map:Lorg/apache/commons/lang/Entities$EntityMap;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang/Entities$EntityMap;->add(Ljava/lang/String;I)V

    return-void
.end method

.method public entityValue(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang/Entities;->map:Lorg/apache/commons/lang/Entities$EntityMap;

    invoke-interface {v0, p1}, Lorg/apache/commons/lang/Entities$EntityMap;->value(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public unescape(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x26

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang/Entities;->doUnescape(Ljava/io/Writer;Ljava/lang/String;I)V

    return-void
.end method
