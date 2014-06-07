.class public Lcom/speedsoftware/rootexplorer/cd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Ljava/util/Hashtable;

.field public static c:Ljava/util/Hashtable;

.field public static d:Z

.field private static e:Ljava/util/Hashtable;

.field private static f:Landroid/webkit/MimeTypeMap;


# instance fields
.field private A:J

.field private B:Ljava/util/Date;

.field private C:Ljava/lang/String;

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Landroid/graphics/Bitmap;

.field private I:Landroid/graphics/Bitmap;

.field private J:I

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:I

.field private final O:Ljava/lang/String;

.field private P:I

.field private Q:I

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/SpeedSoftware/.thumbnails/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/speedsoftware/rootexplorer/cd;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/speedsoftware/rootexplorer/cd;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/speedsoftware/rootexplorer/cd;->c:Ljava/util/Hashtable;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/speedsoftware/rootexplorer/cd;->d:Z

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    sput-object v0, Lcom/speedsoftware/rootexplorer/cd;->f:Landroid/webkit/MimeTypeMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x64

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, " m4a wma mp3 mid xmf mxmf rtttl rtx ota imy ogg wav "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->g:Ljava/lang/String;

    const-string v0, " 3gp 3g2 mp4 wmv avi flv m4v "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->h:Ljava/lang/String;

    const-string v0, " jpg gif png bmp jpeg "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->i:Ljava/lang/String;

    const-string v0, " txt log csv xml abc acgi asm asp c c++ cc conf cpp css csv cxx dev el el f g h hh hlb htt htx idc jav java list log lst m mar p pas pl py rexx rt rtf rtx s sdml sgm sgml shtml spc talk tcl tcsh text tsv txt uri uu vcs wml xml zsh prop rc sh cfg ini "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->j:Ljava/lang/String;

    const-string v0, " html htm htmls "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->k:Ljava/lang/String;

    const-string v0, " apk "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->l:Ljava/lang/String;

    const-string v0, " zip jar "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->m:Ljava/lang/String;

    const-string v0, " rar "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->n:Ljava/lang/String;

    const-string v0, " tar tgz tar.gz "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->o:Ljava/lang/String;

    const-string v0, " doc docx dotx "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->p:Ljava/lang/String;

    const-string v0, " pps ppsx ppt pptx pwz "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->q:Ljava/lang/String;

    const-string v0, " xls xlsx xlt xltx "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->r:Ljava/lang/String;

    const-string v0, " pdf "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->s:Ljava/lang/String;

    const-string v0, " db "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->t:Ljava/lang/String;

    const-string v0, " rc sh "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->u:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/cd;->v:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->I:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/speedsoftware/rootexplorer/cd;->N:I

    const-string v0, "Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec"

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->O:Ljava/lang/String;

    iput v2, p0, Lcom/speedsoftware/rootexplorer/cd;->P:I

    iput v2, p0, Lcom/speedsoftware/rootexplorer/cd;->Q:I

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const/16 v2, 0x64

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, " m4a wma mp3 mid xmf mxmf rtttl rtx ota imy ogg wav "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->g:Ljava/lang/String;

    const-string v0, " 3gp 3g2 mp4 wmv avi flv m4v "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->h:Ljava/lang/String;

    const-string v0, " jpg gif png bmp jpeg "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->i:Ljava/lang/String;

    const-string v0, " txt log csv xml abc acgi asm asp c c++ cc conf cpp css csv cxx dev el el f g h hh hlb htt htx idc jav java list log lst m mar p pas pl py rexx rt rtf rtx s sdml sgm sgml shtml spc talk tcl tcsh text tsv txt uri uu vcs wml xml zsh prop rc sh cfg ini "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->j:Ljava/lang/String;

    const-string v0, " html htm htmls "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->k:Ljava/lang/String;

    const-string v0, " apk "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->l:Ljava/lang/String;

    const-string v0, " zip jar "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->m:Ljava/lang/String;

    const-string v0, " rar "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->n:Ljava/lang/String;

    const-string v0, " tar tgz tar.gz "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->o:Ljava/lang/String;

    const-string v0, " doc docx dotx "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->p:Ljava/lang/String;

    const-string v0, " pps ppsx ppt pptx pwz "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->q:Ljava/lang/String;

    const-string v0, " xls xlsx xlt xltx "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->r:Ljava/lang/String;

    const-string v0, " pdf "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->s:Ljava/lang/String;

    const-string v0, " db "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->t:Ljava/lang/String;

    const-string v0, " rc sh "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->u:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/cd;->v:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->I:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/speedsoftware/rootexplorer/cd;->N:I

    const-string v0, "Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec"

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->O:Ljava/lang/String;

    iput v2, p0, Lcom/speedsoftware/rootexplorer/cd;->P:I

    iput v2, p0, Lcom/speedsoftware/rootexplorer/cd;->Q:I

    iput p1, p0, Lcom/speedsoftware/rootexplorer/cd;->x:I

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    iput-object p3, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/speedsoftware/rootexplorer/cd;->b(Ljava/lang/String;)V

    iput-wide p5, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    iput-object p7, p0, Lcom/speedsoftware/rootexplorer/cd;->B:Ljava/util/Date;

    iput-boolean p8, p0, Lcom/speedsoftware/rootexplorer/cd;->D:Z

    iput-object p9, p0, Lcom/speedsoftware/rootexplorer/cd;->E:Ljava/lang/String;

    iput-object p10, p0, Lcom/speedsoftware/rootexplorer/cd;->F:Ljava/lang/String;

    iput-object p11, p0, Lcom/speedsoftware/rootexplorer/cd;->G:Ljava/lang/String;

    iput-object p12, p0, Lcom/speedsoftware/rootexplorer/cd;->H:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Date;)V
    .locals 3

    const/16 v2, 0x64

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, " m4a wma mp3 mid xmf mxmf rtttl rtx ota imy ogg wav "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->g:Ljava/lang/String;

    const-string v0, " 3gp 3g2 mp4 wmv avi flv m4v "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->h:Ljava/lang/String;

    const-string v0, " jpg gif png bmp jpeg "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->i:Ljava/lang/String;

    const-string v0, " txt log csv xml abc acgi asm asp c c++ cc conf cpp css csv cxx dev el el f g h hh hlb htt htx idc jav java list log lst m mar p pas pl py rexx rt rtf rtx s sdml sgm sgml shtml spc talk tcl tcsh text tsv txt uri uu vcs wml xml zsh prop rc sh cfg ini "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->j:Ljava/lang/String;

    const-string v0, " html htm htmls "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->k:Ljava/lang/String;

    const-string v0, " apk "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->l:Ljava/lang/String;

    const-string v0, " zip jar "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->m:Ljava/lang/String;

    const-string v0, " rar "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->n:Ljava/lang/String;

    const-string v0, " tar tgz tar.gz "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->o:Ljava/lang/String;

    const-string v0, " doc docx dotx "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->p:Ljava/lang/String;

    const-string v0, " pps ppsx ppt pptx pwz "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->q:Ljava/lang/String;

    const-string v0, " xls xlsx xlt xltx "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->r:Ljava/lang/String;

    const-string v0, " pdf "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->s:Ljava/lang/String;

    const-string v0, " db "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->t:Ljava/lang/String;

    const-string v0, " rc sh "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->u:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/cd;->v:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->I:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/speedsoftware/rootexplorer/cd;->N:I

    const-string v0, "Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec"

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->O:Ljava/lang/String;

    iput v2, p0, Lcom/speedsoftware/rootexplorer/cd;->P:I

    iput v2, p0, Lcom/speedsoftware/rootexplorer/cd;->Q:I

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/speedsoftware/rootexplorer/cd;->b(Ljava/lang/String;)V

    int-to-long v0, p4

    iput-wide v0, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    iput-object p5, p0, Lcom/speedsoftware/rootexplorer/cd;->B:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x64

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, " m4a wma mp3 mid xmf mxmf rtttl rtx ota imy ogg wav "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->g:Ljava/lang/String;

    const-string v0, " 3gp 3g2 mp4 wmv avi flv m4v "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->h:Ljava/lang/String;

    const-string v0, " jpg gif png bmp jpeg "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->i:Ljava/lang/String;

    const-string v0, " txt log csv xml abc acgi asm asp c c++ cc conf cpp css csv cxx dev el el f g h hh hlb htt htx idc jav java list log lst m mar p pas pl py rexx rt rtf rtx s sdml sgm sgml shtml spc talk tcl tcsh text tsv txt uri uu vcs wml xml zsh prop rc sh cfg ini "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->j:Ljava/lang/String;

    const-string v0, " html htm htmls "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->k:Ljava/lang/String;

    const-string v0, " apk "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->l:Ljava/lang/String;

    const-string v0, " zip jar "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->m:Ljava/lang/String;

    const-string v0, " rar "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->n:Ljava/lang/String;

    const-string v0, " tar tgz tar.gz "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->o:Ljava/lang/String;

    const-string v0, " doc docx dotx "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->p:Ljava/lang/String;

    const-string v0, " pps ppsx ppt pptx pwz "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->q:Ljava/lang/String;

    const-string v0, " xls xlsx xlt xltx "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->r:Ljava/lang/String;

    const-string v0, " pdf "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->s:Ljava/lang/String;

    const-string v0, " db "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->t:Ljava/lang/String;

    const-string v0, " rc sh "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->u:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/cd;->v:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->I:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/speedsoftware/rootexplorer/cd;->N:I

    const-string v0, "Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec"

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->O:Ljava/lang/String;

    iput v2, p0, Lcom/speedsoftware/rootexplorer/cd;->P:I

    iput v2, p0, Lcom/speedsoftware/rootexplorer/cd;->Q:I

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/speedsoftware/rootexplorer/cd;->b(Ljava/lang/String;)V

    int-to-long v0, p4

    iput-wide v0, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    iput-object p5, p0, Lcom/speedsoftware/rootexplorer/cd;->B:Ljava/util/Date;

    iput-object p6, p0, Lcom/speedsoftware/rootexplorer/cd;->E:Ljava/lang/String;

    iput-object p7, p0, Lcom/speedsoftware/rootexplorer/cd;->F:Ljava/lang/String;

    iput-object p8, p0, Lcom/speedsoftware/rootexplorer/cd;->G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, " m4a wma mp3 mid xmf mxmf rtttl rtx ota imy ogg wav "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->g:Ljava/lang/String;

    const-string v0, " 3gp 3g2 mp4 wmv avi flv m4v "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->h:Ljava/lang/String;

    const-string v0, " jpg gif png bmp jpeg "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->i:Ljava/lang/String;

    const-string v0, " txt log csv xml abc acgi asm asp c c++ cc conf cpp css csv cxx dev el el f g h hh hlb htt htx idc jav java list log lst m mar p pas pl py rexx rt rtf rtx s sdml sgm sgml shtml spc talk tcl tcsh text tsv txt uri uu vcs wml xml zsh prop rc sh cfg ini "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->j:Ljava/lang/String;

    const-string v0, " html htm htmls "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->k:Ljava/lang/String;

    const-string v0, " apk "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->l:Ljava/lang/String;

    const-string v0, " zip jar "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->m:Ljava/lang/String;

    const-string v0, " rar "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->n:Ljava/lang/String;

    const-string v0, " tar tgz tar.gz "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->o:Ljava/lang/String;

    const-string v0, " doc docx dotx "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->p:Ljava/lang/String;

    const-string v0, " pps ppsx ppt pptx pwz "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->q:Ljava/lang/String;

    const-string v0, " xls xlsx xlt xltx "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->r:Ljava/lang/String;

    const-string v0, " pdf "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->s:Ljava/lang/String;

    const-string v0, " db "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->t:Ljava/lang/String;

    const-string v0, " rc sh "

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->u:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/cd;->v:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->I:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/speedsoftware/rootexplorer/cd;->N:I

    const-string v0, "Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec"

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->O:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/speedsoftware/rootexplorer/cd;->P:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/speedsoftware/rootexplorer/cd;->Q:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    if-nez p2, :cond_2

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v8, -0x1

    if-ne v0, v8, :cond_0

    const-string p2, "/"

    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    const/4 v0, 0x0

    move v8, v0

    move v0, v1

    move v1, v2

    move v2, v3

    move-object v3, v4

    :goto_1
    const/16 v4, 0xa

    if-gt v8, v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v5, v4, :cond_3

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    const/4 v8, 0x5

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz p3, :cond_e

    const/4 v6, 0x6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_2
    new-instance v0, Ljava/util/GregorianCalendar;

    add-int/lit8 v2, v2, -0x1

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->B:Ljava/util/Date;

    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v8, 0x1

    if-le v0, v8, :cond_0

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p2, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    const/16 v4, 0x20

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v4, -0x1

    if-ne v9, v4, :cond_5

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :goto_3
    if-nez v8, :cond_6

    invoke-virtual {p0, v4}, Lcom/speedsoftware/rootexplorer/cd;->b(Ljava/lang/String;)V

    move-object v4, v6

    :goto_4
    :pswitch_0
    add-int/lit8 v5, v9, 0x1

    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v5, :cond_4

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0x20

    if-eq v6, v9, :cond_d

    :cond_4
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move-object v6, v4

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_6
    if-eqz p3, :cond_8

    packed-switch v8, :pswitch_data_0

    :pswitch_1
    move-object v4, v6

    goto :goto_4

    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/speedsoftware/rootexplorer/cd;->b(Ljava/lang/String;)V

    move-object v4, v6

    goto :goto_4

    :pswitch_3
    const v5, 0x7f08008a

    invoke-virtual {p4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/speedsoftware/rootexplorer/cd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/speedsoftware/rootexplorer/cd;->F:Ljava/lang/String;

    move-object v4, v6

    goto :goto_4

    :pswitch_4
    const v5, 0x7f08008a

    invoke-virtual {p4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/speedsoftware/rootexplorer/cd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/speedsoftware/rootexplorer/cd;->G:Ljava/lang/String;

    move-object v4, v6

    goto :goto_4

    :pswitch_5
    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    move-object v4, v6

    goto :goto_4

    :pswitch_6
    const-string v1, "Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1

    move-object v4, v6

    goto :goto_4

    :pswitch_7
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object v4, v6

    goto :goto_4

    :pswitch_8
    move-object v3, v4

    move-object v4, v6

    goto :goto_4

    :pswitch_9
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object v4, v6

    goto :goto_4

    :pswitch_a
    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->h()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, " -> "

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/speedsoftware/rootexplorer/cd;->E:Ljava/lang/String;

    move-object v4, v6

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    move-object v4, v6

    goto/16 :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->h()Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_9
    packed-switch v8, :pswitch_data_1

    move-object v4, v6

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {p0, v4}, Lcom/speedsoftware/rootexplorer/cd;->b(Ljava/lang/String;)V

    move-object v4, v6

    goto/16 :goto_4

    :pswitch_c
    iput-object v4, p0, Lcom/speedsoftware/rootexplorer/cd;->F:Ljava/lang/String;

    move-object v4, v6

    goto/16 :goto_4

    :pswitch_d
    iput-object v4, p0, Lcom/speedsoftware/rootexplorer/cd;->G:Ljava/lang/String;

    move-object v4, v6

    goto/16 :goto_4

    :pswitch_e
    move-object v3, v4

    move-object v4, v6

    goto/16 :goto_4

    :pswitch_f
    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, " -> "

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/speedsoftware/rootexplorer/cd;->E:Ljava/lang/String;

    move-object v4, v6

    goto/16 :goto_4

    :cond_a
    packed-switch v8, :pswitch_data_2

    :cond_b
    :goto_6
    move-object v4, v6

    goto/16 :goto_4

    :pswitch_10
    invoke-virtual {p0, v4}, Lcom/speedsoftware/rootexplorer/cd;->b(Ljava/lang/String;)V

    move-object v4, v6

    goto/16 :goto_4

    :pswitch_11
    iput-object v4, p0, Lcom/speedsoftware/rootexplorer/cd;->F:Ljava/lang/String;

    move-object v4, v6

    goto/16 :goto_4

    :pswitch_12
    iput-object v4, p0, Lcom/speedsoftware/rootexplorer/cd;->G:Ljava/lang/String;

    move-object v4, v6

    goto/16 :goto_4

    :pswitch_13
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    move-object v4, v6

    goto/16 :goto_4

    :pswitch_14
    move-object v3, v4

    move-object v4, v6

    goto/16 :goto_4

    :cond_c
    :pswitch_15
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    goto :goto_6

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    :cond_e
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x5

    const/4 v2, 0x7

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v6, v7

    move v2, v0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private O()J
    .locals 6

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    const-string v1, "%s,%d,%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/cd;->B:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private P()Landroid/graphics/Bitmap;
    .locals 3

    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private Q()I
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cd;->z:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cd;->z:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/cd;->f(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "rwxrwxrwx"

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/cd;->f(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private R()I
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cd;->z:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "rw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cd;->z:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/cd;->f(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "rwxrwxrwx"

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/cd;->f(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private S()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%s %d \"%s\"\n%s %d \"%s\""

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/speedsoftware/rootexplorer/i;->B:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/cd;->Q()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/speedsoftware/rootexplorer/i;->B:Ljava/lang/String;

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v3, "rwxrwxr-x"

    invoke-static {v3}, Lcom/speedsoftware/rootexplorer/cd;->f(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%s %d \"%s\""

    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Lcom/speedsoftware/rootexplorer/i;->B:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/cd;->Q()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private T()Ljava/lang/String;
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, ""

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/cd;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "%s %d \"%s\"\n%s %d \"%s\"\n"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/speedsoftware/rootexplorer/i;->B:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/cd;->R()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-shm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    sget-object v2, Lcom/speedsoftware/rootexplorer/i;->B:Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/cd;->R()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-wal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "%s %d \"%s\"\n%s %d \"%s\""

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/speedsoftware/rootexplorer/i;->B:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/cd;->R()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Lcom/speedsoftware/rootexplorer/i;->B:Ljava/lang/String;

    aput-object v3, v2, v8

    const-string v3, "rwxrwxrwx"

    invoke-static {v3}, Lcom/speedsoftware/rootexplorer/cd;->f(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "%s %d \"%s\""

    new-array v2, v8, [Ljava/lang/Object;

    sget-object v3, Lcom/speedsoftware/rootexplorer/i;->B:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/cd;->R()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cd;->I:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    :cond_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->I:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->I:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->I:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->E()I

    move-result v0

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/ae;->a(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->E()I

    move-result v0

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/ae;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 14

    const/4 v2, 0x1

    const/16 v13, 0x2f

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    move v3, v5

    :goto_0
    if-lt v4, v7, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, v2, :cond_a

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v3, :cond_0

    invoke-static {v0, p1}, Lcom/speedsoftware/rootexplorer/cd;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    aget-object v8, v6, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/speedsoftware/rootexplorer/i;->w:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\"

    const-string v12, "\\\\"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\""

    const-string v12, "\\\""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/speedsoftware/rootexplorer/fc;->b(Ljava/lang/String;)Lcom/speedsoftware/rootexplorer/ct;

    move-result-object v0

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/ct;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v3

    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto/16 :goto_0

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x64

    if-eq v10, v11, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x6c

    if-ne v10, v11, :cond_2

    :cond_5
    new-instance v10, Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-boolean v12, Lcom/speedsoftware/rootexplorer/i;->v:Z

    invoke-direct {v10, v0, v11, v12, p1}, Lcom/speedsoftware/rootexplorer/cd;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    iget-object v0, v10, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v10}, Lcom/speedsoftware/rootexplorer/cd;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v10, Lcom/speedsoftware/rootexplorer/cd;->E:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/speedsoftware/rootexplorer/cd;->E:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    :goto_3
    move-object v1, v0

    move v0, v2

    goto :goto_2

    :cond_7
    iget-object v0, v10, Lcom/speedsoftware/rootexplorer/cd;->E:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    move-object v0, v1

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    goto :goto_2

    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit16 v0, v0, -0x2710

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "app_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "0"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/4 v3, 0x0

    const-string v4, "root"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "1000"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3e8

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "1001"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3e9

    const-string v4, "radio"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "1002"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3ea

    const-string v4, "bluetooth"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "1003"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3eb

    const-string v4, "graphics"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "1004"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3ec

    const-string v4, "input"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "1005"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3ed

    const-string v4, "audio"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "1006"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3ee

    const-string v4, "camera"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "1007"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3ef

    const-string v4, "log"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "1008"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3f0

    const-string v4, "compass"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "1009"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3f1

    const-string v4, "mount"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "1010"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3f2

    const-string v4, "wifi"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "1011"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3f3

    const-string v4, "adb"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "1012"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3f4

    const-string v4, "install"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "1013"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3f5

    const-string v4, "media"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "1014"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3f6

    const-string v4, "dhcp"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "1015"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3f7

    const-string v4, "sdcard_rw"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "1016"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3f8

    const-string v4, "vpn"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "1017"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3f9

    const-string v4, "keystore"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "2000"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x7d0

    const-string v4, "shell"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "2001"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x7d1

    const-string v4, "cache"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "2002"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x7d2

    const-string v4, "diag"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "3001"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0xbb9

    const-string v4, "net_bt_admin"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "3002"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0xbba

    const-string v4, "net_bt"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "3003"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0xbbb

    const-string v4, "inet"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "3004"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0xbbc

    const-string v4, "net_raw"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "3005"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0xbbd

    const-string v4, "net_admin"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "9998"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x270e

    const-string v4, "misc"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    const-string v1, "9999"

    new-instance v2, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x270f

    const-string v4, "nobody"

    invoke-direct {v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/cm;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cm;->a()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lcom/speedsoftware/rootexplorer/dw;)V
    .locals 6

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p3, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p5

    move v1, p0

    move-object v2, p1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/speedsoftware/rootexplorer/dw;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p4, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p5

    move v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/speedsoftware/rootexplorer/dw;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p4, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lcom/speedsoftware/rootexplorer/dw;)V
    .locals 11

    const/4 v6, 0x0

    :try_start_0
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v8

    const-string v0, " m4a wma mp3 mid xmf mxmf rtttl rtx ota imy ogg wav "

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v7, v6

    :goto_0
    if-lt v7, v10, :cond_0

    const-string v0, " 3gp 3g2 mp4 wmv avi flv m4v "

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v7, v6

    :goto_1
    if-lt v7, v10, :cond_3

    const-string v0, " jpg gif png bmp jpeg "

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v7, v6

    :goto_2
    if-lt v7, v10, :cond_6

    const-string v0, " apk "

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v7, v6

    :goto_3
    if-lt v7, v10, :cond_9

    const-string v0, " zip jar "

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v7, v6

    :goto_4
    if-lt v7, v10, :cond_b

    const-string v0, " tar tgz tar.gz "

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v7, v6

    :goto_5
    if-lt v7, v10, :cond_d

    const-string v0, " rar "

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v7, v6

    :goto_6
    if-lt v7, v10, :cond_f

    const-string v0, " rc sh "

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v7, v6

    :goto_7
    if-lt v7, v10, :cond_11

    const-string v0, " db "

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v7, v6

    :goto_8
    if-lt v7, v10, :cond_13

    const-string v0, " txt log csv xml abc acgi asm asp c c++ cc conf cpp css csv cxx dev el el f g h hh hlb htt htx idc jav java list log lst m mar p pas pl py rexx rt rtf rtx s sdml sgm sgml shtml spc talk tcl tcsh text tsv txt uri uu vcs wml xml zsh prop rc sh cfg ini "

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v9, v7

    :goto_9
    if-lt v6, v9, :cond_15

    :goto_a
    return-void

    :cond_0
    aget-object v2, v9, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "audio/*"

    :cond_1
    const/4 v0, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/speedsoftware/rootexplorer/cd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lcom/speedsoftware/rootexplorer/dw;)V

    :cond_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_0

    :cond_3
    aget-object v2, v9, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "video/*"

    :cond_4
    const/4 v0, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/speedsoftware/rootexplorer/cd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lcom/speedsoftware/rootexplorer/dw;)V

    :cond_5
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_1

    :cond_6
    aget-object v2, v9, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, "image/*"

    :cond_7
    const/4 v0, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/speedsoftware/rootexplorer/cd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lcom/speedsoftware/rootexplorer/dw;)V

    :cond_8
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_2

    :cond_9
    aget-object v2, v9, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/speedsoftware/rootexplorer/cd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lcom/speedsoftware/rootexplorer/dw;)V

    :cond_a
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_3

    :cond_b
    aget-object v2, v9, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x4

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/speedsoftware/rootexplorer/cd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lcom/speedsoftware/rootexplorer/dw;)V

    :cond_c
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_4

    :cond_d
    aget-object v2, v9, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x5

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/speedsoftware/rootexplorer/cd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lcom/speedsoftware/rootexplorer/dw;)V

    :cond_e
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_5

    :cond_f
    aget-object v2, v9, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x6

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/speedsoftware/rootexplorer/cd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lcom/speedsoftware/rootexplorer/dw;)V

    :cond_10
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_6

    :cond_11
    aget-object v2, v9, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x7

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/speedsoftware/rootexplorer/cd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lcom/speedsoftware/rootexplorer/dw;)V

    :cond_12
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_7

    :cond_13
    aget-object v2, v9, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x8

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/speedsoftware/rootexplorer/cd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lcom/speedsoftware/rootexplorer/dw;)V

    :cond_14
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_8

    :cond_15
    aget-object v2, v7, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x9

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/speedsoftware/rootexplorer/cd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lcom/speedsoftware/rootexplorer/dw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_16
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto/16 :goto_a
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    const-string v1, "/databases"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    const-string v1, "/dbdata/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".db-journal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-wal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-shm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)I
    .locals 8

    const/16 v7, 0x78

    const/16 v6, 0x8

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/16 v3, 0x2d

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_0

    const/16 v0, 0x190

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_1

    add-int/lit16 v0, v0, 0xc8

    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_9

    add-int/lit8 v0, v0, 0x64

    :cond_2
    :goto_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_3

    add-int/lit8 v0, v0, 0x28

    :cond_3
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_4

    add-int/lit8 v0, v0, 0x14

    :cond_4
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_b

    add-int/lit8 v0, v0, 0xa

    :cond_5
    :goto_1
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_6

    add-int/lit8 v0, v0, 0x4

    :cond_6
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_7

    add-int/lit8 v0, v0, 0x2

    :cond_7
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_d

    add-int/lit8 v0, v0, 0x1

    :cond_8
    :goto_2
    return v0

    :cond_9
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x53

    if-ne v1, v2, :cond_a

    add-int/lit16 v0, v0, 0xfa0

    goto :goto_0

    :cond_a
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_2

    add-int/lit16 v0, v0, 0x1004

    goto :goto_0

    :cond_b
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x53

    if-ne v1, v2, :cond_c

    add-int/lit16 v0, v0, 0x7d0

    goto :goto_1

    :cond_c
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_5

    add-int/lit16 v0, v0, 0x7da

    goto :goto_1

    :cond_d
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x54

    if-ne v1, v2, :cond_e

    add-int/lit16 v0, v0, 0x3e8

    goto :goto_2

    :cond_e
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x74

    if-ne v1, v2, :cond_8

    add-int/lit16 v0, v0, 0x3e9

    goto :goto_2
