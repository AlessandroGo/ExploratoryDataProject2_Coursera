## This first line will likely take a few seconds. Be patient!
NEI <- readRDS("./data/summarySCC_PM25.rds")
SCC <- readRDS("./data/Source_Classification_Code.rds")
head(NEI)
head(SCC)

sum(is.na(NEI$year))
anyNA(NEI)
