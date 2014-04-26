.class public Ljava/text/SimpleDateFormat;
.super Ljava/text/DateFormat;
.source "SimpleDateFormat.java"


# static fields
.field static final PATTERN_CHARS:Ljava/lang/String; = "GyMdkHmsSEDFwWahKzZLc"

.field private static final RFC_822_TIMEZONE_FIELD:I = 0x12

.field private static final STAND_ALONE_DAY_OF_WEEK_FIELD:I = 0x14

.field private static final STAND_ALONE_MONTH_FIELD:I = 0x13

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x4243c9da93943590L


# instance fields
.field private transient creationYear:I

.field private defaultCenturyStart:Ljava/util/Date;

.field private formatData:Ljava/text/DateFormatSymbols;

.field private mLocale:Ljava/util/Locale;

.field private pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 1484
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "defaultCenturyStart"

    const-class v4, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "formatData"

    const-class v4, Ljava/text/DateFormatSymbols;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "pattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/text/SimpleDateFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 380
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 381
    invoke-static {}, Ljava/text/SimpleDateFormat;->defaultPattern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 382
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 383
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 401
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 402
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .registers 4
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/text/DateFormatSymbols;

    .prologue
    .line 497
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 498
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 499
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 500
    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 501
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 4
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 518
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 519
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 520
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 521
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 522
    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v2, 0x1

    .line 524
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 525
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->mLocale:Ljava/util/Locale;

    .line 526
    invoke-static {p1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 527
    iget-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 528
    iget-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 529
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    .line 530
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, -0x50

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 531
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    .line 532
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 533
    return-void
.end method

.method private append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V
    .registers 21
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "position"    # Ljava/text/FieldPosition;
    .param p4, "format"    # C
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/FieldPosition;",
            ">;CI)V"
        }
    .end annotation

    .prologue
    .line 739
    .local p3, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    const/4 v4, -0x1

    .line 740
    .local v4, "field":I
    const-string v12, "GyMdkHmsSEDFwWahKzZLc"

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 741
    .local v7, "index":I
    const/4 v12, -0x1

    if-ne v7, v12, :cond_2d

    .line 742
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown pattern character \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 746
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 747
    .local v2, "beginPosition":I
    const/4 v3, 0x0

    .line 748
    .local v3, "dateFormatField":Ljava/text/DateFormat$Field;
    packed-switch v7, :pswitch_data_1ba

    .line 857
    :goto_35
    const/4 v12, -0x1

    if-eq v4, v12, :cond_45

    .line 858
    iget-object v12, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v12, v4}, Ljava/util/Calendar;->get(I)I

    move-result v12

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v12}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 861
    :cond_45
    if-eqz p3, :cond_191

    .line 862
    new-instance p2, Ljava/text/FieldPosition;

    .end local p2    # "position":Ljava/text/FieldPosition;
    move-object/from16 v0, p2

    invoke-direct {v0, v3}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 863
    .restart local p2    # "position":Ljava/text/FieldPosition;
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 864
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 865
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    :cond_63
    :goto_63
    return-void

    .line 750
    :pswitch_64
    sget-object v3, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    .line 751
    iget-object v12, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v12, v12, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v13, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_35

    .line 754
    :pswitch_79
    sget-object v3, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    .line 755
    iget-object v12, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 761
    .local v11, "year":I
    const/4 v12, 0x2

    move/from16 v0, p5

    if-ne v0, v12, :cond_90

    .line 762
    const/4 v12, 0x2

    rem-int/lit8 v13, v11, 0x64

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v12, v13}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_35

    .line 764
    :cond_90
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v11}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_35

    .line 768
    .end local v11    # "year":I
    :pswitch_98
    sget-object v3, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    .line 769
    iget-object v12, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v12, v12, Ljava/text/DateFormatSymbols;->longStandAloneMonths:[Ljava/lang/String;

    iget-object v13, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v13, v13, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v12, v13}, Ljava/text/SimpleDateFormat;->appendMonth(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_35

    .line 773
    :pswitch_aa
    sget-object v3, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    .line 774
    iget-object v12, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v12, v12, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v13, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v13, v13, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v12, v13}, Ljava/text/SimpleDateFormat;->appendMonth(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_35

    .line 778
    :pswitch_bd
    sget-object v3, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 779
    const/4 v4, 0x5

    .line 780
    goto/16 :goto_35

    .line 782
    :pswitch_c2
    sget-object v3, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    .line 783
    iget-object v12, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v13, 0xb

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 784
    .local v5, "hour":I
    if-nez v5, :cond_d0

    const/16 v5, 0x18

    .end local v5    # "hour":I
    :cond_d0
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v5}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_35

    .line 787
    :pswitch_d9
    sget-object v3, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    .line 788
    const/16 v4, 0xb

    .line 789
    goto/16 :goto_35

    .line 791
    :pswitch_df
    sget-object v3, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    .line 792
    const/16 v4, 0xc

    .line 793
    goto/16 :goto_35

    .line 795
    :pswitch_e5
    sget-object v3, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    .line 796
    const/16 v4, 0xd

    .line 797
    goto/16 :goto_35

    .line 799
    :pswitch_eb
    sget-object v3, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    .line 800
    iget-object v12, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v13, 0xe

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 801
    .local v10, "value":I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v10}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_35

    .line 804
    .end local v10    # "value":I
    :pswitch_fe
    sget-object v3, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    .line 805
    iget-object v12, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v12, v12, Ljava/text/DateFormatSymbols;->longStandAloneWeekdays:[Ljava/lang/String;

    iget-object v13, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v13, v13, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v12, v13}, Ljava/text/SimpleDateFormat;->appendDayOfWeek(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_35

    .line 809
    :pswitch_111
    sget-object v3, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    .line 810
    iget-object v12, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v12, v12, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v13, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v13, v13, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v12, v13}, Ljava/text/SimpleDateFormat;->appendDayOfWeek(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_35

    .line 814
    :pswitch_124
    sget-object v3, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 815
    const/4 v4, 0x6

    .line 816
    goto/16 :goto_35

    .line 818
    :pswitch_129
    sget-object v3, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    .line 819
    const/16 v4, 0x8

    .line 820
    goto/16 :goto_35

    .line 822
    :pswitch_12f
    sget-object v3, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 823
    const/4 v4, 0x3

    .line 824
    goto/16 :goto_35

    .line 826
    :pswitch_134
    sget-object v3, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 827
    const/4 v4, 0x4

    .line 828
    goto/16 :goto_35

    .line 830
    :pswitch_139
    sget-object v3, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    .line 832
    iget-object v12, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v12, v12, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v13, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v14, 0x9

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    aget-object v8, v12, v13

    .line 833
    .local v8, "s":Ljava/lang/String;
    iget-object v12, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v13, 0xb

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 834
    .local v6, "i":I
    iget-object v12, p0, Ljava/text/SimpleDateFormat;->mLocale:Ljava/util/Locale;

    invoke-static {v6, v12, v8}, Ljava/text/SimpleDateFormat;->getAMPMString(ILjava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 835
    .local v9, "s1":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_35

    .line 840
    .end local v6    # "i":I
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "s1":Ljava/lang/String;
    :pswitch_15e
    sget-object v3, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    .line 841
    iget-object v12, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 842
    .restart local v5    # "hour":I
    if-nez v5, :cond_16c

    const/16 v5, 0xc

    .end local v5    # "hour":I
    :cond_16c
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v5}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_35

    .line 845
    :pswitch_175
    sget-object v3, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    .line 846
    const/16 v4, 0xa

    .line 847
    goto/16 :goto_35

    .line 849
    :pswitch_17b
    sget-object v3, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    .line 850
    const/4 v12, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v12}, Ljava/text/SimpleDateFormat;->appendTimeZone(Ljava/lang/StringBuffer;IZ)V

    goto/16 :goto_35

    .line 853
    :pswitch_187
    sget-object v3, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    .line 854
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v12}, Ljava/text/SimpleDateFormat;->appendNumericTimeZone(Ljava/lang/StringBuffer;Z)V

    goto/16 :goto_35

    .line 868
    :cond_191
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v12

    if-eq v12, v3, :cond_1a3

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v12

    if-nez v12, :cond_63

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v12

    if-ne v12, v7, :cond_63

    :cond_1a3
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v12

    if-nez v12, :cond_63

    .line 871
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 872
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_63

    .line 748
    nop

    :pswitch_data_1ba
    .packed-switch 0x0
        :pswitch_64
        :pswitch_79
        :pswitch_aa
        :pswitch_bd
        :pswitch_c2
        :pswitch_d9
        :pswitch_df
        :pswitch_e5
        :pswitch_eb
        :pswitch_111
        :pswitch_124
        :pswitch_129
        :pswitch_12f
        :pswitch_134
        :pswitch_139
        :pswitch_15e
        :pswitch_175
        :pswitch_17b
        :pswitch_187
        :pswitch_98
        :pswitch_fe
    .end packed-switch
