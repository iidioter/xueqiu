.class final Landroid/support/v7/widget/o;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v7/widget/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:I

.field c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1903
    new-instance v0, Landroid/support/v7/widget/o$1;

    invoke-direct {v0}, Landroid/support/v7/widget/o$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/o;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1869
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1872
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/o;->a:I

    .line 1873
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/o;->b:I

    .line 1874
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/o;->c:Z

    .line 1875
    return-void

    .line 1874
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v7/widget/o;)V
    .locals 1

    .prologue
    .line 1877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1878
    iget v0, p1, Landroid/support/v7/widget/o;->a:I

    iput v0, p0, Landroid/support/v7/widget/o;->a:I

    .line 1879
    iget v0, p1, Landroid/support/v7/widget/o;->b:I

    iput v0, p0, Landroid/support/v7/widget/o;->b:I

    .line 1880
    iget-boolean v0, p1, Landroid/support/v7/widget/o;->c:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/o;->c:Z

    .line 1881
    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    .prologue
    .line 1884
    iget v0, p0, Landroid/support/v7/widget/o;->a:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 1893
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1898
    iget v0, p0, Landroid/support/v7/widget/o;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1899
    iget v0, p0, Landroid/support/v7/widget/o;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1900
    iget-boolean v0, p0, Landroid/support/v7/widget/o;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1901
    return-void

    .line 1900
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
