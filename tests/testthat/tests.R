x <- 1:10
attribute.lst <- list(dim=c(2,5))
x <- AddAttr(x,attribute.lst)
x
attribute.lst <- list(dim=c(5,2))
x <- AddAttr(x,attribute.lst)
x <- AddAttr(x,attribute.lst,overwrite.bln=TRUE)

CheckFilePath(path.pth="my/path/to/my/file.txt")
CheckFilePath(path.pth=NULL,fileName.chr="file", format.chr="txt")

filePath.pth <- "my/path/to/my/file.txt"
GetFileExtension(path.pth=filePath.pth)

GetFileName(path.pth=filePath.pth, ext.bln=FALSE)
GetFileName(path.pth=filePath.pth, ext.bln=TRUE)

GetHelper(
function(x,y,z, help.bln=F){
# Helper
#Na. my_fun
#De. A function that do the mean
#Us. my_fun(x,y,z)
#Ar. x (numeric, integer)
#Ar. y (numeric, integer)
#Ar. z (numeric, integer)
#Va. the mean of x, y and z
#Ex. my_fun(1,3,5)
if(help.bln){return(cat(GetHelper(sys.call())))}
# Run
return(mean(c(x,y,z)))
}
)

file.create("test.file", showWarnings = TRUE)
IsPath("test.file")
IsPath("test.file2")
unlink("test.file")

NotIn("A", c("A","B","C"))
NotIn("A", c("B","C","D"))

start.tim <- Sys.time()
for(i in seq_len(10000)){
ShowLoading(start.tim, i , 10000)
}


start.tim <- Sys.time()
for(i in seq_len(10000)){
Sys.sleep(3)
ShowLoading(start.tim, i , 10000)
if (i==3){
break
}
}

Versioning()
df1 <- data.frame(a = c(1:5), b = c(6:10))
df2 <- data.frame(a = c(11:15), b = c(16:20), c = LETTERS[1:5])
BindFillRows(df1,df2)
BindFillRows(list(df1,df2))


i=c(1,1,2,2,3,3,4,4,4,4)
j=c(1,4,2,5,1,4,2,3,4,5)
x=c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
mat.spm = Matrix::sparseMatrix(i=i, j=j, x=x, dims=c(5,5))
mat.spm
meltedMat.tbl <- MeltSpm(mat.spm)
meltedMat.tbl[order(meltedMat.tbl$i),]

mat.mtx = matrix(1:25,5,5)
PadMtx(mat.mtx=mat.mtx, padSize.num=1, value.num=0, side.chr=c('top','bot','right','left') )
PadMtx(mat.mtx=mat.mtx, padSize.num=1, value.num=NULL, side.chr=c('top','bot','right','left') )
PadMtx(mat.mtx=mat.mtx, padSize.num=1, value.num=0, side.chr=c('right','left') )
PadMtx(mat.mtx=mat.mtx, padSize.num=1, value.num=0, side.chr=c('top') )

first.rle = rle(c("A","A","B"))
second.rle = rle(c("A","B","B"))
ReduceRun(first.rle=first.rle, second.rle=second.rle, reduceFun.chr="paste", sep="_" )
first.rle = S4Vectors::Rle(c(1,2,3))
second.rle = S4Vectors::Rle(c(5,5,5))
ReduceRun(first.rle=first.rle, second.rle=second.rle, reduceFun.chr="sum")

matrice.mtx <- matrix(0,11,11)
matrice.mtx[which(as.logical(1:(11*11)%%2))] <- 1:ceiling((11*11)/2)
matrice.mtx[2,] <- 100
matrice.mtx[,7] <- 200
matrice.mtx
ResizeMatrix(matrice.mtx=matrice.mtx, newDim.num=c(7,7))
ResizeMatrix(matrice.mtx=matrice.mtx, newDim.num=c(13,13))

set.seed(123)
mat.spm = as(matrix(floor(runif(7*13,0,2)),7,13), "dgCMatrix")
mat.spm
Rise0(mat.spm=mat.spm, which.ndx=c(1,3,6,10,12))
Rise0(mat.spm=mat.spm, coord.dtf=data.frame(i=c(1,5,3), j=c(1,2,3) ) )
Rise0(mat.spm=mat.spm)