.end method

.method private appendDayOfWeek(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "longs"    # [Ljava/lang/String;
    .param p4, "shorts"    # [Ljava/lang/String;

    .prologue
    .line 879
    const/4 v2, 0x3

    if-le p2, v2, :cond_14

    const/4 v1, 0x1

    .line 880
    .local v1, "isLong":Z
    :goto_4
    if-eqz v1, :cond_16

    move-object v0, p3

    .line 881
    .local v0, "days":[Ljava/lang/String;
    :goto_7
    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 882
    return-void

    .line 879
    .end local v0    # "days":[Ljava/lang/String;
    .end local v1    # "isLong":Z
    :cond_14
    const/4 v1, 0x0

    goto :goto_4

    .restart local v1    # "isLong":Z
    :cond_16
    move-object v0, p4

    .line 880
    goto :goto_7
.end method

.method private appendMonth(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "longs"    # [Ljava/lang/String;
    .param p4, "shorts"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 886
    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 887
    .local v1, "month":I
    if-gt p2, v4, :cond_f

    .line 888
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, p1, p2, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 895
    :goto_e
    return-void

    .line 892
    :cond_f
    const/4 v3, 0x3

    if-le p2, v3, :cond_1c

    const/4 v0, 0x1

    .line 893
    .local v0, "isLong":Z
    :goto_13
    if-eqz v0, :cond_1e

    move-object v2, p3

    .line 894
    .local v2, "months":[Ljava/lang/String;
    :goto_16
    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    .line 892
    .end local v0    # "isLong":Z
    .end local v2    # "months":[Ljava/lang/String;
    :cond_1c
    const/4 v0, 0x0

    goto :goto_13

    .restart local v0    # "isLong":Z
    :cond_1e
    move-object v2, p4

    .line 893
    goto :goto_16
.end method

.method private appendNumber(Ljava/lang/StringBuffer;II)V
    .registers 9
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "value"    # I

    .prologue
    .line 964
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    move-result v0

    .line 965
    .local v0, "minimumIntegerDigits":I
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 966
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/text/FieldPosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v1, v2, p1, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 968
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 969
    return-void
.end method

.method private appendNumericTimeZone(Ljava/lang/StringBuffer;Z)V
    .registers 10
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "generalTimeZone"    # Z

    .prologue
    const v6, 0x36ee80

    const/4 v5, 0x2

    .line 940
    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int v0, v2, v3

    .line 942
    .local v0, "offset":I
    const/16 v1, 0x2b

    .line 943
    .local v1, "sign":C
    if-gez v0, :cond_1d

    .line 944
    const/16 v1, 0x2d

    .line 945
    neg-int v0, v0

    .line 947
    :cond_1d
    if-eqz p2, :cond_24

    .line 948
    const-string v2, "GMT"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 950
    :cond_24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 951
    div-int v2, v0, v6

    invoke-direct {p0, p1, v5, v2}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 952
    if-eqz p2, :cond_33

    .line 953
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 955
    :cond_33
    rem-int v2, v0, v6

    const v3, 0xea60

    div-int/2addr v2, v3

    invoke-direct {p0, p1, v5, v2}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 956
    return-void
.end method

.method private appendTimeZone(Ljava/lang/StringBuffer;IZ)V
    .registers 11
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "generalTimeZone"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 911
    if-eqz p3, :cond_40

    .line 912
    iget-object v5, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 913
    .local v3, "tz":Ljava/util/TimeZone;
    iget-object v5, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eqz v5, :cond_2a

    move v1, v4

    .line 914
    .local v1, "daylight":Z
    :goto_15
    const/4 v5, 0x4

    if-ge p2, v5, :cond_2c

    .line 915
    .local v2, "style":I
    :goto_18
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-boolean v4, v4, Ljava/text/DateFormatSymbols;->customZoneStrings:Z

    if-nez v4, :cond_2e

    .line 916
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v4, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v1, v2, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 932
    .end local v1    # "daylight":Z
    .end local v2    # "style":I
    .end local v3    # "tz":Ljava/util/TimeZone;
    :goto_29
    return-void

    .restart local v3    # "tz":Ljava/util/TimeZone;
    :cond_2a
    move v1, v2

    .line 913
    goto :goto_15

    .restart local v1    # "daylight":Z
    :cond_2c
    move v2, v4

    .line 914
    goto :goto_18

    .line 922
    .restart local v2    # "style":I
    :cond_2e
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v4, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1, v2}, Llibcore/icu/TimeZones;->getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 924
    .local v0, "custom":Ljava/lang/String;
    if-eqz v0, :cond_40

    .line 925
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_29

    .line 931
    .end local v0    # "custom":Ljava/lang/String;
    .end local v1    # "daylight":Z
    .end local v2    # "style":I
    .end local v3    # "tz":Ljava/util/TimeZone;
    :cond_40
    invoke-direct {p0, p1, p3}, Ljava/text/SimpleDateFormat;->appendNumericTimeZone(Ljava/lang/StringBuffer;Z)V

    goto :goto_29
.end method

.method private static convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 13
    .param p0, "template"    # Ljava/lang/String;
    .param p1, "fromChars"    # Ljava/lang/String;
    .param p2, "toChars"    # Ljava/lang/String;
    .param p3, "check"    # Z

    .prologue
    .line 1444
    if-nez p3, :cond_9

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1471
    .end local p0    # "template":Ljava/lang/String;
    :goto_8
    return-object p0

    .line 1447
    .restart local p0    # "template":Ljava/lang/String;
    :cond_9
    const/4 v5, 0x0

    .line 1448
    .local v5, "quote":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1449
    .local v4, "output":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1450
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v2, :cond_7d

    .line 1452
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1453
    .local v3, "next":C
    const/16 v6, 0x27

    if-ne v3, v6, :cond_21

    .line 1454
    if-nez v5, :cond_34

    const/4 v5, 0x1

    .line 1456
    :cond_21
    :goto_21
    if-nez v5, :cond_36

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, "index":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_36

    .line 1457
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1450
    .end local v1    # "index":I
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1454
    :cond_34
    const/4 v5, 0x0

    goto :goto_21

    .line 1458
    :cond_36
    if-eqz p3, :cond_79

    if-nez v5, :cond_79

    const/16 v6, 0x61

    if-lt v3, v6, :cond_42

    const/16 v6, 0x7a

    if-le v3, v6, :cond_4a

    :cond_42
    const/16 v6, 0x41

    if-lt v3, v6, :cond_79

    const/16 v6, 0x5a

    if-gt v3, v6, :cond_79

    .line 1461
    :cond_4a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid pattern character \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1465
    :cond_79
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 1468
    .end local v3    # "next":C
    :cond_7d
    if-eqz v5, :cond_87

    .line 1469
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unterminated quote"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1471
    :cond_87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_8
.end method

.method private static defaultPattern()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v3, 0x3

    .line 579
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 580
    .local v0, "localeData":Llibcore/icu/LocaleData;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;
    .registers 5
    .param p1, "position"    # Ljava/text/ParsePosition;
    .param p2, "offset"    # I
    .param p3, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 972
    invoke-virtual {p1, p2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 973
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 974
    const/4 v0, 0x0

    return-object v0
.end method

.method private formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .registers 16
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "field"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .prologue
    .line 687
    .local p4, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    const/4 v10, 0x0

    .line 688
    .local v10, "quote":Z
    const/4 v7, -0x1

    .local v7, "last":I
    const/4 v5, 0x0

    .line 689
    .local v5, "count":I
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 690
    if-eqz p3, :cond_d

    .line 691
    invoke-virtual {p3}, Ljava/text/FieldPosition;->clear()V

    .line 694
    :cond_d
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    .line 695
    .local v9, "patternLength":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_14
    if-ge v6, v9, :cond_74

    .line 696
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 697
    .local v8, "next":I
    const/16 v0, 0x27

    if-ne v8, v0, :cond_3d

    .line 698
    if-lez v5, :cond_2b

    .line 699
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 700
    const/4 v5, 0x0

    .line 702
    :cond_2b
    if-ne v7, v8, :cond_39

    .line 703
    const/16 v0, 0x27

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 704
    const/4 v7, -0x1

    .line 708
    :goto_33
    if-nez v10, :cond_3b

    const/4 v10, 0x1

    .line 695
    :goto_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 706
    :cond_39
    move v7, v8

    goto :goto_33

    .line 708
    :cond_3b
    const/4 v10, 0x0

    goto :goto_36

    .line 711
    :cond_3d
    if-nez v10, :cond_63

    if-eq v7, v8, :cond_51

    const/16 v0, 0x61

    if-lt v8, v0, :cond_49

    const/16 v0, 0x7a

    if-le v8, v0, :cond_51

    :cond_49
    const/16 v0, 0x41

    if-lt v8, v0, :cond_63

    const/16 v0, 0x5a

    if-gt v8, v0, :cond_63

    .line 713
    :cond_51
    if-ne v7, v8, :cond_56

    .line 714
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 716
    :cond_56
    if-lez v5, :cond_60

    .line 717
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 719
    :cond_60
    move v7, v8

    .line 720
    const/4 v5, 0x1

    goto :goto_36

    .line 723
    :cond_63
    if-lez v5, :cond_6e

    .line 724
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 725
    const/4 v5, 0x0

    .line 727
    :cond_6e
    const/4 v7, -0x1

    .line 728
    int-to-char v0, v8

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_36

    .line 731
    .end local v8    # "next":I
    :cond_74
    if-lez v5, :cond_7e

    .line 732
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 734
    :cond_7e
    return-object p2
.end method

.method private formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;
    .registers 10
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 640
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 641
    .local v2, "buffer":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .local v3, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/FieldPosition;>;"
    const/4 v6, 0x0

    invoke-direct {p0, p1, v2, v6, v3}, Ljava/text/SimpleDateFormat;->formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 647
    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 650
    .local v0, "as":Ljava/text/AttributedString;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/FieldPosition;

    .line 651
    .local v5, "pos":Ljava/text/FieldPosition;
    invoke-virtual {v5}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    .line 652
    .local v1, "attribute":Ljava/text/Format$Field;
    invoke-virtual {v5}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v6

    invoke-virtual {v5}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v7

    invoke-virtual {v0, v1, v1, v6, v7}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_1b

    .line 657
    .end local v1    # "attribute":Ljava/text/Format$Field;
    .end local v5    # "pos":Ljava/text/FieldPosition;
    :cond_37
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v6

    return-object v6
.end method

.method public static getAMPMString(ILjava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "i"    # I
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 1518
    if-nez p1, :cond_6

    .line 1519
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 1521
    :cond_6
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1522
    invoke-static {p0}, Ljava/text/SimpleDateFormat;->getChineseAMPMString(I)Ljava/lang/String;

    move-result-object p2

    .line 1524
    :cond_16
    return-object p2
.end method

.method public static getChineseAMPMString(I)Ljava/lang/String;
    .registers 2
    .param p0, "i"    # I

    .prologue
    .line 1528
    const-string v0, ""

    .line 1529
    .local v0, "s":Ljava/lang/String;
    packed-switch p0, :pswitch_data_28

    .line 1579
    :goto_5
    return-object v0

    .line 1531
    :pswitch_6
    const-string v0, "\u5348\u591c"

    .line 1532
    goto :goto_5

    .line 1536
    :pswitch_9
    const-string v0, "\u51cc\u6668"

    .line 1537
    goto :goto_5

    .line 1540
    :pswitch_c
    const-string v0, "\u62c2\u6653"

    .line 1541
    goto :goto_5

    .line 1543
    :pswitch_f
    const-string v0, "\u6e05\u6668"

    .line 1544
    goto :goto_5

    .line 1546
    :pswitch_12
    const-string v0, "\u65e9\u6668"

    .line 1547
    goto :goto_5

    .line 1551
    :pswitch_15
    const-string v0, "\u4e0a\u5348"

    .line 1552
    goto :goto_5

    .line 1555
    :pswitch_18
    const-string v0, "\u4e2d\u5348"

    .line 1556
    goto :goto_5

    .line 1561
    :pswitch_1b
    const-string v0, "\u4e0b\u5348"

    .line 1562
    goto :goto_5

    .line 1564
    :pswitch_1e
    const-string v0, "\u508d\u665a"

    .line 1565
    goto :goto_5

    .line 1571
    :pswitch_21
    const-string v0, "\u665a\u4e0a"

    .line 1572
    goto :goto_5

    .line 1574
    :pswitch_24
    const-string v0, "\u5348\u591c"

    .line 1575
    goto :goto_5

    .line 1529
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_c
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_18
        :pswitch_18
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_24
    .end packed-switch
.end method

.method private parse(Ljava/lang/String;ICI)I
    .registers 22
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "format"    # C
    .param p4, "count"    # I

    .prologue
    .line 1028
    const-string v3, "GyMdkHmsSEDFwWahKzZLc"

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 1029
    .local v13, "index":I
    const/4 v3, -0x1

    if-ne v13, v3, :cond_2c

    .line 1030
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown pattern character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1033
    :cond_2c
    const/4 v10, -0x1

    .line 1035
    .local v10, "field":I
    const/4 v7, 0x0

    .line 1036
    .local v7, "absolute":I
    if-gez p4, :cond_37

    .line 1037
    move/from16 v0, p4

    neg-int v0, v0

    move/from16 p4, v0

    .line 1038
    move/from16 v7, p4

    .line 1040
    :cond_37
    packed-switch v13, :pswitch_data_1b8

    .line 1139
    :goto_3a
    const/4 v3, -0x1

    if-eq v10, v3, :cond_48

    .line 1140
    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-direct/range {v6 .. v11}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;III)I

    move-result p2

    .line 1142
    .end local p2    # "offset":I
    :cond_48
    :goto_48
    return p2

    .line 1042
    .restart local p2    # "offset":I
    :pswitch_49
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v3, v3, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result p2

    goto :goto_48

    .line 1044
    :pswitch_5b
    const/4 v3, 0x3

    move/from16 v0, p4

    if-lt v0, v3, :cond_62

    .line 1045
    const/4 v10, 0x1

    goto :goto_3a

    .line 1047
    :cond_62
    new-instance v14, Ljava/text/ParsePosition;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1048
    .local v14, "position":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v14}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    .line 1049
    .local v15, "result":Ljava/lang/Number;
    if-nez v15, :cond_7b

    .line 1050
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 p2, v3, -0x1

    goto :goto_48

    .line 1052
    :cond_7b
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v16

    .line 1054
    .local v16, "year":I
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    sub-int v3, v3, p2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9e

    if-ltz v16, :cond_9e

    .line 1055
    move-object/from16 v0, p0

    iget v3, v0, Ljava/text/SimpleDateFormat;->creationYear:I

    div-int/lit8 v3, v3, 0x64

    mul-int/lit8 v3, v3, 0x64

    add-int v16, v16, v3

    .line 1056
    move-object/from16 v0, p0

    iget v3, v0, Ljava/text/SimpleDateFormat;->creationYear:I

    move/from16 v0, v16

    if-ge v0, v3, :cond_9e

    .line 1057
    add-int/lit8 v16, v16, 0x64

    .line 1060
    :cond_9e
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 1061
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto :goto_48

    .line 1065
    .end local v14    # "position":Ljava/text/ParsePosition;
    .end local v15    # "result":Ljava/lang/Number;
    .end local v16    # "year":I
    :pswitch_ad
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v8, v3, Ljava/text/DateFormatSymbols;->longStandAloneMonths:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v9, v3, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    invoke-direct/range {v3 .. v9}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_48

    .line 1069
    :pswitch_c6
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v8, v3, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v9, v3, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    invoke-direct/range {v3 .. v9}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto/16 :goto_48

    .line 1072
    :pswitch_e0
    const/4 v10, 0x5

    .line 1073
    goto/16 :goto_3a

    .line 1075
    :pswitch_e3
    new-instance v14, Ljava/text/ParsePosition;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1076
    .restart local v14    # "position":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v14}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    .line 1077
    .restart local v15    # "result":Ljava/lang/Number;
    if-nez v15, :cond_fd

    .line 1078
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 p2, v3, -0x1

    goto/16 :goto_48

    .line 1080
    :cond_fd
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 1081
    .local v12, "hour":I
    const/16 v3, 0x18

    if-ne v12, v3, :cond_106

    .line 1082
    const/4 v12, 0x0

    .line 1084
    :cond_106
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v12}, Ljava/util/Calendar;->set(II)V

    .line 1085
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto/16 :goto_48

    .line 1087
    .end local v12    # "hour":I
    .end local v14    # "position":Ljava/text/ParsePosition;
    .end local v15    # "result":Ljava/lang/Number;
    :pswitch_115
    const/16 v10, 0xb

    .line 1088
    goto/16 :goto_3a

    .line 1090
    :pswitch_119
    const/16 v10, 0xc

    .line 1091
    goto/16 :goto_3a

    .line 1093
    :pswitch_11d
    const/16 v10, 0xd

    .line 1094
    goto/16 :goto_3a

    .line 1096
    :pswitch_121
    const/16 v10, 0xe

    .line 1097
    goto/16 :goto_3a

    .line 1099
    :pswitch_125
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v3, v3, Ljava/text/DateFormatSymbols;->longStandAloneWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v4, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseDayOfWeek(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto/16 :goto_48

    .line 1103
    :pswitch_13d
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v3, v3, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v4, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseDayOfWeek(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto/16 :goto_48

    .line 1106
    :pswitch_155
    const/4 v10, 0x6

    .line 1107
    goto/16 :goto_3a

    .line 1109
    :pswitch_158
    const/16 v10, 0x8

    .line 1110
    goto/16 :goto_3a

    .line 1112
    :pswitch_15c
    const/4 v10, 0x3

    .line 1113
    goto/16 :goto_3a

    .line 1115
    :pswitch_15f
    const/4 v10, 0x4

    .line 1116
    goto/16 :goto_3a

    .line 1118
    :pswitch_162
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v3, v3, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    const/16 v4, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result p2

    goto/16 :goto_48

    .line 1120
    :pswitch_176
    new-instance v14, Ljava/text/ParsePosition;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1121
    .restart local v14    # "position":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v14}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    .line 1122
    .restart local v15    # "result":Ljava/lang/Number;
    if-nez v15, :cond_190

    .line 1123
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 p2, v3, -0x1

    goto/16 :goto_48

    .line 1125
    :cond_190
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 1126
    .restart local v12    # "hour":I
    const/16 v3, 0xc

    if-ne v12, v3, :cond_199

    .line 1127
    const/4 v12, 0x0

    .line 1129
    :cond_199
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v12}, Ljava/util/Calendar;->set(II)V

    .line 1130
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto/16 :goto_48

    .line 1132
    .end local v12    # "hour":I
    .end local v14    # "position":Ljava/text/ParsePosition;
    .end local v15    # "result":Ljava/lang/Number;
    :pswitch_1a8
    const/16 v10, 0xa

    .line 1133
    goto/16 :goto_3a

    .line 1135
    :pswitch_1ac
    invoke-direct/range {p0 .. p2}, Ljava/text/SimpleDateFormat;->parseTimeZone(Ljava/lang/String;I)I

    move-result p2

    goto/16 :goto_48

    .line 1137
    :pswitch_1b2
    invoke-direct/range {p0 .. p2}, Ljava/text/SimpleDateFormat;->parseTimeZone(Ljava/lang/String;I)I

    move-result p2

    goto/16 :goto_48

    .line 1040
    :pswitch_data_1b8
    .packed-switch 0x0
        :pswitch_49
        :pswitch_5b
        :pswitch_c6
        :pswitch_e0
        :pswitch_e3
        :pswitch_115
        :pswitch_119
        :pswitch_11d
        :pswitch_121
        :pswitch_13d
        :pswitch_155
        :pswitch_158
        :pswitch_15c
        :pswitch_15f
        :pswitch_162
        :pswitch_176
        :pswitch_1a8
        :pswitch_1ac
        :pswitch_1b2
        :pswitch_ad
        :pswitch_125
    .end packed-switch
.end method

.method private parseDayOfWeek(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "longs"    # [Ljava/lang/String;
    .param p4, "shorts"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x7

    .line 1147
    invoke-direct {p0, p1, p2, p3, v1}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v0

    .line 1148
    .local v0, "index":I
    if-gez v0, :cond_b

    .line 1149
    invoke-direct {p0, p1, p2, p4, v1}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v0

    .line 1151
    :cond_b
    return v0
.end method

.method private parseMonth(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)I
    .registers 14
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "absolute"    # I
    .param p5, "longs"    # [Ljava/lang/String;
    .param p6, "shorts"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 1156
    if-gt p3, v4, :cond_d

    .line 1157
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p4

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;III)I

    move-result v6

    .line 1163
    :cond_c
    :goto_c
    return v6

    .line 1159
    :cond_d
    invoke-direct {p0, p1, p2, p5, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v6

    .line 1160
    .local v6, "index":I
    if-gez v6, :cond_c

    .line 1161
    invoke-direct {p0, p1, p2, p6, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v6

    goto :goto_c
.end method

.method private parseNumber(ILjava/lang/String;III)I
    .registers 10
    .param p1, "max"    # I
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "field"    # I
    .param p5, "skew"    # I

    .prologue
    .line 1290
    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, p3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1291
    .local v0, "position":Ljava/text/ParsePosition;
    invoke-direct {p0, p1, p2, v0}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    .line 1292
    .local v1, "result":Ljava/lang/Number;
    if-nez v1, :cond_13

    .line 1293
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 1296
    :goto_12
    return v2

    .line 1295
    :cond_13
    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v3, p5

    invoke-virtual {v2, p4, v3}, Ljava/util/Calendar;->set(II)V

    .line 1296
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    goto :goto_12
.end method

.method private parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 10
    .param p1, "max"    # I
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "position"    # Ljava/text/ParsePosition;

    .prologue
    .line 1261
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    const/4 v3, 0x0

    .line 1262
    .local v3, "result":I
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 1263
    .local v1, "index":I
    if-lez p1, :cond_11

    sub-int v4, v2, v1

    if-ge p1, v4, :cond_11

    .line 1264
    add-int v2, v1, p1

    .line 1267
    :cond_11
    :goto_11
    if-ge v1, v2, :cond_26

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_23

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_26

    .line 1268
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1270
    :cond_26
    if-nez p1, :cond_32

    .line 1271
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1272
    iget-object v4, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v4, p2, p3}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v4

    .line 1285
    :goto_31
    return-object v4

    .line 1276
    :cond_32
    :goto_32
    if-ge v1, v2, :cond_48

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .local v0, "digit":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_48

    .line 1277
    add-int/lit8 v1, v1, 0x1

    .line 1278
    mul-int/lit8 v4, v3, 0xa

    add-int v3, v4, v0

    goto :goto_32

    .line 1280
    .end local v0    # "digit":I
    :cond_48
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    if-ne v1, v4, :cond_53

    .line 1281
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1282
    const/4 v4, 0x0

    goto :goto_31

    .line 1284
    :cond_53
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1285
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_31
.end method

.method private parseText(Ljava/lang/String;I[Ljava/lang/String;I)I
    .registers 14
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "text"    # [Ljava/lang/String;
    .param p4, "field"    # I

    .prologue
    const/4 v8, -0x1

    .line 1300
    const/4 v6, -0x1

    .line 1301
    .local v6, "found":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    array-length v0, p3

    if-ge v7, v0, :cond_35

    .line 1302
    aget-object v0, p3, v7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1301
    :cond_e
    :goto_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1305
    :cond_11
    const/4 v1, 0x1

    aget-object v3, p3, v7

    const/4 v4, 0x0

    aget-object v0, p3, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1308
    if-eq v6, v8, :cond_33

    aget-object v0, p3, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aget-object v1, p3, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_e

    .line 1309
    :cond_33
    move v6, v7

    goto :goto_e

    .line 1313
    :cond_35
    if-eq v6, v8, :cond_44

    .line 1314
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1315
    aget-object v0, p3, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    .line 1317
    :goto_43
    return v0

    :cond_44
    neg-int v0, p2

    add-int/lit8 v0, v0, -0x1

    goto :goto_43
.end method

.method private parseTimeZone(Ljava/lang/String;I)I
    .registers 26
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    .line 1321
    const-string v2, "GMT"

    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    .line 1322
    .local v10, "foundGMT":Z
    if-eqz v10, :cond_10

    .line 1323
    add-int/lit8 p2, p2, 0x3

    .line 1326
    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, p2

    if-ge v0, v2, :cond_bf

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v20

    .local v20, "sign":C
    const/16 v2, 0x2b

    move/from16 v0, v20

    if-eq v0, v2, :cond_28

    const/16 v2, 0x2d

    move/from16 v0, v20

    if-ne v0, v2, :cond_bf

    .line 1328
    :cond_28
    new-instance v17, Ljava/text/ParsePosition;

    add-int/lit8 v2, p2, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1329
    .local v17, "position":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v19

    .line 1330
    .local v19, "result":Ljava/lang/Number;
    if-nez v19, :cond_47

    .line 1331
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 p2, v2, -0x1

    .line 1384
    .end local v17    # "position":Ljava/text/ParsePosition;
    .end local v19    # "result":Ljava/lang/Number;
    .end local v20    # "sign":C
    .end local p2    # "offset":I
    :goto_46
    return p2

    .line 1333
    .restart local v17    # "position":Ljava/text/ParsePosition;
    .restart local v19    # "result":Ljava/lang/Number;
    .restart local v20    # "sign":C
    .restart local p2    # "offset":I
    :cond_47
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 1334
    .local v11, "hour":I
    const v2, 0x36ee80

    mul-int v18, v11, v2

    .line 1335
    .local v18, "raw":I
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    move-result v13

    .line 1336
    .local v13, "index":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v13, v2, :cond_ac

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_ac

    .line 1337
    add-int/lit8 v2, v13, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v19

    .line 1339
    if-nez v19, :cond_81

    .line 1340
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 p2, v2, -0x1

    goto :goto_46

    .line 1342
    :cond_81
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v16

    .line 1343
    .local v16, "minute":I
    const v2, 0xea60

    mul-int v2, v2, v16

    add-int v18, v18, v2

    .line 1347
    .end local v16    # "minute":I
    :cond_8c
    :goto_8c
    const/16 v2, 0x2d

    move/from16 v0, v20

    if-ne v0, v2, :cond_97

    .line 1348
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    .line 1350
    :cond_97
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    new-instance v3, Ljava/util/SimpleTimeZone;

    const-string v4, ""

    move/from16 v0, v18

    invoke-direct {v3, v0, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1351
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto :goto_46

    .line 1344
    :cond_ac
    const/16 v2, 0x18

    if-lt v11, v2, :cond_8c

    .line 1345
    div-int/lit8 v2, v11, 0x64

    const v3, 0x36ee80

    mul-int/2addr v2, v3

    rem-int/lit8 v3, v11, 0x64

    const v4, 0xea60

    mul-int/2addr v3, v4

    add-int v18, v2, v3

    goto :goto_8c

    .line 1353
    .end local v11    # "hour":I
    .end local v13    # "index":I
    .end local v17    # "position":Ljava/text/ParsePosition;
    .end local v18    # "raw":I
    .end local v19    # "result":Ljava/lang/Number;
    .end local v20    # "sign":C
    :cond_bf
    if-eqz v10, :cond_d0

    .line 1354
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_46

    .line 1357
    :cond_d0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v22

    .line 1358
    .local v22, "zones":[[Ljava/lang/String;
    move-object/from16 v8, v22

    .local v8, "arr$":[[Ljava/lang/String;
    array-length v15, v8

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_dc
    if-ge v12, v15, :cond_137

    aget-object v9, v8, v12

    .line 1359
    .local v9, "element":[Ljava/lang/String;
    const/4 v14, 0x1

    .local v14, "j":I
    :goto_e1
    const/4 v2, 0x5

    if-ge v14, v2, :cond_134

    .line 1360
    const/4 v3, 0x1

    aget-object v5, v9, v14

    const/4 v6, 0x0

    aget-object v2, v9, v14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_131

    .line 1362
    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v21

    .line 1364
    .local v21, "zone":Ljava/util/TimeZone;
    if-nez v21, :cond_108

    .line 1365
    move/from16 v0, p2

    neg-int v2, v0

    add-int/lit8 p2, v2, -0x1

    goto/16 :goto_46

    .line 1367
    :cond_108
    invoke-virtual/range {v21 .. v21}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    .line 1368
    .restart local v18    # "raw":I
    const/4 v2, 0x3

    if-eq v14, v2, :cond_112

    const/4 v2, 0x4

    if-ne v14, v2, :cond_117

    .line 1377
    :cond_112
    const v2, 0x36ee80

    add-int v18, v18, v2

    .line 1379
    :cond_117
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    new-instance v3, Ljava/util/SimpleTimeZone;

    const-string v4, ""

    move/from16 v0, v18

    invoke-direct {v3, v0, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1380
    aget-object v2, v9, v14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int p2, p2, v2

    goto/16 :goto_46

    .line 1359
    .end local v18    # "raw":I
    .end local v21    # "zone":Ljava/util/TimeZone;
    :cond_131
    add-int/lit8 v14, v14, 0x1

    goto :goto_e1

    .line 1358
    :cond_134
    add-int/lit8 v12, v12, 0x1

    goto :goto_dc

    .line 1384
    .end local v9    # "element":[Ljava/lang/String;
    .end local v14    # "j":I
    :cond_137
    move/from16 v0, p2

    neg-int v2, v0

    add-int/lit8 p2, v2, -0x1

    goto/16 :goto_46
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1501
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 1502
    .local v1, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v3, "serialVersionOnStream"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    .line 1504
    .local v2, "version":I
    if-lez v2, :cond_35

    .line 1505
    const-string v3, "defaultCenturyStart"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 1509
    .local v0, "date":Ljava/util/Date;
    :goto_1a
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    .line 1510
    const-string v3, "formatData"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/DateFormatSymbols;

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 1511
    const-string v3, "pattern"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 1512
    return-void

    .line 1507
    .end local v0    # "date":Ljava/util/Date;
    :cond_35
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .restart local v0    # "date":Ljava/util/Date;
    goto :goto_1a
.end method

.method private validateFormat(C)V
    .registers 6
    .param p1, "format"    # C

    .prologue
    .line 414
    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 415
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    .line 416
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown pattern character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 419
    :cond_28
    return-void
.end method

.method private validatePattern(Ljava/lang/String;)V
    .registers 10
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 433
    const/4 v5, 0x0

    .line 434
    .local v5, "quote":Z
    const/4 v2, -0x1

    .local v2, "last":I
    const/4 v0, 0x0

    .line 436
    .local v0, "count":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 437
    .local v4, "patternLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v4, :cond_51

    .line 438
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 439
    .local v3, "next":I
    const/16 v6, 0x27

    if-ne v3, v6, :cond_26

    .line 440
    if-lez v0, :cond_19

    .line 441
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validateFormat(C)V

    .line 442
    const/4 v0, 0x0

    .line 444
    :cond_19
    if-ne v2, v3, :cond_22

    .line 445
    const/4 v2, -0x1

    .line 449
    :goto_1c
    if-nez v5, :cond_24

    const/4 v5, 0x1

    .line 437
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 447
    :cond_22
    move v2, v3

    goto :goto_1c

    .line 449
    :cond_24
    const/4 v5, 0x0

    goto :goto_1f

    .line 452
    :cond_26
    if-nez v5, :cond_48

    if-eq v2, v3, :cond_3a

    const/16 v6, 0x61

    if-lt v3, v6, :cond_32

    const/16 v6, 0x7a

    if-le v3, v6, :cond_3a

    :cond_32
    const/16 v6, 0x41

    if-lt v3, v6, :cond_48

    const/16 v6, 0x5a

    if-gt v3, v6, :cond_48

    .line 454
    :cond_3a
    if-ne v2, v3, :cond_3f

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 457
    :cond_3f
    if-lez v0, :cond_45

    .line 458
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validateFormat(C)V

    .line 460
    :cond_45
    move v2, v3

    .line 461
    const/4 v0, 0x1

    goto :goto_1f

    .line 464
    :cond_48
    if-lez v0, :cond_4f

    .line 465
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validateFormat(C)V

    .line 466
    const/4 v0, 0x0

    .line 468
    :cond_4f
    const/4 v2, -0x1

    goto :goto_1f

    .line 471
    .end local v3    # "next":I
    :cond_51
    if-lez v0, :cond_57

    .line 472
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validateFormat(C)V

    .line 475
    :cond_57
    if-eqz v5, :cond_61

    .line 476
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unterminated quote"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 478
    :cond_61
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1491
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1492
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "defaultCenturyStart"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1493
    const-string v1, "formatData"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1494
    const-string v1, "pattern"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1495
    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1496
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1497
    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .registers 5
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 543
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Ljava/text/SimpleDateFormat;->convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 545
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .registers 2
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 559
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 560
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 561
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 572
    invoke-super {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 573
    .local v0, "clone":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormatSymbols;

    iput-object v1, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 574
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 575
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 598
    if-ne p0, p1, :cond_5

    .line 605
    :cond_4
    :goto_4
    return v1

    .line 601
    :cond_5
    instance-of v3, p1, Ljava/text/SimpleDateFormat;

    if-nez v3, :cond_b

    move v1, v2

    .line 602
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 604
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 605
    .local v0, "simple":Ljava/text/SimpleDateFormat;
    invoke-super {p0, p1}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v3, v4}, Ljava/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_28
    move v1, v2

    goto :goto_4
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPos"    # Ljava/text/FieldPosition;

    .prologue
    .line 1001
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/SimpleDateFormat;->formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 625
    if-nez p1, :cond_8

    .line 626
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 628
    :cond_8
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_13

    .line 629
    check-cast p1, Ljava/util/Date;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    .line 632
    :goto_12
    return-object v0

    .line 631
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_13
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_27

    .line 632
    new-instance v0, Ljava/util/Date;

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    goto :goto_12

    .line 635
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public get2DigitYearStart()Ljava/util/Date;
    .registers 2

    .prologue
    .line 1009
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getDateFormatSymbols()Ljava/text/DateFormatSymbols;
    .registers 2

    .prologue
    .line 1018
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 1023
    invoke-super {p0}, Ljava/text/DateFormat;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    add-int/2addr v0, v1

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 16
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .prologue
    .line 1190
    const/4 v9, 0x0

    .line 1191
    .local v9, "quote":Z
    const/4 v4, -0x1

    .local v4, "last":I
    const/4 v0, 0x0

    .local v0, "count":I
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    .line 1192
    .local v7, "offset":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1193
    .local v5, "length":I
    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->clear()V

    .line 1194
    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v10

    .line 1195
    .local v10, "zone":Ljava/util/TimeZone;
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    .line 1196
    .local v8, "patternLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    if-ge v3, v8, :cond_aa

    .line 1197
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1198
    .local v6, "next":I
    const/16 v11, 0x27

    if-ne v6, v11, :cond_59

    .line 1199
    if-lez v0, :cond_3b

    .line 1200
    int-to-char v11, v4

    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_3a

    .line 1201
    neg-int v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    .line 1257
    .end local v6    # "next":I
    :goto_39
    return-object v1

    .line 1203
    .restart local v6    # "next":I
    :cond_3a
    const/4 v0, 0x0

    .line 1205
    :cond_3b
    if-ne v4, v6, :cond_55

    .line 1206
    if-ge v7, v5, :cond_47

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x27

    if-eq v11, v12, :cond_4c

    .line 1207
    :cond_47
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto :goto_39

    .line 1209
    :cond_4c
    add-int/lit8 v7, v7, 0x1

    .line 1210
    const/4 v4, -0x1

    .line 1214
    :goto_4f
    if-nez v9, :cond_57

    const/4 v9, 0x1

    .line 1196
    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 1212
    :cond_55
    move v4, v6

    goto :goto_4f

    .line 1214
    :cond_57
    const/4 v9, 0x0

    goto :goto_52

    .line 1217
    :cond_59
    if-nez v9, :cond_87

    if-eq v4, v6, :cond_6d

    const/16 v11, 0x61

    if-lt v6, v11, :cond_65

    const/16 v11, 0x7a

    if-le v6, v11, :cond_6d

    :cond_65
    const/16 v11, 0x41

    if-lt v6, v11, :cond_87

    const/16 v11, 0x5a

    if-gt v6, v11, :cond_87

    .line 1219
    :cond_6d
    if-ne v4, v6, :cond_72

    .line 1220
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 1222
    :cond_72
    if-lez v0, :cond_84

    .line 1223
    int-to-char v11, v4

    neg-int v12, v0

    invoke-direct {p0, p1, v7, v11, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_84

    .line 1224
    neg-int v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto :goto_39

    .line 1227
    :cond_84
    move v4, v6

    .line 1228
    const/4 v0, 0x1

    goto :goto_52

    .line 1231
    :cond_87
    if-lez v0, :cond_99

    .line 1232
    int-to-char v11, v4

    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_98

    .line 1233
    neg-int v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto :goto_39

    .line 1235
    :cond_98
    const/4 v0, 0x0

    .line 1237
    :cond_99
    const/4 v4, -0x1

    .line 1238
    if-ge v7, v5, :cond_a2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v6, :cond_a7

    .line 1239
    :cond_a2
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto :goto_39

    .line 1241
    :cond_a7
    add-int/lit8 v7, v7, 0x1

    goto :goto_52

    .line 1244
    .end local v6    # "next":I
    :cond_aa
    if-lez v0, :cond_bc

    .line 1245
    int-to-char v11, v4

    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_bc

    .line 1246
    neg-int v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto/16 :goto_39

    .line 1251
    :cond_bc
    :try_start_bc
    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_c1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bc .. :try_end_c1} :catch_cc

    move-result-object v1

    .line 1255
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {p2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1256
    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_39

    .line 1252
    .end local v1    # "date":Ljava/util/Date;
    :catch_cc
    move-exception v2

    .line 1253
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto/16 :goto_39
.end method

.method public set2DigitYearStart(Ljava/util/Date;)V
    .registers 4
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 1415
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 1416
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1417
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1418
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    .line 1419
    return-void
.end method

.method public setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V
    .registers 3
    .param p1, "value"    # Ljava/text/DateFormatSymbols;

    .prologue
    .line 1428
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 1429
    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1438
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1481
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method
