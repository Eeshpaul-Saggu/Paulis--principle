##Alabama
library(data.table)
Alabama <- fread("alabama.txt")
data = c(Alabama$V1, Alabama$V2, Alabama$V3, Alabama$V4, Alabama$V5, Alabama$V6, Alabama$V7, Alabama$V8, Alabama$V9, Alabama$V10,
         Alabama$V11, Alabama$V12, Alabama$V13, Alabama$V14, Alabama$V15, Alabama$V16, Alabama$V17)
View(data)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.test, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Alaska
library(data.table)
Alaska <- fread("Alaska.txt")
data = c(Alaska$V1, Alaska$V2, Alaska$V3, Alaska$V4, Alaska$V5, Alaska$V6, Alaska$V7, Alaska$V8, Alaska$V9, Alaska$V10,
         Alaska$V11, Alaska$V12, Alaska$V13, Alaska$V14, Alaska$V15, Alaska$V16, Alaska$V17)

ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)


##Arizona
library(data.table)
Arizona <- fread("Arizona.txt")
data = c(Arizona$V1, Arizona$V2, Arizona$V3, Arizona$V4, Arizona$V5, Arizona$V6, Arizona$V7, Arizona$V8, Arizona$V9, Arizona$V10,
         Arizona$V11, Arizona$V12, Arizona$V13, Arizona$V14, Arizona$V15, Arizona$V16, Arizona$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)


##Arkansas
library(data.table)
Arkansas <- fread("Arkansas.txt")
data = c(Arkansas$V1, Arkansas$V2, Arkansas$V3, Arkansas$V4, Arkansas$V5, Arkansas$V6, Arkansas$V7, Arkansas$V8, Arkansas$V9, Arkansas$V10,
         Arkansas$V11, Arkansas$V12, Arkansas$V13, Arkansas$V14, Arkansas$V15, Arkansas$V16, Arkansas$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)


##California
library(data.table)
California <- fread("California.txt")
data = c(California$V1, California$V2, California$V3, California$V4, California$V5, California$V6, California$V7, California$V8, California$V9, California$V10,
         California$V11, California$V12, California$V13, California$V14, California$V15, California$V16, California$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)


##Colorado
library(data.table)
Colorado <- fread("Colorado.txt")
data = c(Colorado$V1, Colorado$V2, Colorado$V3, Colorado$V4, Colorado$V5, Colorado$V6, Colorado$V7, Colorado$V8, Colorado$V9, Colorado$V10,
         Colorado$V11, Colorado$V12, Colorado$V13, Colorado$V14, Colorado$V15, Colorado$V16, Colorado$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)


##Connecticut
library(data.table)
Connecticut <- fread("Connecticut.txt")
data = c(Connecticut$V1, Connecticut$V2, Connecticut$V3, Connecticut$V4, Connecticut$V5, Connecticut$V6, Connecticut$V7, Connecticut$V8, Connecticut$V9, Connecticut$V10,
         Connecticut$V11, Connecticut$V12, Connecticut$V13, Connecticut$V14, Connecticut$V15, Connecticut$V16, Connecticut$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)


##Delaware
library(data.table)
Delaware <- fread("Delaware.txt")
data = c(Delaware$V1, Delaware$V2, Delaware$V3, Delaware$V4, Delaware$V5, Delaware$V6, Delaware$V7, Delaware$V8, Delaware$V9, Delaware$V10,
         Delaware$V11, Delaware$V12, Delaware$V13, Delaware$V14, Delaware$V15, Delaware$V16, Delaware$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)


##District_of_Columbia
library(data.table)
District_of_Columbia <- fread("District of Columbia.txt")
data = c(District_of_Columbia$V1, District_of_Columbia$V2, District_of_Columbia$V3, District_of_Columbia$V4, District_of_Columbia$V5, District_of_Columbia$V6, District_of_Columbia$V7, District_of_Columbia$V8, District_of_Columbia$V9, District_of_Columbia$V10,
         District_of_Columbia$V11, District_of_Columbia$V12, District_of_Columbia$V13, District_of_Columbia$V14, District_of_Columbia$V15, District_of_Columbia$V16, District_of_Columbia$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)