.end method

.method private j(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v3, "%s %d \"%s\"\n%s %d \"%s\""

    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/Object;

    sget-object v0, Lcom/speedsoftware/rootexplorer/i;->B:Ljava/lang/String;

    aput-object v0, v4, v9

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/cd;->f(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    sget-object v0, Lcom/speedsoftware/rootexplorer/i;->B:Ljava/lang/String;

    aput-object v0, v4, v2

    const/4 v5, 0x4

    sget-object v0, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    const-string v1, "%s \"%s/..\""

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v6, Lcom/speedsoftware/rootexplorer/i;->w:Ljava/lang/String;

    aput-object v6, v2, v9

    iget-object v6, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    const-string v7, "\\"

    const-string v8, "\\\\"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\""

    const-string v8, "\\\""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/fc;->b(Ljava/lang/String;)Lcom/speedsoftware/rootexplorer/ct;

    move-result-object v0

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/ct;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/cd;->f(Ljava/lang/String;)I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v7, 0x2d

    if-eq v1, v7, :cond_2

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v7, 0x64

    if-eq v1, v7, :cond_2

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v7, 0x6c

    if-ne v1, v7, :cond_0

    :cond_2
    new-instance v1, Lcom/speedsoftware/rootexplorer/cd;

    iget-object v7, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    sget-boolean v8, Lcom/speedsoftware/rootexplorer/i;->v:Z

    invoke-direct {v1, v0, v7, v8, p1}, Lcom/speedsoftware/rootexplorer/cd;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    iget-object v0, v1, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    const-string v7, "databases"

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "rwxrwx--x"

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/cd;->f(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_4
    const-string v0, "rwxrwx--x"

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/cd;->f(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_5
    const-string v0, "%s %d \"%s\""

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/speedsoftware/rootexplorer/i;->B:Ljava/lang/String;

    aput-object v2, v1, v9

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/cd;->f(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public final A()Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cd;->H:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v1, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/speedsoftware/rootexplorer/cd;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/cd;->O()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->K:Ljava/lang/String;

    return-object v0
.end method

.method public final C()V
    .locals 2

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/cd;->v:Z

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/cd;->v:Z

    return-void
.end method

.method public final D()Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->E()I

    move-result v0

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/ae;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final E()I
    .locals 7

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/16 v3, 0xd

    const/4 v6, -0x1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ne v0, v6, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-boolean v4, p0, Lcom/speedsoftware/rootexplorer/cd;->v:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/cd;->z:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x64

    if-ne v4, v5, :cond_2

    :cond_0
    const/4 v0, 0x2

    :goto_1
    return v0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/cd;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v0, 0xb

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    const-string v4, " jpg gif png bmp jpeg "

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_5

    const/4 v0, 0x3

    goto :goto_1

    :cond_5
    const-string v4, " m4a wma mp3 mid xmf mxmf rtttl rtx ota imy ogg wav "

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_6

    const/4 v0, 0x5

    goto :goto_1

    :cond_6
    const-string v4, " 3gp 3g2 mp4 wmv avi flv m4v "

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_7

    const/16 v0, 0x9

    goto :goto_1

    :cond_7
    const-string v4, " txt log csv xml abc acgi asm asp c c++ cc conf cpp css csv cxx dev el el f g h hh hlb htt htx idc jav java list log lst m mar p pas pl py rexx rt rtf rtx s sdml sgm sgml shtml spc talk tcl tcsh text tsv txt uri uu vcs wml xml zsh prop rc sh cfg ini "

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_8

    const/4 v0, 0x6

    goto :goto_1

    :cond_8
    const-string v4, " html htm htmls "

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_9

    move v0, v2

    goto :goto_1

    :cond_9
    const-string v2, " apk "

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_a

    const/16 v0, 0xc

    goto :goto_1

    :cond_a
    const-string v2, " zip jar "

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_b

    move v0, v3

    goto :goto_1

    :cond_b
    const-string v2, " pdf "

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_c

    const/16 v0, 0xe

    goto/16 :goto_1

    :cond_c
    const-string v2, " doc docx dotx "

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_d

    const/16 v0, 0xf

    goto/16 :goto_1

    :cond_d
    const-string v2, " xls xlsx xlt xltx "

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_e

    const/16 v0, 0x10

    goto/16 :goto_1

    :cond_e
    const-string v2, " pps ppsx ppt pptx pwz "

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_f

    const/16 v0, 0x11

    goto/16 :goto_1

    :cond_f
    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->j()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v3

    goto/16 :goto_1

    :cond_10
    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->l()Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v3

    goto/16 :goto_1

    :cond_11
    move v0, v1

    goto/16 :goto_1
.end method

.method public final F()Z
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    const-string v1, "rc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    const-string v1, "sh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final G()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, " jpg gif png bmp jpeg "

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final H()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    const-string v2, ".tar.gz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, " tar.gz "

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final I()I
    .locals 1

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/cd;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final J()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    return v0
.end method

.method public final K()Lcom/speedsoftware/rootexplorer/cd;
    .locals 13

    new-instance v0, Lcom/speedsoftware/rootexplorer/cd;

    iget v1, p0, Lcom/speedsoftware/rootexplorer/cd;->x:I

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/cd;->z:Ljava/lang/String;

    iget-wide v5, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    iget-object v7, p0, Lcom/speedsoftware/rootexplorer/cd;->B:Ljava/util/Date;

    iget-boolean v8, p0, Lcom/speedsoftware/rootexplorer/cd;->D:Z

    iget-object v9, p0, Lcom/speedsoftware/rootexplorer/cd;->E:Ljava/lang/String;

    iget-object v10, p0, Lcom/speedsoftware/rootexplorer/cd;->F:Ljava/lang/String;

    iget-object v11, p0, Lcom/speedsoftware/rootexplorer/cd;->G:Ljava/lang/String;

    iget-object v12, p0, Lcom/speedsoftware/rootexplorer/cd;->H:Landroid/graphics/Bitmap;

    invoke-direct/range {v0 .. v12}, Lcom/speedsoftware/rootexplorer/cd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public final L()I
    .locals 5

    const/4 v0, 0x0

    const/16 v4, 0x77

    const/16 v3, 0x72

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    const/16 v0, 0x100

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    add-int/lit16 v0, v0, 0x80

    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    add-int/lit8 v0, v0, 0x20

    :cond_2
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_3

    add-int/lit8 v0, v0, 0x10

    :cond_3
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_1

    :goto_1
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_4

    add-int/lit8 v0, v0, 0x4

    :cond_4
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_5

    add-int/lit8 v0, v0, 0x2

    :cond_5
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_2

    :goto_2
    return v0

    :sswitch_0
    add-int/lit8 v0, v0, 0x40

    goto :goto_0

    :sswitch_1
    add-int/lit16 v0, v0, 0x840

    goto :goto_0

    :sswitch_2
    add-int/lit16 v0, v0, 0x800

    goto :goto_0

    :sswitch_3
    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    :sswitch_4
    add-int/lit16 v0, v0, 0x408

    goto :goto_1

    :sswitch_5
    add-int/lit16 v0, v0, 0x400

    goto :goto_1

    :sswitch_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :sswitch_7
    add-int/lit16 v0, v0, 0x201

    goto :goto_2

    :sswitch_8
    add-int/lit16 v0, v0, 0x200

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x53 -> :sswitch_2
        0x73 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x53 -> :sswitch_5
        0x73 -> :sswitch_4
        0x78 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x54 -> :sswitch_8
        0x74 -> :sswitch_7
        0x78 -> :sswitch_6
    .end sparse-switch
.end method

.method public final M()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->w:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->I:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->I:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/speedsoftware/rootexplorer/cd;->a(Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->E()I

    move-result v0

    sget-boolean v1, Lcom/speedsoftware/rootexplorer/cd;->d:Z

    if-eqz v1, :cond_4

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->x()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->M:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/speedsoftware/rootexplorer/cd;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->M:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->M:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->b:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cd;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->b:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cd;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/rootexplorer/cd;->N:I

    :cond_3
    :goto_1
    iget v0, p0, Lcom/speedsoftware/rootexplorer/cd;->N:I

    :cond_4
    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/ae;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->c:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->c:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/rootexplorer/cd;->N:I

    goto :goto_1
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/speedsoftware/rootexplorer/cd;->x:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/cd;->H:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/speedsoftware/rootexplorer/cd;->D:Z

    return-void
.end method

.method public final b(Lcom/speedsoftware/rootexplorer/dw;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->H:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->H:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/cd;->O()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/speedsoftware/rootexplorer/cd;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/cd;->P()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/speedsoftware/rootexplorer/cd;->a:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_3
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x32

    invoke-virtual {v0, v4, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v4

    if-eqz v4, :cond_6

    :try_start_2
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/dw;->a()Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/speedsoftware/rootexplorer/dw;->a(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_4

    :try_start_3
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/dw;->c()Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v1

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/dw;->b()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    :goto_1
    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    if-eqz p1, :cond_4

    :try_start_6
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/dw;->c()Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v1

    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/dw;->b()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz p1, :cond_5

    :try_start_8
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/dw;->c()Z
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v3

    if-eqz v3, :cond_5

    :try_start_9
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/dw;->b()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_5
    :goto_2
    :try_start_a
    throw v1
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catch_3
    move-exception v1

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_0

    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v1

    goto/16 :goto_0

    :cond_6
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-object v2, v1

    goto :goto_1

    :catch_5
    move-exception v2

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_0

    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_7

    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    :cond_7
    :goto_6
    throw v0

    :catch_7
    move-exception v3

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1

    :catch_9
    move-exception v1

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_a
    move-exception v1

    goto :goto_4

    :catch_b
    move-exception v2

    goto :goto_3
.end method

.method public final b(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->L:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->L:Ljava/lang/String;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-static {v0, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/sdcard/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/sdcard"

    invoke-static {v0, p1}, Lcom/speedsoftware/rootexplorer/cd;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/speedsoftware/rootexplorer/cd;->J:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/cd;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/cd;->v:Z

    return-void
.end method

.method public final c(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.speedsoftware.sqleditor"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    move v2, v0

    move v0, v1

    :goto_0
    const-string v3, "com.speedsoftware.rootexplorer_preferences"

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/speedsoftware/rootexplorer/cd;->b(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.speedsoftware.sqleditor"

    const-string v4, "com.speedsoftware.sqleditor.EditDatabase"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "permissions"

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/cd;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "make_readable_cmd"

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/cd;->S()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "make_writeable_cmd"

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/cd;->T()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "restore_permissions_cmd"

    invoke-direct {p0, p1}, Lcom/speedsoftware/rootexplorer/cd;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    return-object v0

    :cond_0
    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    move v2, v1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "sql_dont_ask"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/speedsoftware/rootexplorer/cd;->b(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/speedsoftware/rootexplorer/ViewDatabase;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "permissions"

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/cd;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "make_writeable_cmd"

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/cd;->T()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "restore_permissions_cmd"

    invoke-direct {p0, p1}, Lcom/speedsoftware/rootexplorer/cd;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/speedsoftware/rootexplorer/cd;->b(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "permissions"

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/cd;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "make_readable_cmd"

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/cd;->S()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "make_writeable_cmd"

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/cd;->T()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "restore_permissions_cmd"

    invoke-direct {p0, p1}, Lcom/speedsoftware/rootexplorer/cd;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->K()Lcom/speedsoftware/rootexplorer/cd;

    move-result-object v0

    return-object v0
.end method

.method public final d(Landroid/content/Context;)Landroid/content/Intent;
    .locals 6

    const/4 v5, -0x1

    invoke-virtual {p0, p1}, Lcom/speedsoftware/rootexplorer/cd;->b(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/cd;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/speedsoftware/rootexplorer/cd;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ne v2, v5, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " jpg gif png bmp jpeg "

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_2

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v3, " m4a wma mp3 mid xmf mxmf rtttl rtx ota imy ogg wav "

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_3

    const-string v2, "audio/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string v3, " 3gp 3g2 mp4 wmv avi flv m4v "

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_4

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    const-string v3, " doc docx dotx "

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_5

    const-string v2, "application/msword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    const-string v3, " xls xlsx xlt xltx "

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_6

    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_6
    const-string v3, " pps ppsx ppt pptx pwz "

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_7

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_7
    const-string v3, " pdf "

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_8

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_8
    const-string v3, " txt log csv xml abc acgi asm asp c c++ cc conf cpp css csv cxx dev el el f g h hh hlb htt htx idc jav java list log lst m mar p pas pl py rexx rt rtf rtx s sdml sgm sgml shtml spc talk tcl tcsh text tsv txt uri uu vcs wml xml zsh prop rc sh cfg ini "

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_9

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->F()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/speedsoftware/rootexplorer/DisplayText;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "permissions"

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/cd;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "edit_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_a
    const-string v3, " apk "

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_b

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, p1}, Lcom/speedsoftware/rootexplorer/cd;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->z:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "rwxrwxwrwx"

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/cd;->F:Ljava/lang/String;

    return-void
.end method

.method public final e(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/speedsoftware/rootexplorer/cd;->b(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/speedsoftware/rootexplorer/DisplayText;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "size"

    iget-wide v2, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "permissions"

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/cd;->z:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "chmod_value"

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/cd;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "owner"

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/cd;->F:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "group"

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/cd;->G:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method

.method public final e()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/cd;->G:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/speedsoftware/rootexplorer/cd;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/speedsoftware/rootexplorer/cd;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    iget-object v3, p1, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    iget-object v3, p1, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final f(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/speedsoftware/rootexplorer/cd;->e(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "edit_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public final f()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->B:Ljava/util/Date;

    return-object v0
.end method

.method public final g(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/speedsoftware/rootexplorer/cd;->b(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v0, 0x7f0800b7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cd;->z:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->z:Ljava/lang/String;

    return-void
.end method

.method public final g()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/speedsoftware/rootexplorer/cd;->v:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cd;->z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final h(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/speedsoftware/rootexplorer/cd;->f:Landroid/webkit/MimeTypeMap;

    invoke-virtual {p0, p1}, Lcom/speedsoftware/rootexplorer/cd;->b(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->K:Ljava/lang/String;

    return-void
.end method

.method public final h()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cd;->z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final i(Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x400

    :try_start_1
    new-array v0, v0, [B

    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    :cond_1
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v2

    :goto_0
    array-length v2, v3

    if-lt v0, v2, :cond_3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->w:Ljava/lang/String;

    return-void

    :cond_3
    :try_start_3
    aget-byte v2, v3, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_2
    const v0, 0x7f0800ba

    :try_start_4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v1, v0

    :goto_3
    const v0, 0x7f0800ba

    :try_start_6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    move-object v1, v0

    :goto_4
    const v0, 0x7f0800ba

    :try_start_8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v0

    if-eqz v1, :cond_2

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_5
    if-eqz v1, :cond_4

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_4
    :goto_6
    throw v0

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v0

    goto :goto_4

    :catch_9
    move-exception v0

    goto :goto_3

    :catch_a
    move-exception v0

    goto :goto_2
.end method

.method public final i(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/high16 v4, 0x4090000000000000L

    iget-wide v0, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const-string v0, "%.2fGB"

    new-array v1, v7, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    long-to-double v2, v2

    div-double/2addr v2, v4

    div-double/2addr v2, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->K:Ljava/lang/String;

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const-string v0, "%.2fMB"

    new-array v1, v7, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    long-to-double v2, v2

    div-double/2addr v2, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    const-string v0, "%.2fK"

    new-array v1, v7, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    long-to-double v2, v2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%d "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/speedsoftware/rootexplorer/cd;->A:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final i()Z
    .locals 2

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, " zip jar "

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/cd;->L:Ljava/lang/String;

    return-void
.end method

.method public final j()Z
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    const-string v1, ".tar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    const-string v1, ".tar.gz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    const-string v1, ".tgz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    const-string v1, ".tar.gz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    const-string v1, ".tgz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    const-string v1, ".rar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/cd;->D:Z

    return v0
.end method

.method public final p()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/rootexplorer/cd;->x:I

    return v0
.end method

.method public final q()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "/"

    goto :goto_0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->E:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->E:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->E:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cd;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cd;->C:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cd;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final t()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->E:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->E:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cd;->E:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final u()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_1
    const-string v0, "A"

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/cd;->y:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->F:Ljava/lang/String;

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->G:Ljava/lang/String;

    return-object v0
.end method

.method public final x()Z
    .locals 2

    iget v0, p0, Lcom/speedsoftware/rootexplorer/cd;->N:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final y()Z
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->I:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final z()Z
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cd;->H:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
