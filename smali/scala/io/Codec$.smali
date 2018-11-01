.class public final Lscala/io/Codec$;
.super Ljava/lang/Object;
.source "Codec.scala"


# static fields
.field public static final MODULE$:Lscala/io/Codec$;


# instance fields
.field private final ISO8859:Lscala/io/Codec;

.field private final UTF8:Lscala/io/Codec;

.field private volatile bitmap$0:Z

.field private final fallbackSystemCodec:Lscala/io/Codec;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/io/Codec$;

    invoke-direct {v0}, Lscala/io/Codec$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/io/Codec$;->MODULE$:Lscala/io/Codec$;

    invoke-static {p0}, Lscala/io/LowPriorityCodecImplicits$class;->$init$(Lscala/io/Codec$;)V

    .line 80
    new-instance v0, Lscala/io/Codec;

    const-string v1, "ISO-8859-1"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/io/Codec;-><init>(Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lscala/io/Codec$;->ISO8859:Lscala/io/Codec;

    .line 81
    new-instance v0, Lscala/io/Codec;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/io/Codec;-><init>(Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lscala/io/Codec$;->UTF8:Lscala/io/Codec;

    return-void
.end method

.method private fallbackSystemCodec$lzycompute()Lscala/io/Codec;
    .locals 1

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/io/Codec$;->bitmap$0:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lscala/io/LowPriorityCodecImplicits$class;->fallbackSystemCodec(Lscala/io/Codec$;)Lscala/io/Codec;

    move-result-object v0

    iput-object v0, p0, Lscala/io/Codec$;->fallbackSystemCodec:Lscala/io/Codec;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/io/Codec$;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/io/Codec$;->fallbackSystemCodec:Lscala/io/Codec;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public apply(Ljava/nio/charset/Charset;)Lscala/io/Codec;
    .locals 1
    .param p1, "charSet"    # Ljava/nio/charset/Charset;

    .prologue
    .line 93
    new-instance v0, Lscala/io/Codec;

    invoke-direct {v0, p1}, Lscala/io/Codec;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public defaultCharsetCodec()Lscala/io/Codec;
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/io/Codec$;->apply(Ljava/nio/charset/Charset;)Lscala/io/Codec;

    move-result-object v0

    return-object v0
.end method

.method public fallbackSystemCodec()Lscala/io/Codec;
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lscala/io/Codec$;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/io/Codec$;->fallbackSystemCodec:Lscala/io/Codec;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lscala/io/Codec$;->fallbackSystemCodec$lzycompute()Lscala/io/Codec;

    move-result-object v0

    goto :goto_0
.end method