##Florida
library(data.table)
Florida <- fread("Florida.txt")
data = c(Florida$V1, Florida$V2, Florida$V3, Florida$V4, Florida$V5, Florida$V6, Florida$V7, Florida$V8, Florida$V9, Florida$V10,
         Florida$V11, Florida$V12, Florida$V13, Florida$V14, Florida$V15, Florida$V16, Florida$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Georgia
library(data.table)
Georgia <- fread("Georgia.txt")
data = c(Georgia$V1, Georgia$V2, Georgia$V3, Georgia$V4, Georgia$V5, Georgia$V6, Georgia$V7, Georgia$V8, Georgia$V9, Georgia$V10,
         Georgia$V11, Georgia$V12, Georgia$V13, Georgia$V14, Georgia$V15, Georgia$V16, Georgia$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Hawaii
library(data.table)
Hawaii <- fread("Hawaii.txt")
data = c(Hawaii$V1, Hawaii$V2, Hawaii$V3, Hawaii$V4, Hawaii$V5, Hawaii$V6, Hawaii$V7, Hawaii$V8, Hawaii$V9, Hawaii$V10,
         Hawaii$V11, Hawaii$V12, Hawaii$V13, Hawaii$V14, Hawaii$V15, Hawaii$V16, Hawaii$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Idaho
library(data.table)
Idaho <- fread("Idaho.txt")
data = c(Idaho$V1, Idaho$V2, Idaho$V3, Idaho$V4, Idaho$V5, Idaho$V6, Idaho$V7, Idaho$V8, Idaho$V9, Idaho$V10,
         Idaho$V11, Idaho$V12, Idaho$V13, Idaho$V14, Idaho$V15, Idaho$V16, Idaho$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Illinois
library(data.table)
Illinois <- fread("Illinois.txt")
data = c(Illinois$V1, Illinois$V2, Illinois$V3, Illinois$V4, Illinois$V5, Illinois$V6, Illinois$V7, Illinois$V8, Illinois$V9, Illinois$V10,
         Illinois$V11, Illinois$V12, Illinois$V13, Illinois$V14, Illinois$V15, Illinois$V16, Illinois$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Indiana
library(data.table)
Indiana <- fread("Indiana.txt")
data = c(Indiana$V1, Indiana$V2, Indiana$V3, Indiana$V4, Indiana$V5, Indiana$V6, Indiana$V7, Indiana$V8, Indiana$V9, Indiana$V10,
         Indiana$V11, Indiana$V12, Indiana$V13, Indiana$V14, Indiana$V15, Indiana$V16, Indiana$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Iowa
library(data.table)
Iowa <- fread("Iowa.txt")
data = c(Iowa$V1, Iowa$V2, Iowa$V3, Iowa$V4, Iowa$V5, Iowa$V6, Iowa$V7, Iowa$V8, Iowa$V9, Iowa$V10,
         Iowa$V11, Iowa$V12, Iowa$V13, Iowa$V14, Iowa$V15, Iowa$V16, Iowa$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Kansas
library(data.table)
Kansas <- fread("Kansas.txt")
data = c(Kansas$V1, Kansas$V2, Kansas$V3, Kansas$V4, Kansas$V5, Kansas$V6, Kansas$V7, Kansas$V8, Kansas$V9, Kansas$V10,
         Kansas$V11, Kansas$V12, Kansas$V13, Kansas$V14, Kansas$V15, Kansas$V16, Kansas$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Kentucky
library(data.table)
Kentucky <- fread("Kentucky.txt")
data = c(Kentucky$V1, Kentucky$V2, Kentucky$V3, Kentucky$V4, Kentucky$V5, Kentucky$V6, Kentucky$V7, Kentucky$V8, Kentucky$V9, Kentucky$V10,
         Kentucky$V11, Kentucky$V12, Kentucky$V13, Kentucky$V14, Kentucky$V15, Kentucky$V16, Kentucky$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Louisiana
library(data.table)
Louisiana <- fread("Louisiana.txt")
data = c(Louisiana$V1, Louisiana$V2, Louisiana$V3, Louisiana$V4, Louisiana$V5, Louisiana$V6, Louisiana$V7, Louisiana$V8, Louisiana$V9, Louisiana$V10,
         Louisiana$V11, Louisiana$V12, Louisiana$V13, Louisiana$V14, Louisiana$V15, Louisiana$V16, Louisiana$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Maine
library(data.table)
Maine <- fread("Maine.txt")
data = c(Maine$V1, Maine$V2, Maine$V3, Maine$V4, Maine$V5, Maine$V6, Maine$V7, Maine$V8, Maine$V9, Maine$V10,
         Maine$V11, Maine$V12, Maine$V13, Maine$V14, Maine$V15, Maine$V16, Maine$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Maryland
library(data.table)
Maryland <- fread("Maryland.txt")
data = c(Maryland$V1, Maryland$V2, Maryland$V3, Maryland$V4, Maryland$V5, Maryland$V6, Maryland$V7, Maryland$V8, Maryland$V9, Maryland$V10,
         Maryland$V11, Maryland$V12, Maryland$V13, Maryland$V14, Maryland$V15, Maryland$V16, Maryland$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Massachusetts
library(data.table)
Massachusetts <- fread("Massachusetts.txt")
data = c(Massachusetts$V1, Massachusetts$V2, Massachusetts$V3, Massachusetts$V4, Massachusetts$V5, Massachusetts$V6, Massachusetts$V7, Massachusetts$V8, Massachusetts$V9, Massachusetts$V10,
         Massachusetts$V11, Massachusetts$V12, Massachusetts$V13, Massachusetts$V14, Massachusetts$V15, Massachusetts$V16, Massachusetts$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)


##Michigan
library(data.table)
Michigan <- fread("Michigan.txt")
data = c(Michigan$V1, Michigan$V2, Michigan$V3, Michigan$V4, Michigan$V5, Michigan$V6, Michigan$V7, Michigan$V8, Michigan$V9, Michigan$V10,
         Michigan$V11, Michigan$V12, Michigan$V13, Michigan$V14, Michigan$V15, Michigan$V16, Michigan$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)



##Minnesota
library(data.table)
Minnesota <- fread("Minnesota.txt")
data = c(Minnesota$V1, Minnesota$V2, Minnesota$V3, Minnesota$V4, Minnesota$V5, Minnesota$V6, Minnesota$V7, Minnesota$V8, Minnesota$V9, Minnesota$V10,
         Minnesota$V11, Minnesota$V12, Minnesota$V13, Minnesota$V14, Minnesota$V15, Minnesota$V16, Minnesota$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Mississippi
library(data.table)
Mississippi <- fread("Mississippi.txt")
data = c(Mississippi$V1, Mississippi$V2, Mississippi$V3, Mississippi$V4, Mississippi$V5, Mississippi$V6, Mississippi$V7, Mississippi$V8, Mississippi$V9, Mississippi$V10,
         Mississippi$V11, Mississippi$V12, Mississippi$V13, Mississippi$V14, Mississippi$V15, Mississippi$V16, Mississippi$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Missouri
library(data.table)
Missouri <- fread("Missouri.txt")
data = c(Missouri$V1, Missouri$V2, Missouri$V3, Missouri$V4, Missouri$V5, Missouri$V6, Missouri$V7, Missouri$V8, Missouri$V9, Missouri$V10,
         Missouri$V11, Missouri$V12, Missouri$V13, Missouri$V14, Missouri$V15, Missouri$V16, Missouri$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Montana
library(data.table)
Montana <- fread("Montana.txt")
data = c(Montana$V1, Montana$V2, Montana$V3, Montana$V4, Montana$V5, Montana$V6, Montana$V7, Montana$V8, Montana$V9, Montana$V10,
         Montana$V11, Montana$V12, Montana$V13, Montana$V14, Montana$V15, Montana$V16, Montana$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Nebraska
library(data.table)
Nebraska <- fread("Nebraska.txt")
data = c(Nebraska$V1, Nebraska$V2, Nebraska$V3, Nebraska$V4, Nebraska$V5, Nebraska$V6, Nebraska$V7, Nebraska$V8, Nebraska$V9, Nebraska$V10,
         Nebraska$V11, Nebraska$V12, Nebraska$V13, Nebraska$V14, Nebraska$V15, Nebraska$V16, Nebraska$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Nevada
library(data.table)
Nevada <- fread("Nevada.txt")
data = c(Nevada$V1, Nevada$V2, Nevada$V3, Nevada$V4, Nevada$V5, Nevada$V6, Nevada$V7, Nevada$V8, Nevada$V9, Nevada$V10,
         Nevada$V11, Nevada$V12, Nevada$V13, Nevada$V14, Nevada$V15, Nevada$V16, Nevada$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##New Hampshire
library(data.table)
NewHampshire <- fread("New Hampshire.txt")
data = c(NewHampshire$V1, NewHampshire$V2, NewHampshire$V3, NewHampshire$V4, NewHampshire$V5, NewHampshire$V6, NewHampshire$V7, NewHampshire$V8, NewHampshire$V9, NewHampshire$V10,
         NewHampshire$V11, NewHampshire$V12, NewHampshire$V13, NewHampshire$V14, NewHampshire$V15, NewHampshire$V16, NewHampshire$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##New_Jersey
library(data.table)
New_Jersey <- fread("New Jersey.txt")
data = c(New_Jersey$V1, New_Jersey$V2, New_Jersey$V3, New_Jersey$V4, New_Jersey$V5, New_Jersey$V6, New_Jersey$V7, New_Jersey$V8, New_Jersey$V9, New_Jersey$V10,
         New_Jersey$V11, New_Jersey$V12, New_Jersey$V13, New_Jersey$V14, New_Jersey$V15, New_Jersey$V16, New_Jersey$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##New Mexico
library(data.table)
New_Mexico <- fread("New Mexico.txt")
data = c(New_Mexico$V1, New_Mexico$V2, New_Mexico$V3, New_Mexico$V4, New_Mexico$V5, New_Mexico$V6, New_Mexico$V7, New_Mexico$V8, New_Mexico$V9, New_Mexico$V10,
         New_Mexico$V11, New_Mexico$V12, New_Mexico$V13, New_Mexico$V14, New_Mexico$V15, New_Mexico$V16, New_Mexico$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##New York
library(data.table)
New_York <- fread("New York.txt")
data = c(New_York$V1, New_York$V2, New_York$V3, New_York$V4, New_York$V5, New_York$V6, New_York$V7, New_York$V8, New_York$V9, New_York$V10,
         New_York$V11, New_York$V12, New_York$V13, New_York$V14, New_York$V15, New_York$V16, New_York$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##North Carolina
library(data.table)
North_Carolina <- fread("North_Carolina.txt")
data = c(North_Carolina$V1, North_Carolina$V2, North_Carolina$V3, North_Carolina$V4, North_Carolina$V5, North_Carolina$V6, North_Carolina$V7, North_Carolina$V8, North_Carolina$V9, North_Carolina$V10,
         North_Carolina$V11, North_Carolina$V12, North_Carolina$V13, North_Carolina$V14, North_Carolina$V15, North_Carolina$V16, North_Carolina$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##North Dakota
library(data.table)
North_Dakota <- fread("North_Dakota.txt")
data = c(North_Dakota$V1, North_Dakota$V2, North_Dakota$V3, North_Dakota$V4, North_Dakota$V5, North_Dakota$V6, North_Dakota$V7, North_Dakota$V8, North_Dakota$V9, North_Dakota$V10,
         North_Dakota$V11, North_Dakota$V12, North_Dakota$V13, North_Dakota$V14, North_Dakota$V15, North_Dakota$V16, North_Dakota$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Ohio
library(data.table)
Ohio <- fread("Ohio.txt")
data = c(Ohio$V1, Ohio$V2, Ohio$V3, Ohio$V4, Ohio$V5, Ohio$V6, Ohio$V7, Ohio$V8, Ohio$V9, Ohio$V10,
         Ohio$V11, Ohio$V12, Ohio$V13, Ohio$V14, Ohio$V15, Ohio$V16, Ohio$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Oklahama
library(data.table)
Oklahama <- fread("Oklahama.txt")
data = c(Oklahama$V1, Oklahama$V2, Oklahama$V3, Oklahama$V4, Oklahama$V5, Oklahama$V6, Oklahama$V7, Oklahama$V8, Oklahama$V9, Oklahama$V10,
         Oklahama$V11, Oklahama$V12, Oklahama$V13, Oklahama$V14, Oklahama$V15, Oklahama$V16, Oklahama$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Oregon
library(data.table)
Oregon <- fread("Oregon.txt")
data = c(Oregon$V1, Oregon$V2, Oregon$V3, Oregon$V4, Oregon$V5, Oregon$V6, Oregon$V7, Oregon$V8, Oregon$V9, Oregon$V10,
         Oregon$V11, Oregon$V12, Oregon$V13, Oregon$V14, Oregon$V15, Oregon$V16, Oregon$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Pennsylvania
library(data.table)
Pennsylvania <- fread("Pennsylvania.txt")
data = c(Pennsylvania$V1, Pennsylvania$V2, Pennsylvania$V3, Pennsylvania$V4, Pennsylvania$V5, Pennsylvania$V6, Pennsylvania$V7, Pennsylvania$V8, Pennsylvania$V9, Pennsylvania$V10,
         Pennsylvania$V11, Pennsylvania$V12, Pennsylvania$V13, Pennsylvania$V14, Pennsylvania$V15, Pennsylvania$V16, Pennsylvania$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Rhode Island
library(data.table)
Rhode_Island <- fread("Rhode_Island.txt")
data = c(Rhode_Island$V1, Rhode_Island$V2, Rhode_Island$V3, Rhode_Island$V4, Rhode_Island$V5, Rhode_Island$V6, Rhode_Island$V7, Rhode_Island$V8, Rhode_Island$V9, Rhode_Island$V10,
         Rhode_Island$V11, Rhode_Island$V12, Rhode_Island$V13, Rhode_Island$V14, Rhode_Island$V15, Rhode_Island$V16, Rhode_Island$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##South Carolina
library(data.table)
South_carolina <- fread("South_carolina.txt")
data = c(South_carolina$V1, South_carolina$V2, South_carolina$V3, South_carolina$V4, South_carolina$V5, South_carolina$V6, South_carolina$V7, South_carolina$V8, South_carolina$V9, South_carolina$V10,
         South_carolina$V11, South_carolina$V12, South_carolina$V13, South_carolina$V14, South_carolina$V15, South_carolina$V16, South_carolina$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##South Dakota
library(data.table)
South_Dakota <- fread("South_Dakota.txt")
data = c(South_Dakota$V1, South_Dakota$V2, South_Dakota$V3, South_Dakota$V4, South_Dakota$V5, South_Dakota$V6, South_Dakota$V7, South_Dakota$V8, South_Dakota$V9, South_Dakota$V10,
         South_Dakota$V11, South_Dakota$V12, South_Dakota$V13, South_Dakota$V14, South_Dakota$V15, South_Dakota$V16, South_Dakota$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Tennessee
library(data.table)
Tennessee <- fread("Tennessee.txt")
data = c(Tennessee$V1, Tennessee$V2, Tennessee$V3, Tennessee$V4, Tennessee$V5, Tennessee$V6, Tennessee$V7, Tennessee$V8, Tennessee$V9, Tennessee$V10,
         Tennessee$V11, Tennessee$V12, Tennessee$V13, Tennessee$V14, Tennessee$V15, Tennessee$V16, Tennessee$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Texas
library(data.table)
Texas <- fread("Texas.txt")
data = c(Texas$V1, Texas$V2, Texas$V3, Texas$V4, Texas$V5, Texas$V6, Texas$V7, Texas$V8, Texas$V9, Texas$V10,
         Texas$V11, Texas$V12, Texas$V13, Texas$V14, Texas$V15, Texas$V16, Texas$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Utah
library(data.table)
Utah <- fread("Utah.txt")
data = c(Utah$V1, Utah$V2, Utah$V3, Utah$V4, Utah$V5, Utah$V6, Utah$V7, Utah$V8, Utah$V9, Utah$V10,
         Utah$V11, Utah$V12, Utah$V13, Utah$V14, Utah$V15, Utah$V16, Utah$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Vermont
library(data.table)
Vermont <- fread("Vermont.txt")
data = c(Vermont$V1, Vermont$V2, Vermont$V3, Vermont$V4, Vermont$V5, Vermont$V6, Vermont$V7, Vermont$V8, Vermont$V9, Vermont$V10,
         Vermont$V11, Vermont$V12, Vermont$V13, Vermont$V14, Vermont$V15, Vermont$V16, Vermont$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Virginia
library(data.table)
Virginia <- fread("Virginia.txt")
data = c(Virginia$V1, Virginia$V2, Virginia$V3, Virginia$V4, Virginia$V5, Virginia$V6, Virginia$V7, Virginia$V8, Virginia$V9, Virginia$V10,
         Virginia$V11, Virginia$V12, Virginia$V13, Virginia$V14, Virginia$V15, Virginia$V16, Virginia$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Washington
library(data.table)
Washington <- fread("Washington.txt")
data = c(Washington$V1, Washington$V2, Washington$V3, Washington$V4, Washington$V5, Washington$V6, Washington$V7, Washington$V8, Washington$V9, Washington$V10,
         Washington$V11, Washington$V12, Washington$V13, Washington$V14, Washington$V15, Washington$V16, Washington$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##West Virginia
library(data.table)
West_Virginia <- fread("West_Virginia.txt")
data = c(West_Virginia$V1, West_Virginia$V2, West_Virginia$V3, West_Virginia$V4, West_Virginia$V5, West_Virginia$V6, West_Virginia$V7, West_Virginia$V8, West_Virginia$V9, West_Virginia$V10,
         West_Virginia$V11, West_Virginia$V12, West_Virginia$V13, West_Virginia$V14, West_Virginia$V15, West_Virginia$V16, West_Virginia$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Wisconsin
library(data.table)
Wisconsin <- fread("Wisconsin.txt")
data = c(Wisconsin$V1, Wisconsin$V2, Wisconsin$V3, Wisconsin$V4, Wisconsin$V5, Wisconsin$V6, Wisconsin$V7, Wisconsin$V8, Wisconsin$V9, Wisconsin$V10,
         Wisconsin$V11, Wisconsin$V12, Wisconsin$V13, Wisconsin$V14, Wisconsin$V15, Wisconsin$V16, Wisconsin$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

##Wyoming
library(data.table)
Wyoming <- fread("Wyoming.txt")
data = c(Wyoming$V1, Wyoming$V2, Wyoming$V3, Wyoming$V4, Wyoming$V5, Wyoming$V6, Wyoming$V7, Wyoming$V8, Wyoming$V9, Wyoming$V10,
         Wyoming$V11, Wyoming$V12, Wyoming$V13, Wyoming$V14, Wyoming$V15, Wyoming$V16, Wyoming$V17)
ts.data=ts(data,frequency = 12, start=c(1999,1))
plot(ts.data)
dim(as.matrix(ts.data))

data.train=window(ts.data, start=c(1999,1), end=c(2015,12))
plot(data.train)
dim(as.matrix(data.train))

library(forecast)
arima1=auto.arima(data.train, trace = TRUE, test="kpss", ic="bic")
arima1$coeff
summary(arima1)
confint(arima1)
arima.forecast=forecast.Arima(arima1, h=24)
arima.forecast
plot(arima.forecast, xlab = "years", ylab = "deaths")

library(TSPred)
plotarimapred(data.train, arima1, xlim=c(2016, 2017), range.percent = 0.05)

