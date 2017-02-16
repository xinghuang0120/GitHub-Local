readCensus <- function() {
  urlToRead <- "http://www2.census.gov/programs-surveys/popest/tables/2010-2011/state/totals/nst-est2011-01.csv"
  #do the basic cleanup
  testFrame <- read.csv(url(urlToRead))
  testFrame<-testFrame[-1:-8,]
  testFrame<-testFrame[,1:5]
  testFrame$stateName <- testFrame[,1]
  testFrame<-testFrame[,-1]
  testFrame<-testFrame[-52:-58,]
  #remove the ‘dot’ from the state name
  testFrame$stateName <- gsub("\\.","",testFrame$stateName)
  #convert columns to numbers and rename columns
  testFrame$april10census <-Numberize(testFrame$X)
  testFrame$april10base <-Numberize(testFrame$X.1)
  testFrame$july10pop <-Numberize(testFrame$X.2)
  testFrame$july11pop <-Numberize(testFrame$X.3)
  testFrame <- testFrame[,-1:-4]
  #remove the old rownames, which are now confusing
  rownames(testFrame) <- NULL
  return(testFrame)
}

Numberize <- function(inputVector)
{
  # Get rid of commas
  inputVector<-gsub(",","", inputVector)
  # Get rid of spaces
  inputVector<-gsub(" ","", inputVector)
  return(as.numeric(inputVector))
}

dfStates <- readCensus()
dfStates <- dfStates[dfStates$stateName != "District of Columbia", ]
dfStates$region <- state.region
dfStates$stateName <- tolower(dfStates$stateName)
dfStates$popChange <- dfStates$july11pop - dfStates$july10pop
dfStates$percentChange <- dfStates$popChange/dfStates$july10pop * 100
us <- map_data("state")
ggplot(dfStates, aes(map_id = stateName)) + geom_map(map = us, aes(fill=dfStates$july10pop)) +
  expand_limits(x = us$long, y = us$lat) +
  coord_map() + 
  ggtitle("state population")

g <- ggplot(dfStates, aes(x=popChange, y=percentChange))
g <- g + geom_point(aes(size=july11pop, color=july11pop))
g

names(dfStates)
names(dfStates)[[2]]


ggplot(dfStates, aes(map_id = stateName))  +
  geom_map(map = us,
           aes(fill=dfStates[,input$variable])) +
  expand_limits(x = us$long, y = us$lat) +
  coord_map() + ggtitle("state population") +
  guides(fill=guide_legend(title=input$variable))

library(ggplot2)
jupyter notebook


## new new new new new