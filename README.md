# ExploratoryDataProject2_Coursera

## Instructions
Fine particulate matter (PM2.5) is an ambient air pollutant for which there is strong evidence that it is harmful to human health. In the United States, the Environmental Protection Agency (EPA) is tasked with setting national ambient air quality standards for fine PM and for tracking the emissions of this pollutant into the atmosphere. Approximatly every 3 years, the EPA releases its database on emissions of PM2.5. This database is known as the National Emissions Inventory (NEI). You can read more information about the NEI at the 
EPA National Emissions Inventory web site
.

For each year and for each type of PM source, the NEI records how many tons of PM2.5 were emitted from that source over the course of the entire year. The data that you will use for this assignment are for 1999, 2002, 2005, and 2008.

## Data
The data for this assignment are available from the course web site as a single zip file:

Data for Peer Assessment
 [29Mb]

The zip file contains two files:

PM2.5 Emissions Data (
summarySCC_PM25.rds
summarySCC_PM25.rdsstart color red, start verbatim, summarySCC_PM25.rds, end verbatim, end color red): This file contains a data frame with all of the PM2.5 emissions data for 1999, 2002, 2005, and 2008. For each year, the table contains number of tons of PM2.5 emitted from a specific type of source for the entire year. Here are the first few rows.

fipsstart color red, start verbatim, fips, end verbatim, end color red: A five-digit number (represented as a string) indicating the U.S. county

SCC
SCCstart color red, start verbatim, SCC, end verbatim, end color red: The name of the source as indicated by a digit string (see source code classification table)

Pollutant
Pollutantstart color red, start verbatim, Pollutant, end verbatim, end color red: A string indicating the pollutant

Emissions
Emissionsstart color red, start verbatim, Emissions, end verbatim, end color red: Amount of PM2.5 emitted, in tons

type
typestart color red, start verbatim, type, end verbatim, end color red: The type of source (point, non-point, on-road, or non-road)

year
yearstart color red, start verbatim, year, end verbatim, end color red: The year of emissions recorded

Source Classification Code Table (
Source_Classification_Code.rds
Source_Classification_Code.rdsstart color red, start verbatim, Source_Classification_Code.rds, end verbatim, end color red): This table provides a mapping from the SCC digit strings in the Emissions table to the actual name of the PM2.5 source. The sources are categorized in a few different ways from more general to more specific and you may choose to explore whatever categories you think are most useful. For example, source “10100101” is known as “Ext Comb /Electric Gen /Anthracite Coal /Pulverized Coal”.

You can read each of the two files using the 
readRDS()
readRDS()start color red, start verbatim, readRDS(), end verbatim, end color red function in R. For example, reading in each file can be done with the following code:
SCC <- readRDS("Source_Classification_Code.rds")
as long as each of those files is in your current working directory (check by calling 
dir()
dir()start color red, start verbatim, dir(), end verbatim, end color red and see if those files are in the listing).

## Questions
1. Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.
2. Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (
fips == "24510"
fips == "24510"start color red, start verbatim, fips == "24510", end verbatim, end color red) from 1999 to 2008? Use the base plotting system to make a plot answering this question.
3. Of the four types of sources indicated by the 
type
typestart color red, start verbatim, type, end verbatim, end color red (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.
4. Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?
5. How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?
6. Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (
fips == "06037"
fips == "06037"start color red, start verbatim, fips == "06037", end verbatim, end color red). Which city has seen greater changes over time in motor vehicle emissions?

## Making Plots
Construct the plot and save it to a PNG file.

Create a separate R code file (
plot1.R
plot1.Rstart color red, start verbatim, plot1.R, end verbatim, end color red, 
plot2.R
plot2.Rstart color red, start verbatim, plot2.R, end verbatim, end color red, etc.) that constructs the corresponding plot, i.e. code in plot1.R constructs the plot1.png plot. Your code file should include code for reading the data so that the plot can be fully reproduced. You must also include the code that creates the PNG file. Only include the code for a single plot (i.e. 
plot1.R
plot1.Rstart color red, start verbatim, plot1.R, end verbatim, end color red should only include code for producing 
plot1.png
plot1.pngstart color red, start verbatim, plot1.png, end verbatim, end color red)

Upload the PNG file on the Assignment submission page

Copy and paste the R code from the corresponding R file into the text box at the appropriate point in the peer assessment.