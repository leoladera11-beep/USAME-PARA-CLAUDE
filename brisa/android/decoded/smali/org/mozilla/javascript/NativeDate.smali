.class final Lorg/mozilla/javascript/NativeDate;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ConstructorId_UTC:I = -0x1

.field private static final ConstructorId_now:I = -0x3

.field private static final ConstructorId_parse:I = -0x2

.field private static final DATE_TAG:Ljava/lang/Object;

.field private static final HalfTimeDomain:D = 8.64E15

.field private static final HoursPerDay:D = 24.0

.field private static final Id_constructor:I = 0x1

.field private static final Id_getDate:I = 0x11

.field private static final Id_getDay:I = 0x13

.field private static final Id_getFullYear:I = 0xd

.field private static final Id_getHours:I = 0x15

.field private static final Id_getMilliseconds:I = 0x1b

.field private static final Id_getMinutes:I = 0x17

.field private static final Id_getMonth:I = 0xf

.field private static final Id_getSeconds:I = 0x19

.field private static final Id_getTime:I = 0xb

.field private static final Id_getTimezoneOffset:I = 0x1d

.field private static final Id_getUTCDate:I = 0x12

.field private static final Id_getUTCDay:I = 0x14

.field private static final Id_getUTCFullYear:I = 0xe

.field private static final Id_getUTCHours:I = 0x16

.field private static final Id_getUTCMilliseconds:I = 0x1c

.field private static final Id_getUTCMinutes:I = 0x18

.field private static final Id_getUTCMonth:I = 0x10

.field private static final Id_getUTCSeconds:I = 0x1a

.field private static final Id_getYear:I = 0xc

.field private static final Id_setDate:I = 0x27

.field private static final Id_setFullYear:I = 0x2b

.field private static final Id_setHours:I = 0x25

.field private static final Id_setMilliseconds:I = 0x1f

.field private static final Id_setMinutes:I = 0x23

.field private static final Id_setMonth:I = 0x29

.field private static final Id_setSeconds:I = 0x21

.field private static final Id_setTime:I = 0x1e

.field private static final Id_setUTCDate:I = 0x28

.field private static final Id_setUTCFullYear:I = 0x2c

.field private static final Id_setUTCHours:I = 0x26

.field private static final Id_setUTCMilliseconds:I = 0x20

.field private static final Id_setUTCMinutes:I = 0x24

.field private static final Id_setUTCMonth:I = 0x2a

.field private static final Id_setUTCSeconds:I = 0x22

.field private static final Id_setYear:I = 0x2d

.field private static final Id_toDateString:I = 0x4

.field private static final Id_toGMTString:I = 0x8

.field private static final Id_toISOString:I = 0x2e

.field private static final Id_toJSON:I = 0x2f

.field private static final Id_toLocaleDateString:I = 0x7

.field private static final Id_toLocaleString:I = 0x5

.field private static final Id_toLocaleTimeString:I = 0x6

.field private static final Id_toSource:I = 0x9

.field private static final Id_toString:I = 0x2

.field private static final Id_toTimeString:I = 0x3

.field private static final Id_toUTCString:I = 0x8

.field private static final Id_valueOf:I = 0xa

.field private static final MAXARGS:I = 0x7

.field private static final MAX_PROTOTYPE_ID:I = 0x30

.field private static final MinutesPerDay:D = 1440.0

.field private static final MinutesPerHour:D = 60.0

.field private static final SecondsPerDay:D = 86400.0

.field private static final SecondsPerHour:D = 3600.0

.field private static final SecondsPerMinute:D = 60.0

.field private static final SymbolId_toPrimitive:I = 0x30

.field private static final js_NaN_date_str:Ljava/lang/String; = "Invalid Date"

.field private static final localeDateFormatter:Ljava/time/format/DateTimeFormatter;

.field private static final localeDateFormatterES6:Ljava/time/format/DateTimeFormatter;

.field private static final localeDateTimeFormatter:Ljava/time/format/DateTimeFormatter;

.field private static final localeDateTimeFormatterES6:Ljava/time/format/DateTimeFormatter;

.field private static final localeTimeFormatter:Ljava/time/format/DateTimeFormatter;

.field private static final localeTimeFormatterES6:Ljava/time/format/DateTimeFormatter;

.field private static final msPerDay:D = 8.64E7

.field private static final msPerHour:D = 3600000.0

.field private static final msPerMinute:D = 60000.0

.field private static final msPerSecond:D = 1000.0

.field private static final serialVersionUID:J = -0x7349f3ade5310b76L

.field private static final timeZoneFormatter:Ljava/time/format/DateTimeFormatter;