my_lst <- list(
first=list("A1","B1","C1"),
second=list("A2","B2"),
third=list(NULL,"B3")
)
TransposeList(my_lst)


myString <- "mean(c(2,4,NA), na.rm=TRUE)"
WrapFunction("mean(c(2,4,NA), na.rm=TRUE)")
myResult <- WrapFunction(myString)
myString_2 <- "function(X){mean(X, na.rm=TRUE)}"
WrapFunction(myString_2)
myFunction <- WrapFunction(myString_2)
myFunction(c(1,2,3))
set.seed(981643)
mat.mtx <- rnorm(10000,50,10)**3 %>% matrix(.,100,100)
BoxBlur(mat.mtx)

set.seed(31415)
x.num <- rnorm(100,50,200)
BreakVector(x.num=x.num, n.num=9)
BreakVector(x.num=x.num, min.num=-400, center.num=58.34, max.num=600, n.num=9, method.chr="linear")
BreakVector(x.num=x.num, center.num=58.34, n.num=9, method.chr="linear")
BreakVector(x.num=x.num, n.num=9, method.chr="density")

set.seed(542972)
x.num <- rnbinom(1000, 1, 0.01)
CbrtNorm(x.num, abs(min(x.num)))

x.num = 1:10
y.num = 1/sqrt(x.num)
elbow = FindElbow(x.num, y.num)

Gauss(x=1)
Gauss(x=1,y=2)

GaussBox( scale.chr="none")
GaussBox( scale.chr="1")
GaussBox( scale.chr="int")

GaussKernel(scale.chr=c("none"))
GaussKernel(scale.chr=c("1"))
GaussKernel(scale.chr=c("int"))

set.seed(20071)
n <- 100
y.num <- sin(seq(0, 5*pi, length.out = n)) + rnorm(n=n, mean = 0, sd=0.1)
y.num[sample(1:n,round(0.5*n))] <- NA
InterpolateNA(y.num,"spline")
InterpolateNA(y.num,"linear")

set.seed(1111)
x.num <- rnorm(1000)
x.num <- sort(x.num)
IqrThreshold(x.num, bounds.chr="lower")
IqrThreshold(x.num, bounds.chr="both")
IqrThreshold(x.num, bounds.chr="upper")

set.seed(542972)
x.num <- rnbinom(1000, 1, 0.01)
Log2Norm(x.num, abs(min(x.num)))


set.seed(542972)
MedianSkewness(rnbinom(10000, 1, 0.01))

set.seed(542972)
x.num <- rnbinom(1000, 1, 0.01)
Normalize(x.num)

Plus(c(1,2,3))
Plus(c(1,2,NA))
Plus(c(NA,NA,NA))


set.seed(1111)
x.num <- 0:100
x.num <- sort(x.num)
QtlThreshold(x.num, prct.num=5, bounds.chr="lower")
QtlThreshold(x.num, prct.num=5, bounds.chr="both")
QtlThreshold(x.num, prct.num=5, bounds.chr="upper")

set.seed(655213)
x.num <- rnorm(500,500)
MinMaxScale(x.num)
MeanScale(x.num)
UnitLengthScale(x.num)
RobustScalarScale(x.num)

set.seed(1111)
x.num <- rnorm(1000)
x.num <- sort(x.num)
x.num
SdThreshold(x.num, sdThreshold.num=2, bounds.chr="lower")
SdThreshold(x.num, sdThreshold.num=2, bounds.chr="both")
SdThreshold(x.num, sdThreshold.num=2, bounds.chr="upper")

set.seed(542972)
x.num <- rnbinom(1000, 1, 0.01)
SqrtNorm(x.num, abs(min(x.num)))

set.seed(1111)
x.num = rnorm(1000)
x.num = sort(x.num)
SdThreshold(x.num)
TrimOutliers(x.num)[990:1000]
TrimOutliers(x.num, clip=TRUE)[990:1000]

Brighten("#ebb0107f",alpha.bln=TRUE)

