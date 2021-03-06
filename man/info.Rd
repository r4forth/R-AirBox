\name{info}
\alias{info}
\title{
Basic analysis of airbox data
}
\description{
\code{info} is used to showing the states of online airbox devices. By inputing the data frame produced by \code{getData}, this function will output two figures. Figure one shows the number of distinct onlin airbox devices on each day. And figure two shows the number of measurement data for each airbox.
}
\usage{
\code{info(mydata)}
}
\arguments{
  \item{mydata}{
A data frame that is generated by the function \code{\link{getData}} or a data frame that has the construcion needed for analyze. The format of the contents and the column names of the data frame should be the same as the data which is provided in the package. The dataset which can be analysis by \code{info} should include following contents: (1)device_id(the id of airbox devices) (2)Date(in the format of yyyy-mm-dd) (3)Time(in the format of hr:min:sec) (4)concentration of PM2.5, PM10 and PM1 (5)Temperature (6)Humidity (7)location of airbox devices (latitude and longitude)
}
}
\value{
   \code{info} returns two plots. The plot on the top is titled "Distinct Onlin Airbox Devices on Each Day", which shows the number of distinct onlin airbox devices on each day. And the plot on the bottom is titled "Contribution of Devices Numerically sorted", which shows the number of measurement data for each airbox. The details about the explanation of the variables in the plots are given under 'Details'
}
\details{
"Distinct Onlin Airbox Devices on Each Day"
Devices that return more than half of the maximum amount of returned data over the course of a day are considered as distinct online airbox devices.
The x-axis of the plot is the dates which has been selected by the user. And the y-axis is the number of the distinct online devices.
"Contribution of Devices Numerically sorted"
The x-axis of this plot is the serial number which are sequence numbers from 1 to the total amount of the airbox devices. And the y-axis is the number of data measured by each airbox device.
}
\seealso{
\code{\link{getData}} to select the airbox data. Or see \code{wholedata} which is provide in the package to know the constrction of the dataset.
\code{\link{week_day}} to show the boxplot for the concentration of PM2.5.
}
\examples{
mydata <- getData(data="2017-01")
info(mydata = mydata)
}