# instance fields
.field private date:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Date"

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    const-string v0, "zzz"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->timeZoneFormatter:Ljava/time/format/DateTimeFormatter;

    const-string v0, "MMMM d, yyyy h:mm:ss a z"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->localeDateTimeFormatter:Ljava/time/format/DateTimeFormatter;

    const-string v0, "MMMM d, yyyy"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->localeDateFormatter:Ljava/time/format/DateTimeFormatter;

    const-string v0, "h:mm:ss a z"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->localeTimeFormatter:Ljava/time/format/DateTimeFormatter;

    sget-object v0, Ljava/time/format/FormatStyle;->SHORT:Ljava/time/format/FormatStyle;

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofLocalizedDateTime(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lorg/mozilla/javascript/NativeDate;->localeDateTimeFormatterES6:Ljava/time/format/DateTimeFormatter;

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofLocalizedDate(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lorg/mozilla/javascript/NativeDate;->localeDateFormatterES6:Ljava/time/format/DateTimeFormatter;

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofLocalizedTime(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->localeTimeFormatterES6:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method private static DateFromTime(D)I
    .locals 3

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->Day(D)D

    move-result-wide p0

    int-to-double v1, v0

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->DayFromYear(D)D

    move-result-wide v1

    sub-double/2addr p0, v1

    double-to-int p0, p0

    add-int/lit8 p1, p0, -0x3b

    if-gez p1, :cond_1

    const/16 v0, -0x1c

    if-ge p1, v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    add-int/lit8 p0, p0, -0x1e

    return p0

    :cond_1
    invoke-static {v0}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    const/16 p0, 0x1d

    return p0

    :cond_2
    add-int/lit8 p1, p0, -0x3c

    :cond_3
    div-int/lit8 p0, p1, 0x1e

    const/16 v0, 0x1e

    const/16 v1, 0x1f

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_0
    add-int/lit16 p1, p1, -0x112

    return p1

    :pswitch_1
    const/16 v1, 0x113

    goto :goto_1

    :pswitch_2
    const/16 p0, 0xf5

    :goto_0
    move v0, v1

    move v1, p0

    goto :goto_1

    :pswitch_3
    const/16 v1, 0xd6

    goto :goto_1

    :pswitch_4
    const/16 p0, 0xb8

    goto :goto_0

    :pswitch_5
    const/16 p0, 0x99

    goto :goto_0

    :pswitch_6
    const/16 v1, 0x7a

    goto :goto_1

    :pswitch_7
    const/16 p0, 0x5c

    goto :goto_0

    :pswitch_8
    const/16 v1, 0x3d

    goto :goto_1

    :pswitch_9
    move v0, v1

    :goto_1
    sub-int/2addr p1, v1

    if-gez p1, :cond_4

    add-int/2addr p1, v0

    :cond_4
    add-int/lit8 p1, p1, 0x1

    return p1

    :pswitch_a
    add-int/lit8 p1, p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static Day(D)D
    .locals 2

    const-wide v0, 0x4194997000000000L    # 8.64E7

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static DayFromMonth(II)D
    .locals 3

    mul-int/lit8 v0, p0, 0x1e

    const/4 v1, 0x7

    const/4 v2, 0x2

    if-lt p0, v1, :cond_0

    div-int/lit8 v1, p0, 0x2

    :goto_0
    add-int/lit8 v1, v1, -0x1

    add-int/2addr v1, v0

    goto :goto_1

    :cond_0
    if-lt p0, v2, :cond_1

    add-int/lit8 v1, p0, -0x1

    div-int/2addr v1, v2

    goto :goto_0

    :cond_1
    add-int v1, v0, p0

    :goto_1
    if-lt p0, v2, :cond_2

    invoke-static {p1}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    int-to-double p0, v1

    return-wide p0
.end method

.method private static DayFromYear(D)D
    .locals 6

    const-wide v0, 0x409ec80000000000L    # 1970.0

    sub-double v0, p0, v0

    const-wide v2, 0x4076d00000000000L    # 365.0

    mul-double/2addr v0, v2

    const-wide v2, 0x409ec40000000000L    # 1969.0

    sub-double v2, p0, v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    add-double/2addr v2, v0

    const-wide v0, 0x409db40000000000L    # 1901.0

    sub-double v0, p0, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    sub-double/2addr v2, v0

    const-wide v0, 0x4099040000000000L    # 1601.0

    sub-double/2addr p0, v0

    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    add-double/2addr p0, v2

    return-wide p0
.end method

.method private static DaylightSavingTA(Lorg/mozilla/javascript/Context;D)D
    .locals 9

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v2

    invoke-static {v2}, Lorg/mozilla/javascript/NativeDate;->EquivalentYear(I)I

    move-result v2

    int-to-double v3, v2

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v2

    int-to-double v5, v2

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v2

    int-to-double v7, v2

    invoke-static/range {v3 .. v8}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide v2

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeDate;->TimeWithinDay(D)D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide p1

    :cond_0
    new-instance v2, Ljava/util/Date;

    double-to-long p1, p1

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide p0, 0x414b774000000000L    # 3600000.0

    return-wide p0

    :cond_1
    return-wide v0
.end method

.method private static DaysInMonth(II)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1d

    return p0

    :cond_0
    const/16 p0, 0x1c

    return p0

    :cond_1
    const/16 p0, 0x8

    if-lt p1, p0, :cond_2

    and-int/lit8 p0, p1, 0x1

    rsub-int/lit8 p0, p0, 0x1f

    return p0

    :cond_2
    and-int/lit8 p0, p1, 0x1

    add-int/lit8 p0, p0, 0x1e

    return p0
.end method

.method private static DaysInYear(D)D
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    double-to-int p0, p0

    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide p0, 0x4076e00000000000L    # 366.0

    return-wide p0

    :cond_1
    const-wide p0, 0x4076d00000000000L    # 365.0

    return-wide p0

    :cond_2
    :goto_0
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method private static EquivalentYear(I)I
    .locals 2

    int-to-double v0, p0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->DayFromYear(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x7

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x7b4

    return p0

    :pswitch_1
    const/16 p0, 0x7c4

    return p0

    :pswitch_2
    const/16 p0, 0x7b8

    return p0

    :pswitch_3
    const/16 p0, 0x7c8

    return p0

    :pswitch_4
    const/16 p0, 0x7bc

    return p0

    :pswitch_5
    const/16 p0, 0x7cc

    return p0

    :pswitch_6
    const/16 p0, 0x7c0

    return p0

    :cond_1
    packed-switch v0, :pswitch_data_1

    :goto_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_7
    const/16 p0, 0x7b9

    return p0

    :pswitch_8
    const/16 p0, 0x7b3

    return p0

    :pswitch_9
    const/16 p0, 0x7bd

    return p0

    :pswitch_a
    const/16 p0, 0x7c2

    return p0

    :pswitch_b
    const/16 p0, 0x7c1

    return p0

    :pswitch_c
    const/16 p0, 0x7b5

    return p0

    :pswitch_d
    const/16 p0, 0x7ba

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static HourFromTime(D)I
    .locals 4

    const-wide v0, 0x414b774000000000L    # 3600000.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    add-double/2addr p0, v0

    :cond_0
    double-to-int p0, p0

    return p0
.end method

.method private static IsLeapYear(I)Z
    .locals 1

    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static LocalTime(Lorg/mozilla/javascript/Context;D)D
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-double v0, v0

    add-double/2addr v0, p1

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativeDate;->DaylightSavingTA(Lorg/mozilla/javascript/Context;D)D

    move-result-wide p0

    add-double/2addr v0, p0

    return-wide v0
.end method

.method private static MakeDate(DD)D
    .locals 2

    const-wide v0, 0x4194997000000000L    # 8.64E7

    mul-double/2addr p0, v0

    add-double/2addr p0, p2

    return-wide p0
.end method

.method private static MakeDay(DDD)D
    .locals 4

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    div-double v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    add-double/2addr v2, p0

    rem-double/2addr p2, v0

    const-wide/16 p0, 0x0

    cmpg-double p0, p2, p0

    if-gez p0, :cond_0

    add-double/2addr p2, v0

    :cond_0
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->TimeFromYear(D)D

    move-result-wide p0

    const-wide v0, 0x4194997000000000L    # 8.64E7

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p2, p2

    double-to-int p3, v2

    invoke-static {p2, p3}, Lorg/mozilla/javascript/NativeDate;->DayFromMonth(II)D

    move-result-wide p2

    add-double/2addr p0, p2

    add-double/2addr p0, p4

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p0, p2

    return-wide p0
.end method

.method private static MakeTime(DDDD)D
    .locals 2

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, v0

    add-double/2addr p0, p2

    mul-double/2addr p0, v0

    add-double/2addr p0, p4

    const-wide p2, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, p2

    add-double/2addr p0, p6

    return-wide p0
.end method

.method private static MinFromTime(D)I
    .locals 4

    const-wide v0, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    add-double/2addr p0, v0

    :cond_0
    double-to-int p0, p0

    return p0
.end method

.method private static MonthFromTime(D)I
    .locals 3

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->Day(D)D

    move-result-wide p0

    int-to-double v1, v0

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->DayFromYear(D)D

    move-result-wide v1

    sub-double/2addr p0, v1

    double-to-int p0, p0

    add-int/lit8 p1, p0, -0x3b

    const/4 v1, 0x1

    if-gez p1, :cond_1

    const/16 p0, -0x1c

    if-ge p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    invoke-static {v0}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    return v1

    :cond_2
    add-int/lit8 p1, p0, -0x3c

    :cond_3
    div-int/lit8 p0, p1, 0x1e

    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_0
    const/16 p0, 0xb

    return p0

    :pswitch_1
    const/16 v2, 0x113

    goto :goto_0

    :pswitch_2
    const/16 v2, 0xf5

    goto :goto_0

    :pswitch_3
    const/16 v2, 0xd6

    goto :goto_0

    :pswitch_4
    const/16 v2, 0xb8

    goto :goto_0

    :pswitch_5
    const/16 v2, 0x99

    goto :goto_0

    :pswitch_6
    const/16 v2, 0x7a

    goto :goto_0

    :pswitch_7
    const/16 v2, 0x5c

    goto :goto_0

    :pswitch_8
    const/16 v2, 0x3d

    goto :goto_0

    :pswitch_9
    const/16 v2, 0x1f

    :goto_0
    if-lt p1, v2, :cond_4

    add-int/2addr p0, v0

    return p0

    :cond_4
    add-int/2addr p0, v1

    return p0

    :pswitch_a
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static SecFromTime(D)I
    .locals 4

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    add-double/2addr p0, v0

    :cond_0
    double-to-int p0, p0

    return p0
.end method

.method private static TimeClip(D)D
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_2

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x433eb208c2dc0000L    # 8.64E15

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_1

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    return-wide p0

    :cond_1
    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    return-wide p0

    :cond_2
    :goto_0
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method private static TimeFromYear(D)D
    .locals 2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DayFromYear(D)D

    move-result-wide p0

    const-wide v0, 0x4194997000000000L    # 8.64E7

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method private static TimeWithinDay(D)D
    .locals 4

    const-wide v0, 0x4194997000000000L    # 8.64E7

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    add-double/2addr p0, v0

    :cond_0
    return-wide p0
.end method

.method private static WeekDay(D)I
    .locals 4

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->Day(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    add-double/2addr p0, v0

    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    add-double/2addr p0, v0

    :cond_0
    double-to-int p0, p0

    return p0
.end method

.method private static YearFromTime(D)I
    .locals 11

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide v0, 0x421d63c37f000000L    # 3.1556952E10

    div-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide v2, 0x409ec80000000000L    # 1970.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->TimeFromYear(D)D

    move-result-wide v2

    cmpl-double v4, v2, p0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-lez v4, :cond_1

    sub-double/2addr v0, v5

    goto :goto_0

    :cond_1
    const-wide v7, 0x4194997000000000L    # 8.64E7

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->DaysInYear(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    add-double/2addr v9, v2

    cmpg-double p0, v9, p0

    if-gtz p0, :cond_2

    add-double/2addr v0, v5

    :cond_2
    :goto_0
    double-to-int p0, v0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private static append0PaddedUint(Ljava/lang/StringBuilder;II)V
    .locals 3

    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-lt p1, v2, :cond_3

    const v2, 0x3b9aca00

    if-ge p1, v2, :cond_2

    move v2, v1

    :goto_0
    mul-int/lit8 p2, v2, 0xa

    if-ge p1, p2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    move v2, p2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p2, -0xa

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    const/16 p2, 0x30

    if-lez v0, :cond_4

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-eq v2, v1, :cond_5

    div-int v0, p1, v2

    add-int/2addr v0, p2

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/2addr p1, v2

    div-int/lit8 v2, v2, 0xa

    goto :goto_2

    :cond_5
    add-int/2addr p1, p2

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static appendMonthName(Ljava/lang/StringBuilder;I)V
    .locals 4

    const/4 v0, 0x3

    mul-int/2addr p1, v0

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_0

    add-int v2, p1, v1

    const-string v3, "JanFebMarAprMayJunJulAugSepOctNovDec"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static appendWeekDayName(Ljava/lang/StringBuilder;I)V
    .locals 4

    const/4 v0, 0x3

    mul-int/2addr p1, v0

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_0

    add-int v2, p1, v1

    const-string v3, "SunMonTueWedThuFriSat"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static date_format(Lorg/mozilla/javascript/Context;DI)Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativeDate;->LocalTime(Lorg/mozilla/javascript/Context;D)D

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-eq p3, v4, :cond_1

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->WeekDay(D)I

    move-result v4

    invoke-static {v0, v4}, Lorg/mozilla/javascript/NativeDate;->appendWeekDayName(Ljava/lang/StringBuilder;I)V

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v7

    invoke-static {v0, v7}, Lorg/mozilla/javascript/NativeDate;->appendMonthName(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v7

    invoke-static {v0, v7, v6}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v7

    if-gez v7, :cond_0

    const/16 v8, 0x2d

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int v7, v7

    :cond_0
    invoke-static {v0, v7, v5}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    if-eq p3, v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eq p3, v5, :cond_4

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result p3

    invoke-static {v0, p3, v6}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const/16 p3, 0x3a

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result v4

    invoke-static {v0, v4, v6}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result p3

    invoke-static {v0, p3, v6}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p3

    int-to-double v6, p3

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativeDate;->DaylightSavingTA(Lorg/mozilla/javascript/Context;D)D

    move-result-wide v8

    add-double/2addr v6, v8

    const-wide v8, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int p3, v6

    div-int/lit8 v4, p3, 0x3c

    mul-int/lit8 v4, v4, 0x64

    rem-int/2addr p3, v1

    add-int/2addr p3, v4

    if-lez p3, :cond_2

    const-string v1, " GMT+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, " GMT-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int p3, p3

    :goto_0
    invoke-static {v0, p3, v5}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const-wide/16 v4, 0x0

    cmpg-double p3, p1, v4

    if-gez p3, :cond_3

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result p3

    invoke-static {p3}, Lorg/mozilla/javascript/NativeDate;->EquivalentYear(I)I

    move-result p3

    int-to-double v1, p3

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result p3

    int-to-double v3, p3

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result p3

    int-to-double v5, p3

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide v1

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeDate;->TimeWithinDay(D)D

    move-result-wide p1

    invoke-static {v1, v2, p1, p2}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide p1

    :cond_3
    const-string p3, " ("

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p0

    sget-object p3, Lorg/mozilla/javascript/NativeDate;->timeZoneFormatter:Ljava/time/format/DateTimeFormatter;

    double-to-long p1, p1

    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static date_msecFromArgs([Ljava/lang/Object;)D
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x7

    new-array v2, v1, [D

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    if-ge v4, v1, :cond_4

    array-length v8, v0

    if-ge v4, v8, :cond_2

    aget-object v5, v0, v4

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    aget-object v5, v0, v4

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v5

    aput-wide v5, v2, v4

    goto :goto_2

    :cond_1
    :goto_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_2
    if-ne v4, v7, :cond_3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    aput-wide v5, v2, v4

    goto :goto_2

    :cond_3
    aput-wide v5, v2, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    aget-wide v0, v2, v3

    cmpl-double v4, v0, v5

    if-ltz v4, :cond_5

    const-wide v4, 0x4058c00000000000L    # 99.0

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_5

    const-wide v4, 0x409db00000000000L    # 1900.0

    add-double/2addr v0, v4

    aput-wide v0, v2, v3

    :cond_5
    aget-wide v8, v2, v3

    const/4 v0, 0x1

    aget-wide v10, v2, v0

    aget-wide v12, v2, v7

    const/4 v0, 0x3

    aget-wide v14, v2, v0

    const/4 v0, 0x4

    aget-wide v16, v2, v0

    const/4 v0, 0x5

    aget-wide v18, v2, v0

    const/4 v0, 0x6

    aget-wide v20, v2, v0

    invoke-static/range {v8 .. v21}, Lorg/mozilla/javascript/NativeDate;->date_msecFromDate(DDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static date_msecFromDate(DDDDDDD)D
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide p0

    invoke-static/range {p6 .. p13}, Lorg/mozilla/javascript/NativeDate;->MakeTime(DDDD)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static date_parseString(Lorg/mozilla/javascript/Context;Ljava/lang/String;)D
    .locals 38

    move-object/from16 v3, p1

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/NativeDate;->parseISOString(Lorg/mozilla/javascript/Context;Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v0, -0x1

    move v10, v0

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    const/16 v18, 0x0

    :cond_1
    :goto_0
    const-wide/high16 v19, 0x7ff8000000000000L    # Double.NaN

    if-ge v4, v6, :cond_31

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v2, v4, 0x1

    const/16 v5, 0x39

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    const/16 v7, 0x20

    const/16 v8, 0x30

    const/16 v9, 0x2d

    if-le v1, v7, :cond_2

    const/16 v7, 0x2c

    if-eq v1, v7, :cond_2

    if-ne v1, v9, :cond_3

    :cond_2
    move/from16 v24, v0

    goto/16 :goto_11

    :cond_3
    const/16 v7, 0x28

    const/16 v26, 0x1

    if-ne v1, v7, :cond_6

    move v4, v2

    :cond_4
    :goto_1
    if-ge v4, v6, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v4, v4, 0x1

    if-ne v1, v7, :cond_5

    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    :cond_5
    const/16 v2, 0x29

    if-ne v1, v2, :cond_4

    add-int/lit8 v26, v26, -0x1

    if-gtz v26, :cond_4

    goto :goto_0

    :cond_6
    const/16 v7, 0x2b

    const/16 v9, 0x2f

    const-wide/16 v29, 0x0

    if-gt v8, v1, :cond_1f

    if-gt v1, v5, :cond_1f

    add-int/lit8 v4, v1, -0x30

    move/from16 v37, v4

    move v4, v2

    move/from16 v2, v37

    :goto_2
    if-ge v4, v6, :cond_7

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v8, v1, :cond_7

    if-gt v1, v5, :cond_7

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v1

    sub-int/2addr v2, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    const/16 v5, 0x3c

    if-eq v0, v7, :cond_1b

    const/16 v8, 0x2d

    if-ne v0, v8, :cond_8

    goto/16 :goto_7

    :cond_8
    const/16 v7, 0x46

    if-ge v2, v7, :cond_16

    if-ne v0, v9, :cond_9

    if-ltz v11, :cond_9

    if-ltz v12, :cond_9

    if-gez v10, :cond_9

    goto :goto_5

    :cond_9
    const/16 v0, 0x3a

    if-ne v1, v0, :cond_c

    if-gez v15, :cond_a

    move v15, v2

    goto/16 :goto_9

    :cond_a
    if-gez v14, :cond_b

    goto :goto_3

    :cond_b
    return-wide v19

    :cond_c
    if-ne v1, v9, :cond_f

    if-gez v11, :cond_d

    add-int/lit8 v2, v2, -0x1

    move v11, v2

    goto/16 :goto_9

    :cond_d
    if-gez v12, :cond_e

    goto :goto_4

    :cond_e
    return-wide v19

    :cond_f
    if-ge v4, v6, :cond_10

    const/16 v0, 0x2c

    if-eq v1, v0, :cond_10

    const/16 v0, 0x20

    if-le v1, v0, :cond_10

    const/16 v8, 0x2d

    if-eq v1, v8, :cond_10

    return-wide v19

    :cond_10
    if-eqz v18, :cond_12

    if-ge v2, v5, :cond_12

    cmpg-double v0, v16, v29

    if-gez v0, :cond_11

    int-to-double v0, v2

    sub-double v16, v16, v0

    goto :goto_9

    :cond_11
    int-to-double v0, v2

    add-double v16, v16, v0

    goto :goto_9

    :cond_12
    if-ltz v15, :cond_13

    if-gez v14, :cond_13

    :goto_3
    move v14, v2

    goto :goto_9

    :cond_13
    if-ltz v14, :cond_14

    if-gez v13, :cond_14

    move v13, v2

    goto :goto_9

    :cond_14
    if-gez v12, :cond_15

    :goto_4
    move v12, v2

    goto :goto_9

    :cond_15
    return-wide v19

    :cond_16
    :goto_5
    if-ltz v10, :cond_17

    return-wide v19

    :cond_17
    const/16 v0, 0x20

    if-le v1, v0, :cond_19

    const/16 v0, 0x2c

    if-eq v1, v0, :cond_19

    if-eq v1, v9, :cond_19

    if-lt v4, v6, :cond_18

    goto :goto_6

    :cond_18
    return-wide v19

    :cond_19
    :goto_6
    const/16 v0, 0x64

    if-ge v2, v0, :cond_1a

    add-int/lit16 v2, v2, 0x76c

    :cond_1a
    move v10, v2

    goto :goto_9

    :cond_1b
    :goto_7
    const/16 v1, 0x18

    if-ge v2, v1, :cond_1c

    mul-int/lit8 v2, v2, 0x3c

    goto :goto_8

    :cond_1c
    rem-int/lit8 v1, v2, 0x64

    div-int/lit8 v2, v2, 0x64

    mul-int/2addr v2, v5

    add-int/2addr v2, v1

    :goto_8
    if-ne v0, v7, :cond_1d

    neg-int v2, v2

    :cond_1d
    cmpl-double v0, v16, v29

    if-eqz v0, :cond_1e

    cmpl-double v0, v16, v21

    if-eqz v0, :cond_1e

    return-wide v19

    :cond_1e
    int-to-double v0, v2

    move-wide/from16 v16, v0

    move/from16 v18, v26

    :goto_9
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1f
    if-eq v1, v9, :cond_2f

    const/16 v5, 0x3a

    if-eq v1, v5, :cond_2f

    if-eq v1, v7, :cond_2f

    const/16 v8, 0x2d

    if-ne v1, v8, :cond_20

    goto/16 :goto_12

    :cond_20
    move v7, v2

    :goto_a
    if-ge v7, v6, :cond_23

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x41

    if-gt v2, v1, :cond_21

    const/16 v2, 0x5a

    if-le v1, v2, :cond_22

    :cond_21
    const/16 v2, 0x61

    if-gt v2, v1, :cond_23

    const/16 v2, 0x7a

    if-le v1, v2, :cond_22

    goto :goto_b

    :cond_22
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_23
    :goto_b
    sub-int v5, v7, v4

    const/4 v8, 0x2

    if-ge v5, v8, :cond_24

    return-wide v19

    :cond_24
    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_c
    const/16 v1, 0x3b

    move/from16 v24, v0

    const-string v0, "am;pm;monday;tuesday;wednesday;thursday;friday;saturday;sunday;january;february;march;april;may;june;july;august;september;october;november;december;gmt;ut;utc;est;edt;cst;cdt;mst;mdt;pst;pdt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v25

    if-gez v25, :cond_25

    return-wide v19

    :cond_25
    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/16 v0, 0xc

    if-ge v9, v8, :cond_29

    if-gt v15, v0, :cond_28

    if-gez v15, :cond_26

    goto :goto_d

    :cond_26
    if-nez v9, :cond_27

    if-ne v15, v0, :cond_2d

    const/4 v15, 0x0

    goto :goto_f

    :cond_27
    if-eq v15, v0, :cond_2d

    add-int/lit8 v15, v15, 0xc

    goto :goto_f

    :cond_28
    :goto_d
    return-wide v19

    :cond_29
    add-int/lit8 v1, v9, -0x2

    const/4 v2, 0x7

    if-ge v1, v2, :cond_2a

    goto :goto_f

    :cond_2a
    add-int/lit8 v1, v9, -0x9

    if-ge v1, v0, :cond_2c

    if-gez v11, :cond_2b

    move v11, v1

    goto :goto_f

    :cond_2b
    return-wide v19

    :cond_2c
    add-int/lit8 v9, v9, -0x15

    const-wide v0, 0x4072c00000000000L    # 300.0

    const-wide v4, 0x4076800000000000L    # 360.0

    const-wide v19, 0x407a400000000000L    # 420.0

    packed-switch v9, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_f

    :pswitch_0
    move-wide/from16 v16, v19

    goto :goto_f

    :pswitch_1
    const-wide/high16 v0, 0x407e000000000000L    # 480.0

    :goto_e
    :pswitch_2
    move-wide/from16 v16, v0

    goto :goto_f

    :pswitch_3
    move-wide/from16 v16, v4

    goto :goto_f

    :pswitch_4
    const-wide/high16 v0, 0x406e000000000000L    # 240.0

    goto :goto_e

    :pswitch_5
    move-wide/from16 v16, v29

    :cond_2d
    :goto_f
    move v4, v7

    :goto_10
    move/from16 v0, v24

    goto/16 :goto_0

    :cond_2e
    add-int/lit8 v2, v25, 0x1

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v24

    goto :goto_c

    :goto_11
    if-ge v2, v6, :cond_30

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_30

    if-gt v8, v0, :cond_30

    if-gt v0, v5, :cond_30

    :cond_2f
    :goto_12
    move v0, v1

    move v4, v2

    goto/16 :goto_0

    :cond_30
    move v4, v2

    goto :goto_10

    :cond_31
    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    if-ltz v10, :cond_37

    if-ltz v11, :cond_37

    if-gez v12, :cond_32

    goto :goto_14

    :cond_32
    if-gez v13, :cond_33

    const/4 v13, 0x0

    :cond_33
    if-gez v14, :cond_34

    const/4 v14, 0x0

    :cond_34
    if-gez v15, :cond_35

    const/4 v9, 0x0

    goto :goto_13

    :cond_35
    move v9, v15

    :goto_13
    int-to-double v0, v10

    int-to-double v2, v11

    int-to-double v4, v12

    int-to-double v6, v9

    int-to-double v8, v14

    int-to-double v10, v13

    const-wide/16 v35, 0x0

    move-wide/from16 v23, v0

    move-wide/from16 v25, v2

    move-wide/from16 v27, v4

    move-wide/from16 v29, v6

    move-wide/from16 v31, v8

    move-wide/from16 v33, v10

    invoke-static/range {v23 .. v36}, Lorg/mozilla/javascript/NativeDate;->date_msecFromDate(DDDDDDD)D

    move-result-wide v0

    cmpl-double v2, v16, v21

    if-nez v2, :cond_36

    move-object/from16 v2, p0

    invoke-static {v2, v0, v1}, Lorg/mozilla/javascript/NativeDate;->internalUTC(Lorg/mozilla/javascript/Context;D)D

    move-result-wide v0

    return-wide v0

    :cond_36
    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    mul-double v16, v16, v2

    add-double v16, v16, v0

    return-wide v16

    :cond_37
    :goto_14
    return-wide v19

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 3

    new-instance v0, Lorg/mozilla/javascript/NativeDate;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeDate;-><init>()V

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    iput-wide v1, v0, Lorg/mozilla/javascript/NativeDate;->date:D

    const/16 v1, 0x30

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method private static internalUTC(Lorg/mozilla/javascript/Context;D)D
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-double v0, v0

    sub-double/2addr p1, v0

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativeDate;->DaylightSavingTA(Lorg/mozilla/javascript/Context;D)D

    move-result-wide v0

    sub-double/2addr p1, v0

    return-wide p1
.end method

.method private static jsConstructor(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/mozilla/javascript/NativeDate;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeDate;-><init>()V

    array-length v1, p1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/NativeDate;->now()D

    move-result-wide p0

    iput-wide p0, v0, Lorg/mozilla/javascript/NativeDate;->date:D

    return-object v0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    aget-object p1, p1, v1

    instance-of v1, p1, Lorg/mozilla/javascript/NativeDate;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/mozilla/javascript/NativeDate;

    iget-wide p0, p1, Lorg/mozilla/javascript/NativeDate;->date:D

    iput-wide p0, v0, Lorg/mozilla/javascript/NativeDate;->date:D

    return-object v0

    :cond_1
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toPrimitive(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->date_parseString(Lorg/mozilla/javascript/Context;Ljava/lang/String;)D

    move-result-wide p0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p0

    :goto_0
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide p0

    iput-wide p0, v0, Lorg/mozilla/javascript/NativeDate;->date:D

    return-object v0

    :cond_3
    invoke-static {p1}, Lorg/mozilla/javascript/NativeDate;->date_msecFromArgs([Ljava/lang/Object;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {p0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->internalUTC(Lorg/mozilla/javascript/Context;D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v1

    :cond_4
    iput-wide v1, v0, Lorg/mozilla/javascript/NativeDate;->date:D

    return-object v0
.end method

.method private static jsStaticFunction_UTC([Ljava/lang/Object;)D
    .locals 2

    array-length v0, p0

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->date_msecFromArgs([Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static js_toISOString(D)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v1

    const/4 v2, 0x6

    const/16 v3, 0x2d

    if-gez v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int v1, v1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x270f

    if-le v1, v4, :cond_1

    const/16 v4, 0x2b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result v1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result v3

    invoke-static {v0, v3, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result v1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->msFromTime(D)I

    move-result p0

    const/4 p1, 0x3

    invoke-static {v0, p0, p1}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const/16 p0, 0x5a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static js_toUTCString(D)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->WeekDay(D)I

    move-result v1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->appendWeekDayName(Ljava/lang/StringBuilder;I)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v3

    invoke-static {v0, v3}, Lorg/mozilla/javascript/NativeDate;->appendMonthName(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v3

    if-gez v3, :cond_0

    const/16 v4, 0x2d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int v3, v3

    :cond_0
    const/4 v4, 0x4

    invoke-static {v0, v3, v4}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result v1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result v3

    invoke-static {v0, v3, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result p0

    invoke-static {v0, p0, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const-string p0, " GMT"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static makeDate(Lorg/mozilla/javascript/Context;D[Ljava/lang/Object;I)D
    .locals 19

    move-object/from16 v0, p3

    array-length v1, v0

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    if-nez v1, :cond_0

    return-wide v2

    :cond_0
    const/4 v1, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch p4, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_0
    move v7, v5

    goto :goto_0

    :pswitch_1
    move v7, v6

    :goto_0
    move v8, v4

    goto :goto_3

    :pswitch_2
    move v7, v5

    goto :goto_1

    :pswitch_3
    move v7, v6

    :goto_1
    move v8, v1

    goto :goto_3

    :pswitch_4
    move v7, v5

    goto :goto_2

    :pswitch_5
    move v7, v6

    :goto_2
    move v8, v6

    :goto_3
    array-length v9, v0

    if-ge v9, v8, :cond_1

    array-length v9, v0

    goto :goto_4

    :cond_1
    move v9, v8

    :goto_4
    new-array v10, v4, [D

    move v11, v5

    move v12, v11

    :goto_5
    if-ge v11, v9, :cond_4

    aget-object v13, v0, v11

    invoke-static {v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-static {v13, v14}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v15

    if-eqz v15, :cond_2

    goto :goto_6

    :cond_2
    invoke-static {v13, v14}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(D)D

    move-result-wide v13

    aput-wide v13, v10, v11

    goto :goto_7

    :cond_3
    :goto_6
    move v12, v6

    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_4
    if-eqz v12, :cond_5

    return-wide v2

    :cond_5
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_7

    if-ge v8, v4, :cond_6

    return-wide v2

    :cond_6
    const-wide/16 v2, 0x0

    goto :goto_8

    :cond_7
    if-eqz v7, :cond_8

    invoke-static/range {p0 .. p2}, Lorg/mozilla/javascript/NativeDate;->LocalTime(Lorg/mozilla/javascript/Context;D)D

    move-result-wide v2

    goto :goto_8

    :cond_8
    move-wide/from16 v2, p1

    :goto_8
    if-lt v8, v4, :cond_9

    if-lez v9, :cond_9

    aget-wide v4, v10, v5

    move-wide v13, v4

    move v5, v6

    goto :goto_9

    :cond_9
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v0

    int-to-double v11, v0

    move-wide v13, v11

    :goto_9
    if-lt v8, v1, :cond_a

    if-ge v5, v9, :cond_a

    add-int/lit8 v0, v5, 0x1

    aget-wide v4, v10, v5

    move-wide v15, v4

    move v5, v0

    goto :goto_a

    :cond_a
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v0

    int-to-double v0, v0

    move-wide v15, v0

    :goto_a
    if-lt v8, v6, :cond_b

    if-ge v5, v9, :cond_b

    aget-wide v0, v10, v5

    :goto_b
    move-wide/from16 v17, v0

    goto :goto_c

    :cond_b
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v0

    int-to-double v0, v0

    goto :goto_b

    :goto_c
    invoke-static/range {v13 .. v18}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide v0

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->TimeWithinDay(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide v0

    if-eqz v7, :cond_c

    move-object/from16 v2, p0

    invoke-static {v2, v0, v1}, Lorg/mozilla/javascript/NativeDate;->internalUTC(Lorg/mozilla/javascript/Context;D)D

    move-result-wide v0

    :cond_c
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static makeTime(Lorg/mozilla/javascript/Context;D[Ljava/lang/Object;I)D
    .locals 22

    move-object/from16 v0, p3

    array-length v1, v0

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    if-nez v1, :cond_0

    return-wide v2

    :cond_0
    const/4 v1, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch p4, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_0
    move v8, v6

    goto :goto_0

    :pswitch_1
    move v8, v7

    :goto_0
    move v9, v5

    goto :goto_4

    :pswitch_2
    move v8, v6

    goto :goto_1

    :pswitch_3
    move v8, v7

    :goto_1
    move v9, v4

    goto :goto_4

    :pswitch_4
    move v8, v6

    goto :goto_2

    :pswitch_5
    move v8, v7

    :goto_2
    move v9, v1

    goto :goto_4

    :pswitch_6
    move v8, v6

    goto :goto_3

    :pswitch_7
    move v8, v7

    :goto_3
    move v9, v7

    :goto_4
    array-length v10, v0

    if-ge v10, v9, :cond_1

    array-length v10, v0

    goto :goto_5

    :cond_1
    move v10, v9

    :goto_5
    new-array v11, v5, [D

    move v12, v6

    move v13, v12

    :goto_6
    if-ge v12, v10, :cond_4

    aget-object v14, v0, v12

    invoke-static {v14}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v16

    if-nez v16, :cond_3

    invoke-static {v14, v15}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v16

    if-eqz v16, :cond_2

    goto :goto_7

    :cond_2
    invoke-static {v14, v15}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(D)D

    move-result-wide v14

    aput-wide v14, v11, v12

    goto :goto_8

    :cond_3
    :goto_7
    move v13, v7

    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_4
    if-nez v13, :cond_c

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_11

    :cond_5
    if-eqz v8, :cond_6

    invoke-static/range {p0 .. p2}, Lorg/mozilla/javascript/NativeDate;->LocalTime(Lorg/mozilla/javascript/Context;D)D

    move-result-wide v2

    goto :goto_9

    :cond_6
    move-wide/from16 v2, p1

    :goto_9
    if-lt v9, v5, :cond_7

    if-lez v10, :cond_7

    aget-wide v5, v11, v6

    move-wide v14, v5

    move v6, v7

    goto :goto_a

    :cond_7
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result v0

    int-to-double v12, v0

    move-wide v14, v12

    :goto_a
    if-lt v9, v4, :cond_8

    if-ge v6, v10, :cond_8

    add-int/lit8 v0, v6, 0x1

    aget-wide v4, v11, v6

    move v6, v0

    :goto_b
    move-wide/from16 v16, v4

    goto :goto_c

    :cond_8
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result v0

    int-to-double v4, v0

    goto :goto_b

    :goto_c
    if-lt v9, v1, :cond_9

    if-ge v6, v10, :cond_9

    add-int/lit8 v0, v6, 0x1

    aget-wide v4, v11, v6

    move v6, v0

    :goto_d
    move-wide/from16 v18, v4

    goto :goto_e

    :cond_9
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result v0

    int-to-double v4, v0

    goto :goto_d

    :goto_e
    if-lt v9, v7, :cond_a

    if-ge v6, v10, :cond_a

    aget-wide v0, v11, v6

    :goto_f
    move-wide/from16 v20, v0

    goto :goto_10

    :cond_a
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->msFromTime(D)I

    move-result v0

    int-to-double v0, v0

    goto :goto_f

    :goto_10
    invoke-static/range {v14 .. v21}, Lorg/mozilla/javascript/NativeDate;->MakeTime(DDDD)D

    move-result-wide v0

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->Day(D)D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide v0

    if-eqz v8, :cond_b

    move-object/from16 v2, p0

    invoke-static {v2, v0, v1}, Lorg/mozilla/javascript/NativeDate;->internalUTC(Lorg/mozilla/javascript/Context;D)D

    move-result-wide v0

    :cond_b
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v0

    return-wide v0

    :cond_c
    :goto_11
    return-wide v2

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static msFromTime(D)I
    .locals 4

    const-wide v0, 0x408f400000000000L    # 1000.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    add-double/2addr p0, v0

    :cond_0
    double-to-int p0, p0

    return p0
.end method

.method private static now()D
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method private static parseISOString(Lorg/mozilla/javascript/Context;Ljava/lang/String;)D
    .locals 38

    move-object/from16 v0, p1

    const/16 v1, 0x9

    new-array v1, v1, [I

    const/16 v2, 0x7b2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    const/4 v4, 0x2

    aput v2, v1, v4

    const/4 v5, 0x3

    aput v3, v1, v5

    const/4 v6, 0x4

    aput v3, v1, v6

    const/4 v7, 0x5

    aput v3, v1, v7

    const/4 v8, 0x6

    aput v3, v1, v8

    const/4 v9, 0x7

    const/4 v10, -0x1

    aput v10, v1, v9

    const/16 v11, 0x8

    aput v10, v1, v11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x54

    const/16 v14, 0x2b

    const/16 v15, 0x2d

    move/from16 v16, v4

    if-eqz v12, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v14, :cond_1

    if-ne v4, v15, :cond_0

    goto :goto_1

    :cond_0
    if-ne v4, v13, :cond_3

    move v4, v2

    move/from16 v18, v4

    move/from16 v17, v3

    move/from16 v21, v17

    move v3, v5

    move/from16 v19, v6

    :goto_0
    move/from16 v20, v11

    move/from16 v11, v18

    goto :goto_3

    :cond_1
    :goto_1
    if-ne v4, v15, :cond_2

    move v4, v10

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    move/from16 v18, v2

    move/from16 v17, v3

    move/from16 v21, v17

    move/from16 v19, v8

    goto :goto_0

    :cond_3
    move v4, v2

    move/from16 v17, v3

    move/from16 v18, v17

    move/from16 v21, v18

    move/from16 v19, v6

    move/from16 v20, v11

    move v11, v4

    :goto_3
    if-eq v3, v10, :cond_1b

    move/from16 v23, v2

    if-nez v3, :cond_4

    move/from16 v22, v19

    goto :goto_4

    :cond_4
    if-ne v3, v8, :cond_5

    move/from16 v22, v5

    goto :goto_4

    :cond_5
    move/from16 v22, v16

    :goto_4
    add-int v2, v18, v22

    if-le v2, v12, :cond_6

    move v0, v10

    move v3, v0

    :goto_5
    move/from16 v10, v18

    goto/16 :goto_11

    :cond_6
    move/from16 v10, v18

    move/from16 v18, v17

    :goto_6
    if-ge v10, v2, :cond_9

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v15, 0x30

    if-lt v13, v15, :cond_8

    const/16 v15, 0x39

    if-le v13, v15, :cond_7

    goto :goto_7

    :cond_7
    mul-int/lit8 v18, v18, 0xa

    add-int/lit8 v13, v13, -0x30

    add-int v18, v13, v18

    add-int/lit8 v10, v10, 0x1

    const/16 v13, 0x54

    const/16 v15, 0x2d

    goto :goto_6

    :cond_8
    :goto_7
    const/4 v0, -0x1

    const/4 v3, -0x1

    goto/16 :goto_11

    :cond_9
    aput v18, v1, v3

    if-ne v10, v12, :cond_b

    if-eq v3, v5, :cond_a

    if-eq v3, v9, :cond_a

    goto :goto_8

    :cond_a
    const/4 v3, -0x1

    :goto_8
    const/4 v0, -0x1

    goto/16 :goto_11

    :cond_b
    add-int/lit8 v18, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v13, 0x5a

    if-ne v2, v13, :cond_d

    aput v17, v1, v9

    aput v17, v1, v20

    if-eq v3, v6, :cond_c

    if-eq v3, v7, :cond_c

    if-eq v3, v8, :cond_c

    move/from16 v10, v18

    goto :goto_7

    :cond_c
    move/from16 v10, v18

    goto :goto_8

    :cond_d
    const/16 v13, 0x3a

    packed-switch v3, :pswitch_data_0

    :goto_9
    const/16 v10, 0x54

    :goto_a
    const/16 v13, 0x2d

    goto/16 :goto_f

    :cond_e
    :pswitch_0
    const/4 v3, -0x1

    goto :goto_9

    :pswitch_1
    if-eq v2, v13, :cond_f

    goto :goto_b

    :cond_f
    move/from16 v10, v18

    :goto_b
    move/from16 v18, v10

    move/from16 v3, v20

    goto :goto_9

    :pswitch_2
    const/16 v3, 0x2d

    if-eq v2, v14, :cond_11

    if-ne v2, v3, :cond_10

    goto :goto_c

    :cond_10
    const/4 v10, -0x1

    goto :goto_d

    :cond_11
    :goto_c
    move v10, v9

    :goto_d
    move v13, v3

    move v3, v10

    const/16 v10, 0x54

    goto :goto_f

    :pswitch_3
    const/16 v3, 0x2d

    const/16 v10, 0x2e

    if-ne v2, v10, :cond_12

    move v10, v8

    goto :goto_d

    :cond_12
    if-eq v2, v14, :cond_11

    if-ne v2, v3, :cond_10

    goto :goto_c

    :pswitch_4
    const/16 v3, 0x2d

    if-ne v2, v13, :cond_13

    move v3, v7

    goto :goto_9

    :cond_13
    if-eq v2, v14, :cond_14

    if-ne v2, v3, :cond_e

    :cond_14
    move v3, v9

    goto :goto_9

    :pswitch_5
    if-ne v2, v13, :cond_15

    move v3, v6

    goto :goto_e

    :cond_15
    const/4 v3, -0x1

    :goto_e
    move/from16 v21, v23

    goto :goto_9

    :pswitch_6
    const/16 v10, 0x54

    if-ne v2, v10, :cond_16

    move v3, v5

    goto :goto_a

    :cond_16
    const/4 v3, -0x1

    goto :goto_a

    :pswitch_7
    const/16 v10, 0x54

    const/16 v13, 0x2d

    if-ne v2, v13, :cond_17

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_17
    if-ne v2, v10, :cond_18

    move v3, v5

    goto :goto_f

    :cond_18
    const/4 v3, -0x1

    :goto_f
    if-ne v3, v9, :cond_1a

    if-ne v2, v13, :cond_19

    const/4 v11, -0x1

    goto :goto_10

    :cond_19
    move/from16 v11, v23

    :cond_1a
    :goto_10
    move v15, v13

    move/from16 v2, v23

    move v13, v10

    const/4 v10, -0x1

    goto/16 :goto_3

    :cond_1b
    move/from16 v23, v2

    move v0, v10

    goto/16 :goto_5

    :goto_11
    if-eq v3, v0, :cond_22

    if-eq v10, v12, :cond_1c

    goto/16 :goto_14

    :cond_1c
    aget v0, v1, v17

    aget v2, v1, v23

    aget v3, v1, v16

    aget v5, v1, v5

    aget v6, v1, v6

    aget v7, v1, v7

    aget v8, v1, v8

    aget v9, v1, v9

    aget v1, v1, v20

    const v10, 0x435e7

    if-gt v0, v10, :cond_22

    move/from16 v10, v23

    if-lt v2, v10, :cond_22

    const/16 v12, 0xc

    if-gt v2, v12, :cond_22

    if-lt v3, v10, :cond_22

    invoke-static {v0, v2}, Lorg/mozilla/javascript/NativeDate;->DaysInMonth(II)I

    move-result v10

    if-gt v3, v10, :cond_22

    const/16 v10, 0x18

    if-gt v5, v10, :cond_22

    if-ne v5, v10, :cond_1d

    if-gtz v6, :cond_22

    if-gtz v7, :cond_22

    if-gtz v8, :cond_22

    :cond_1d
    const/16 v10, 0x3b

    if-gt v6, v10, :cond_22

    if-gt v7, v10, :cond_22

    const/16 v12, 0x17

    if-gt v9, v12, :cond_22

    if-le v1, v10, :cond_1e

    goto :goto_14

    :cond_1e
    mul-int/2addr v0, v4

    int-to-double v12, v0

    const/16 v23, 0x1

    add-int/lit8 v2, v2, -0x1

    int-to-double v14, v2

    int-to-double v2, v3

    int-to-double v4, v5

    move/from16 p1, v1

    int-to-double v0, v6

    int-to-double v6, v7

    move-wide/from16 v32, v0

    int-to-double v0, v8

    move-wide/from16 v36, v0

    move-wide/from16 v28, v2

    move-wide/from16 v30, v4

    move-wide/from16 v34, v6

    move-wide/from16 v24, v12

    move-wide/from16 v26, v14

    invoke-static/range {v24 .. v37}, Lorg/mozilla/javascript/NativeDate;->date_msecFromDate(DDDDDDD)D

    move-result-wide v0

    const/4 v2, -0x1

    if-ne v9, v2, :cond_1f

    if-eqz v21, :cond_20

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-double v2, v2

    move-object/from16 v4, p0

    invoke-static {v4, v0, v1}, Lorg/mozilla/javascript/NativeDate;->DaylightSavingTA(Lorg/mozilla/javascript/Context;D)D

    move-result-wide v4

    add-double/2addr v2, v4

    :goto_12
    sub-double/2addr v0, v2

    goto :goto_13

    :cond_1f
    mul-int/lit8 v9, v9, 0x3c

    add-int v9, v9, p1

    int-to-double v2, v9

    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v2, v4

    int-to-double v4, v11

    mul-double/2addr v2, v4

    goto :goto_12

    :cond_20
    :goto_13
    const-wide v2, -0x3cc14df73d240000L    # -8.64E15

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_22

    const-wide v2, 0x433eb208c2dc0000L    # 8.64E15

    cmpl-double v2, v0, v2

    if-lez v2, :cond_21

    goto :goto_14

    :cond_21
    return-wide v0

    :cond_22
    :goto_14
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toLocale_helper(Lorg/mozilla/javascript/Context;DI[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    const/16 v1, 0xc8

    if-eq p3, v0, :cond_4

    const/4 v0, 0x6

    if-eq p3, v0, :cond_2

    const/4 v0, 0x7

    if-ne p3, v0, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p3

    if-lt p3, v1, :cond_0

    sget-object p3, Lorg/mozilla/javascript/NativeDate;->localeDateFormatterES6:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/mozilla/javascript/NativeDate;->localeDateFormatter:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p3

    if-lt p3, v1, :cond_3

    sget-object p3, Lorg/mozilla/javascript/NativeDate;->localeTimeFormatterES6:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_3
    sget-object p3, Lorg/mozilla/javascript/NativeDate;->localeTimeFormatter:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p3

    if-lt p3, v1, :cond_5

    sget-object p3, Lorg/mozilla/javascript/NativeDate;->localeDateTimeFormatterES6:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_5
    sget-object p3, Lorg/mozilla/javascript/NativeDate;->localeDateTimeFormatter:Ljava/time/format/DateTimeFormatter;

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p4

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    aget-object p4, p4, v1

    instance-of v1, p4, Lorg/mozilla/javascript/NativeArray;

    if-eqz v1, :cond_6

    check-cast p4, Lorg/mozilla/javascript/NativeArray;

    invoke-virtual {p4}, Lorg/mozilla/javascript/NativeArray;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {p4}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p3, v1}, Ljava/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object p3

    :cond_9
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p0

    double-to-long p1, p1

    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u202f"

    const-string p2, " "

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2c

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2b

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    const/16 v3, 0x2f

    const/4 v4, 0x0

    if-eq v0, v3, :cond_22

    const/16 v3, 0x30

    if-eq v0, v3, :cond_1b

    const-class p3, Lorg/mozilla/javascript/NativeDate;

    invoke-static {p4, p3, p1}, Lorg/mozilla/javascript/IdScriptableObject;->ensureType(Ljava/lang/Object;Ljava/lang/Class;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/NativeDate;

    iget-wide p3, p1, Lorg/mozilla/javascript/NativeDate;->date:D

    const-string v3, "Invalid Date"

    const-wide v4, 0x409db00000000000L    # 1900.0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p3, p4}, Lorg/mozilla/javascript/NativeDate;->js_toISOString(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "msg.invalid.date"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :pswitch_1
    invoke-static {p5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p5

    if-nez p5, :cond_5

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p5

    if-eqz p5, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p5

    const-wide/16 v2, 0x0

    if-eqz p5, :cond_3

    move-wide p3, v2

    goto :goto_0

    :cond_3
    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/NativeDate;->LocalTime(Lorg/mozilla/javascript/Context;D)D

    move-result-wide p3

    :goto_0
    cmpl-double p5, v0, v2

    if-ltz p5, :cond_4

    const-wide v2, 0x4058c00000000000L    # 99.0

    cmpg-double p5, v0, v2

    if-gtz p5, :cond_4

    add-double/2addr v0, v4

    :cond_4
    move-wide v2, v0

    invoke-static {p3, p4}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result p5

    int-to-double v4, p5

    invoke-static {p3, p4}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result p5

    int-to-double v6, p5

    invoke-static/range {v2 .. v7}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide v0

    invoke-static {p3, p4}, Lorg/mozilla/javascript/NativeDate;->TimeWithinDay(D)D

    move-result-wide p3

    invoke-static {v0, v1, p3, p4}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide p3

    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/NativeDate;->internalUTC(Lorg/mozilla/javascript/Context;D)D

    move-result-wide p2

    invoke-static {p2, p3}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide p2

    goto :goto_2

    :cond_5
    :goto_1
    const-wide/high16 p2, 0x7ff8000000000000L    # Double.NaN

    :goto_2
    iput-wide p2, p1, Lorg/mozilla/javascript/NativeDate;->date:D

    invoke-static {p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p2, p3, p4, p5, v0}, Lorg/mozilla/javascript/NativeDate;->makeDate(Lorg/mozilla/javascript/Context;D[Ljava/lang/Object;I)D

    move-result-wide p2

    iput-wide p2, p1, Lorg/mozilla/javascript/NativeDate;->date:D

    invoke-static {p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p2, p3, p4, p5, v0}, Lorg/mozilla/javascript/NativeDate;->makeTime(Lorg/mozilla/javascript/Context;D[Ljava/lang/Object;I)D

    move-result-wide p2

    iput-wide p2, p1, Lorg/mozilla/javascript/NativeDate;->date:D

    invoke-static {p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p2

    invoke-static {p2, p3}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide p2

    iput-wide p2, p1, Lorg/mozilla/javascript/NativeDate;->date:D

    invoke-static {p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/NativeDate;->LocalTime(Lorg/mozilla/javascript/Context;D)D

    move-result-wide p1

    sub-double/2addr p3, p1

    const-wide p1, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr p3, p1

    :cond_6
    invoke-static {p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_8

    const/16 p1, 0x1b

    if-ne v0, p1, :cond_7

    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/NativeDate;->LocalTime(Lorg/mozilla/javascript/Context;D)D

    move-result-wide p3

    :cond_7
    invoke-static {p3, p4}, Lorg/mozilla/javascript/NativeDate;->msFromTime(D)I

    move-result p1

    int-to-double p3, p1

    :cond_8
    invoke-static {p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_a

    const/16 p1, 0x19

    if-ne v0, p1, :cond_9

    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/NativeDate;->LocalTime(Lorg/mozilla/javascript/Context;D)D

    move-result-wide p3

    :cond_9
    invoke-static {p3, p4}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result p1

    int-to-double p3, p1

    :cond_a
    invoke-static {p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_c

    const/16 p1, 0x17

    if-ne v0, p1, :cond_b

    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/NativeDate;->LocalTime(Lorg/mozilla/javascript/Context;D)D

    move-result-wide p3

    :cond_b
    invoke-static {p3, p4}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result p1

    int-to-double p3, p1

    :cond_c
    invoke-static {p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_e

    const/16 p1, 0x15

    if-ne v0, p1, :cond_d

    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/NativeDate;->LocalTime(Lorg/mozilla/javascript/Context;D)D

    move-result-wide p3

    :cond_d
    invoke-static {p3, p4}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result p1

    int-to-double p3, p1

    :cond_e
    invoke-static {p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_10

    const/16 p1, 0x13

    if-ne v0, p1, :cond_f

    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/NativeDate;->LocalTime(Lorg/mozilla/javascript/Context;D)D

    move-result-wide p3

    :cond_f
    invoke-static {p3, p4}, Lorg/mozilla/javascript/NativeDate;->WeekDay(D)I

    move-result p1

    int-to-double p3, p1

    :cond_10
    invoke-static {p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_12

    const/16 p1, 0x11

    if-ne v0, p1, :cond_11

    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/NativeDate;->LocalTime(Lorg/mozilla/javascript/Context;D)D

    move-result-wide p3

    :cond_11
    invoke-static {p3, p4}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result p1

    int-to-double p3, p1

    :cond_12
    invoke-static {p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_14

    const/16 p1, 0xf

    if-ne v0, p1, :cond_13

    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/NativeDate;->LocalTime(Lorg/mozilla/javascript/Context;D)D

    move-result-wide p3

    :cond_13
    invoke-static {p3, p4}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result p1

    int-to-double p3, p1

    :cond_14
    invoke-static {p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_17

    const/16 p1, 0xe

    if-eq v0, p1, :cond_15

    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/NativeDate;->LocalTime(Lorg/mozilla/javascript/Context;D)D

    move-result-wide p3

    :cond_15
    invoke-static {p3, p4}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result p1

    int-to-double p3, p1

    const/16 p1, 0xc

    if-ne v0, p1, :cond_17

    invoke-virtual {p2, v1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p1

    if-eqz p1, :cond_16

    cmpg-double p1, v4, p3

    if-gtz p1, :cond_17

    const-wide p1, 0x409f400000000000L    # 2000.0

    cmpg-double p1, p3, p1

    if-gez p1, :cond_17

    :cond_16
    sub-double/2addr p3, v4

    :cond_17
    invoke-static {p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-static {p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-static {p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(new Date("

    const-string p3, "))"

    invoke-static {p2, p1, p3}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_18

    invoke-static {p3, p4}, Lorg/mozilla/javascript/NativeDate;->js_toUTCString(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_18
    return-object v3

    :pswitch_11
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_19

    invoke-static {p2, p3, p4, v0, p5}, Lorg/mozilla/javascript/NativeDate;->toLocale_helper(Lorg/mozilla/javascript/Context;DI[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_19
    return-object v3

    :pswitch_12
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_1a

    invoke-static {p2, p3, p4, v0}, Lorg/mozilla/javascript/NativeDate;->date_format(Lorg/mozilla/javascript/Context;DI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1a
    return-object v3

    :cond_1b
    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    array-length p2, p5

    if-lez p2, :cond_1c

    aget-object p2, p5, v2

    goto :goto_3

    :cond_1c
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_3
    instance-of p3, p2, Ljava/lang/CharSequence;

    if-eqz p3, :cond_1d

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    :cond_1d
    move-object p3, v4

    :goto_4
    const-string p4, "string"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1f

    const-string p4, "default"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1e

    goto :goto_5

    :cond_1e
    const-string p4, "number"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_20

    sget-object v4, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    goto :goto_6

    :cond_1f
    :goto_5
    sget-object v4, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    :cond_20
    :goto_6
    if-eqz v4, :cond_21

    invoke-static {p1, v4}, Lorg/mozilla/javascript/ScriptableObject;->getDefaultValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_21
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "msg.invalid.toprimitive.hint"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_22
    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    sget-object p4, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-static {p1, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toPrimitive(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    instance-of p5, p4, Ljava/lang/Number;

    if-eqz p5, :cond_24

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {p4, p5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p4

    if-eqz p4, :cond_24

    :cond_23
    return-object v4

    :cond_24
    const-string p4, "toISOString"

    invoke-static {p1, p4}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p5, v0, :cond_27

    instance-of v0, p5, Lorg/mozilla/javascript/Callable;

    if-eqz v0, :cond_26

    check-cast p5, Lorg/mozilla/javascript/Callable;

    sget-object p4, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {p5, p2, p3, p1, p4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->isPrimitive(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    return-object p1

    :cond_25
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "msg.toisostring.must.return.primitive"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_26
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p5}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p4, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "msg.isnt.function.in"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_27
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p4, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "msg.function.not.found.in"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_28
    if-eqz p4, :cond_29

    invoke-static {}, Lorg/mozilla/javascript/NativeDate;->now()D

    move-result-wide p3

    const/4 p1, 0x2

    invoke-static {p2, p3, p4, p1}, Lorg/mozilla/javascript/NativeDate;->date_format(Lorg/mozilla/javascript/Context;DI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_29
    invoke-static {p2, p5}, Lorg/mozilla/javascript/NativeDate;->jsConstructor(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2a
    invoke-static {p5}, Lorg/mozilla/javascript/NativeDate;->jsStaticFunction_UTC([Ljava/lang/Object;)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :cond_2b
    invoke-static {p5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/mozilla/javascript/NativeDate;->date_parseString(Lorg/mozilla/javascript/Context;Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :cond_2c
    invoke-static {}, Lorg/mozilla/javascript/NativeDate;->now()D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 6

    sget-object v2, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    const-string v4, "now"

    const/4 v5, 0x0

    const/4 v3, -0x3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "parse"

    const/4 v5, 0x1

    const/4 v3, -0x2

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "UTC"

    const/4 v5, 0x7

    const/4 v3, -0x1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    invoke-super {p0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void
.end method

.method public findPrototypeId(Ljava/lang/String;)I
    .locals 25

    move-object/from16 v0, p1

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x15

    const/16 v3, 0x14

    const/16 v4, 0x13

    const/16 v5, 0x12

    const/16 v6, 0x11

    const/16 v7, 0x10

    const/16 v8, 0xf

    const/16 v9, 0xe

    const/16 v10, 0xd

    const/16 v11, 0xc

    const/16 v12, 0xb

    const/16 v13, 0xa

    const/16 v14, 0x9

    const/4 v15, 0x7

    const/16 v16, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/16 v19, 0x3

    const/16 v20, 0x2

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x8

    const/16 v24, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "getMinutes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v24, 0x2f

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "setYear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v24, 0x2e

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "setTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v24, 0x2d

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "setDate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v24, 0x2c

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "getMonth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v24, 0x2b

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "getHours"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v24, 0x2a

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "setUTCDate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v24, 0x29

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "setUTCSeconds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v24, 0x28

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "getMilliseconds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v24, 0x27

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "toLocaleTimeString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v24, 0x26

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "setMonth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v24, 0x25

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "setHours"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v24, 0x24

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "toLocaleDateString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v24, 0x23

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "getUTCSeconds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v24, 0x22

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "toISOString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v24, 0x21

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "setUTCMinutes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v24, 0x20

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "getUTCDay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v24, 0x1f

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "getUTCFullYear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v24, 0x1e

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "setSeconds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v24, 0x1d

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "toUTCString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v24, 0x1c

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "valueOf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v24, 0x1b

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "getUTCMinutes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v24, 0x1a

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "getUTCDate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v24, 0x19

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "getYear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v24, 0x18

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "getTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v24, 0x17

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "getDate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v24, 0x16

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "setMinutes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    move/from16 v24, v2

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "getTimezoneOffset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    move/from16 v24, v3

    goto/16 :goto_0

    :sswitch_1c
    const-string v1, "toJSON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    move/from16 v24, v4

    goto/16 :goto_0

    :sswitch_1d
    const-string v1, "getFullYear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    move/from16 v24, v5

    goto/16 :goto_0

    :sswitch_1e
    const-string v1, "getUTCMonth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    move/from16 v24, v6

    goto/16 :goto_0

    :sswitch_1f
    const-string v1, "getUTCHours"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    move/from16 v24, v7

    goto/16 :goto_0

    :sswitch_20
    const-string v1, "setUTCFullYear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_0

    :cond_20
    move/from16 v24, v8

    goto/16 :goto_0

    :sswitch_21
    const-string v1, "setFullYear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_0

    :cond_21
    move/from16 v24, v9

    goto/16 :goto_0

    :sswitch_22
    const-string v1, "setUTCMilliseconds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_0

    :cond_22
    move/from16 v24, v10

    goto/16 :goto_0

    :sswitch_23
    const-string v1, "setUTCMonth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_0

    :cond_23
    move/from16 v24, v11

    goto/16 :goto_0

    :sswitch_24
    const-string v1, "setUTCHours"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_0

    :cond_24
    move/from16 v24, v12

    goto/16 :goto_0

    :sswitch_25
    const-string v1, "getDay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_0

    :cond_25
    move/from16 v24, v13

    goto/16 :goto_0

    :sswitch_26
    const-string v1, "getSeconds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_0

    :cond_26
    move/from16 v24, v14

    goto/16 :goto_0

    :sswitch_27
    const-string v1, "toTimeString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_0

    :cond_27
    move/from16 v24, v23

    goto/16 :goto_0

    :sswitch_28
    const-string v1, "toGMTString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_0

    :cond_28
    move/from16 v24, v15

    goto :goto_0

    :sswitch_29
    const-string v1, "toDateString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_0

    :cond_29
    move/from16 v24, v16

    goto :goto_0

    :sswitch_2a
    const-string v1, "constructor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_0

    :cond_2a
    move/from16 v24, v17

    goto :goto_0

    :sswitch_2b
    const-string v1, "setMilliseconds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_0

    :cond_2b
    move/from16 v24, v18

    goto :goto_0

    :sswitch_2c
    const-string v1, "toString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_0

    :cond_2c
    move/from16 v24, v19

    goto :goto_0

    :sswitch_2d
    const-string v1, "toSource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_0

    :cond_2d
    move/from16 v24, v20

    goto :goto_0

    :sswitch_2e
    const-string v1, "getUTCMilliseconds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_0

    :cond_2e
    move/from16 v24, v21

    goto :goto_0

    :sswitch_2f
    const-string v1, "toLocaleString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_0

    :cond_2f
    move/from16 v24, v22

    :goto_0
    packed-switch v24, :pswitch_data_0

    return v22

    :pswitch_0
    const/16 v0, 0x17

    return v0

    :pswitch_1
    const/16 v0, 0x2d

    return v0

    :pswitch_2
    const/16 v0, 0x1e

    return v0

    :pswitch_3
    const/16 v0, 0x27

    return v0

    :pswitch_4
    return v8

    :pswitch_5
    return v2

    :pswitch_6
    const/16 v0, 0x28

    return v0

    :pswitch_7
    const/16 v0, 0x22

    return v0

    :pswitch_8
    const/16 v0, 0x1b

    return v0

    :pswitch_9
    return v16

    :pswitch_a
    const/16 v0, 0x29

    return v0

    :pswitch_b
    const/16 v0, 0x25

    return v0

    :pswitch_c
    return v15

    :pswitch_d
    const/16 v0, 0x1a

    return v0

    :pswitch_e
    const/16 v0, 0x2e

    return v0

    :pswitch_f
    const/16 v0, 0x24

    return v0

    :pswitch_10
    return v3

    :pswitch_11
    return v9

    :pswitch_12
    const/16 v0, 0x21

    return v0

    :pswitch_13
    return v23

    :pswitch_14
    return v13

    :pswitch_15
    const/16 v0, 0x18

    return v0

    :pswitch_16
    return v5

    :pswitch_17
    return v11

    :pswitch_18
    return v12

    :pswitch_19
    return v6

    :pswitch_1a
    const/16 v0, 0x23

    return v0

    :pswitch_1b
    const/16 v0, 0x1d

    return v0

    :pswitch_1c
    const/16 v0, 0x2f

    return v0

    :pswitch_1d
    return v10

    :pswitch_1e
    return v7

    :pswitch_1f
    const/16 v0, 0x16

    return v0

    :pswitch_20
    const/16 v0, 0x2c

    return v0

    :pswitch_21
    const/16 v0, 0x2b

    return v0

    :pswitch_22
    const/16 v0, 0x20

    return v0

    :pswitch_23
    const/16 v0, 0x2a

    return v0

    :pswitch_24
    const/16 v0, 0x26

    return v0

    :pswitch_25
    return v4

    :pswitch_26
    const/16 v0, 0x19

    return v0

    :pswitch_27
    return v19

    :pswitch_28
    return v23

    :pswitch_29
    return v18

    :pswitch_2a
    return v21

    :pswitch_2b
    const/16 v0, 0x1f

    return v0

    :pswitch_2c
    return v20

    :pswitch_2d
    return v14

    :pswitch_2e
    const/16 v0, 0x1c

    return v0

    :pswitch_2f
    return v17

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7866ceda -> :sswitch_2f
        -0x72667460 -> :sswitch_2e
        -0x6a2ea58a -> :sswitch_2d
        -0x69e9ad94 -> :sswitch_2c
        -0x63b0786c -> :sswitch_2b
        -0x5ead2806 -> :sswitch_2a
        -0x5dcf71c6 -> :sswitch_29
        -0x4f0bee3c -> :sswitch_28
        -0x4e3d21e7 -> :sswitch_27
        -0x4cc579b7 -> :sswitch_26
        -0x4a77cb9a -> :sswitch_25
        -0x3d78e5b3 -> :sswitch_24
        -0x3d328a42 -> :sswitch_23
        -0x3b8fdaec -> :sswitch_22
        -0x3a152212 -> :sswitch_21
        -0x3a09c492 -> :sswitch_20
        -0x383146bf -> :sswitch_1f
        -0x37eaeb4e -> :sswitch_1e
        -0x34cd831e -> :sswitch_1d
        -0x33cec21d -> :sswitch_1c
        -0x1d6e391e -> :sswitch_1b
        -0xf4859e3 -> :sswitch_1a
        -0x481a7dc -> :sswitch_19
        -0x47a44bd -> :sswitch_18
        -0x4780f4d -> :sswitch_17
        -0x1d210c4 -> :sswitch_16
        0xce64a91 -> :sswitch_15
        0xdce0328 -> :sswitch_14
        0x20906e9a -> :sswitch_13
        0x26abd3bd -> :sswitch_12
        0x2f90c7fa -> :sswitch_11
        0x317d5a4e -> :sswitch_10
        0x3b0a989d -> :sswitch_f
        0x4044d4bb -> :sswitch_e
        0x42da7831 -> :sswitch_d
        0x45517ff4 -> :sswitch_c
        0x531987cd -> :sswitch_b
        0x535fe33e -> :sswitch_a
        0x54e3cfd3 -> :sswitch_9
        0x66068c88 -> :sswitch_8
        0x70fec63d -> :sswitch_7
        0x719f3cb0 -> :sswitch_6
        0x748b6d59 -> :sswitch_5
        0x74d1c8ca -> :sswitch_4
        0x76491f30 -> :sswitch_3
        0x7650824f -> :sswitch_2
        0x7652b7bf -> :sswitch_1
        0x7d4658a9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public findPrototypeId(Lorg/mozilla/javascript/Symbol;)I
    .locals 1

    .line 2
    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->TO_PRIMITIVE:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x30

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Date"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getJSTimeValue()D
    .locals 2

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeDate;->date:D

    return-wide v0
.end method

.method public initPrototypeId(I)V
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v2, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    sget-object v4, Lorg/mozilla/javascript/SymbolKey;->TO_PRIMITIVE:Lorg/mozilla/javascript/SymbolKey;

    const-string v5, "[Symbol.toPrimitive]"

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILorg/mozilla/javascript/Symbol;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    move-object p1, v1

    return-void

    :pswitch_1
    move v5, p1

    move-object p1, p0

    const-string v0, "toJSON"

    :goto_0
    move v4, v3

    goto/16 :goto_4

    :pswitch_2
    move v5, p1

    move-object p1, p0

    const-string v0, "toISOString"

    goto/16 :goto_4

    :pswitch_3
    move v5, p1

    move-object p1, p0

    const-string v0, "setYear"

    goto :goto_0

    :pswitch_4
    move v5, p1

    move-object p1, p0

    const-string v0, "setUTCFullYear"

    :goto_1
    move v4, v2

    goto/16 :goto_4

    :pswitch_5
    move v5, p1

    move-object p1, p0

    const-string v0, "setFullYear"

    goto :goto_1

    :pswitch_6
    move v5, p1

    move-object p1, p0

    const-string v0, "setUTCMonth"

    :goto_2
    move v4, v1

    goto/16 :goto_4

    :pswitch_7
    move v5, p1

    move-object p1, p0

    const-string v0, "setMonth"

    goto :goto_2

    :pswitch_8
    move v5, p1

    move-object p1, p0

    const-string v0, "setUTCDate"

    goto :goto_0

    :pswitch_9
    move v5, p1

    move-object p1, p0

    const-string v0, "setDate"

    goto :goto_0

    :pswitch_a
    move v5, p1

    move-object p1, p0

    const-string v1, "setUTCHours"

    :goto_3
    move v4, v0

    move-object v0, v1

    goto/16 :goto_4

    :pswitch_b
    move v5, p1

    move-object p1, p0

    const-string v1, "setHours"

    goto :goto_3

    :pswitch_c
    move v5, p1

    move-object p1, p0

    const-string v0, "setUTCMinutes"

    goto :goto_1

    :pswitch_d
    move v5, p1

    move-object p1, p0

    const-string v0, "setMinutes"

    goto :goto_1

    :pswitch_e
    move v5, p1

    move-object p1, p0

    const-string v0, "setUTCSeconds"

    goto :goto_2

    :pswitch_f
    move v5, p1

    move-object p1, p0

    const-string v0, "setSeconds"

    goto :goto_2

    :pswitch_10
    move v5, p1

    move-object p1, p0

    const-string v0, "setUTCMilliseconds"

    goto :goto_0

    :pswitch_11
    move v5, p1

    move-object p1, p0

    const-string v0, "setMilliseconds"

    goto :goto_0

    :pswitch_12
    move v5, p1

    move-object p1, p0

    const-string v0, "setTime"

    goto :goto_0

    :pswitch_13
    move v5, p1

    move-object p1, p0

    const-string v0, "getTimezoneOffset"

    goto/16 :goto_4

    :pswitch_14
    move v5, p1

    move-object p1, p0

    const-string v0, "getUTCMilliseconds"

    goto/16 :goto_4

    :pswitch_15
    move v5, p1

    move-object p1, p0

    const-string v0, "getMilliseconds"

    goto/16 :goto_4

    :pswitch_16
    move v5, p1

    move-object p1, p0

    const-string v0, "getUTCSeconds"

    goto/16 :goto_4

    :pswitch_17
    move v5, p1

    move-object p1, p0

    const-string v0, "getSeconds"

    goto/16 :goto_4

    :pswitch_18
    move v5, p1

    move-object p1, p0

    const-string v0, "getUTCMinutes"

    goto/16 :goto_4

    :pswitch_19
    move v5, p1

    move-object p1, p0

    const-string v0, "getMinutes"

    goto/16 :goto_4

    :pswitch_1a
    move v5, p1

    move-object p1, p0

    const-string v0, "getUTCHours"

    goto/16 :goto_4

    :pswitch_1b
    move v5, p1

    move-object p1, p0

    const-string v0, "getHours"

    goto/16 :goto_4

    :pswitch_1c
    move v5, p1

    move-object p1, p0

    const-string v0, "getUTCDay"

    goto/16 :goto_4

    :pswitch_1d
    move v5, p1

    move-object p1, p0

    const-string v0, "getDay"

    goto/16 :goto_4

    :pswitch_1e
    move v5, p1

    move-object p1, p0

    const-string v0, "getUTCDate"

    goto/16 :goto_4

    :pswitch_1f
    move v5, p1

    move-object p1, p0

    const-string v0, "getDate"

    goto/16 :goto_4

    :pswitch_20
    move v5, p1

    move-object p1, p0

    const-string v0, "getUTCMonth"

    goto/16 :goto_4

    :pswitch_21
    move v5, p1

    move-object p1, p0

    const-string v0, "getMonth"

    goto/16 :goto_4

    :pswitch_22
    move v5, p1

    move-object p1, p0

    const-string v0, "getUTCFullYear"

    goto/16 :goto_4

    :pswitch_23
    move v5, p1

    move-object p1, p0

    const-string v0, "getFullYear"

    goto/16 :goto_4

    :pswitch_24
    move v5, p1

    move-object p1, p0

    const-string v0, "getYear"

    goto :goto_4

    :pswitch_25
    move v5, p1

    move-object p1, p0

    const-string v0, "getTime"

    goto :goto_4

    :pswitch_26
    move v5, p1

    move-object p1, p0

    const-string v0, "valueOf"

    goto :goto_4

    :pswitch_27
    move v5, p1

    move-object p1, p0

    const-string v0, "toSource"

    goto :goto_4

    :pswitch_28
    move v5, p1

    move-object p1, p0

    const-string v0, "toUTCString"

    goto :goto_4

    :pswitch_29
    move v5, p1

    move-object p1, p0

    const-string v0, "toLocaleDateString"

    goto :goto_4

    :pswitch_2a
    move v5, p1

    move-object p1, p0

    const-string v0, "toLocaleTimeString"

    goto :goto_4

    :pswitch_2b
    move v5, p1

    move-object p1, p0

    const-string v0, "toLocaleString"

    goto :goto_4

    :pswitch_2c
    move v5, p1

    move-object p1, p0

    const-string v0, "toDateString"

    goto :goto_4

    :pswitch_2d
    move v5, p1

    move-object p1, p0

    const-string v0, "toTimeString"

    goto :goto_4

    :pswitch_2e
    move v5, p1

    move-object p1, p0

    const-string v0, "toString"

    goto :goto_4

    :pswitch_2f
    move v5, p1

    move-object p1, p0

    const/4 v0, 0x7

    const-string v1, "constructor"

    goto/16 :goto_3

    :goto_4
    sget-object v1, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v1, v5, v0, v4}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