Col2Hex(c(43.8,0.873,0.492,0.498),alpha.bln=TRUE)

Col2Hsl("#ebb0107f",alpha.bln=TRUE)

Col2Rgb(c("green","red"),alpha.bln=TRUE)

Colorize("#ebb0107f",alpha.bln=TRUE)

ConvertColorFormat("#ebb0107f", alpha.bln=TRUE, format.str="Rgb")
ConvertColorFormat("#ebb0107f", alpha.bln=TRUE, format.str="Hsl")
ConvertColorFormat(c(235,176,16,127), alpha.bln=TRUE, format.str="Hex")
ConvertColorFormat(c(235,176,16,127), alpha.bln=TRUE, format.str="Hsl")
ConvertColorFormat(c(43.8,0.873,0.492,0.498), alpha.bln=TRUE, format.str="Rgb")
ConvertColorFormat(c(43.8,0.873,0.492,0.498), alpha.bln=TRUE, format.str="Hex")

Darken("#ebb0107f",alpha.bln=TRUE)

GetColorFormat("#ebb0107f")
GetColorFormat(c(235,176,16,127))
GetColorFormat(c(43.8,0.873,0.492,0.498))
GetColorFormat("green")

pal <- Hue(paletteLength.num=5)
ggPalette(pal)

Hex2Hsl("#ebb0107f",alpha.bln=TRUE)

Hex2Rgb("#ebb0107f",alpha.bln=TRUE)

Hsl2Hex(c(43.8,0.873,0.492,0.498),alpha.bln=TRUE)

IsCol("red")
IsCol("#FFFFFF")
IsCol(c(125,125,125))
IsCol(c(43.8,0.873,0.492))

IsHex("red")
IsHex("#FFFFFF")
IsHex(c(125,125,125))
IsHex(c(43.8,0.873,0.492))

IsHsl("red")
IsHsl("#FFFFFF")
IsHsl(c(125,125,125))
IsHsl(c(43.8,0.873,0.492))

IsRgb("red")
IsRgb("#FFFFFF")
IsRgb(c(125,125,125))
IsRgb(c(43.8,0.873,0.492))

MutateColorParameter(
color.col="#ebb0107f",
operation.str="+",
parameter.str="light",
alpha.bln=TRUE,
prctMutation.num=0.2
)

MutateColorParameter(
color.col="#ebb0107f",
operation.str="-",
parameter.str="light",
alpha.bln=TRUE,
prctMutation.num=0.2
)

MutateColorParameter(
color.col="#ebb0107f",
operation.str="*",
parameter.str="light",
alpha.bln=TRUE,
prctMutation.num=0.2
)

MutateColorParameter(
color.col="#ebb0107f",
operation.str="/",
parameter.str="light",
alpha.bln=TRUE,
prctMutation.num=0.2
)

MutateColorParameter(
color.col="#ebb0107f",
operation.str="%*%",
parameter.str="light",
alpha.bln=TRUE,
prctMutation.num=0.2
)


MutateColorParameter(
color.col="#ebb0107f",
operation.str="%/%",
parameter.str="light",
alpha.bln=TRUE,
prctMutation.num=0.2
)


YlGnBu(9)

YlOrBr(9)

YlOrRd(9)

PuBuGn(9)

YlGn(9)

OrRd(9)

BuGn(9)

GnBu(9)

BuPu(9)

PuBu(9)

RdPu(9)

PuRd(9)

Greys(9)

Oranges(9)

Reds(9)

Purples(9)

Blues(9)

Greens(9)

RdBu(9)

RdBu(9)

RdYlBu(9)

RdYlGn(9)

PuOr(9)

PiYg(9)

PrGn(9)

BrBG(9)

Spectral(9)

magma(9)

inferno(9)

plasma(9)

viridis(9)

cividis(9)

rocket(9)

mako(9)

turbo(9)

Pastelize("#ebb0107f",alpha.bln=TRUE)

Rgb2Hex(c(235,176,16,127),alpha.bln=TRUE)

Rgb2Hsl(c(235,176,16,127),alpha.bln=TRUE)

Tarnished("#ebb0107f",alpha.bln=TRUE)
