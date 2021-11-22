# link(dataset/covid19-public-main/vaccination/vax_malaysia.csv, "vax_malaysia.csv")

install.packages("languageserver")
install.packages("ggplot2")
install.packages("ggthemes")
install.packages("dplyr")
install.packages("scales")
install.packages("httpgd")

library(ggplot2)
library(dplyr)
library(ggthemes)
library(scales)

# print(paste0("vax_malaysia.csv", "vax_malaysia.csv"))

print("hello world")

vax_malaysia <- read.csv("E:/Programming/R/stats-assignment/dataset/covid19-public-main/vaccination/vax_malaysia.csv")
vax_state <- read.csv("E:/Programming/R/stats-assignment/dataset/covid19-public-main/vaccination/vax_state.csv")


# list(dataset/covid19-public-main/vaccination/vax_malaysia.csv, "vax_malaysia.csv")

# list(vax_malaysia)

# vax_malaysia %>%
ggplot(aes(x = vax_malaysia$date, y = vax_malaysia$daily_partial)) + geom_line()

# vax by state
ggplot(vax_state, aes(x = date, y = daily, group = 1, color = state)) + geom_line() + labs(title = "Daily Vaccination Doses by State", x = "Date", y = "Total Daily Dose", color = "State") + theme_fivethirtyeight() + theme(axis.title = element_text())

ggplot(vax_state, aes(x = date, y = daily, group = 1, color = state)) + geom_line() + labs(title = "Daily Vaccination Doses by State", x = "Date", y = "Total Daily Dose", color = "State") + theme_fivethirtyeight() + theme(axis.title = element_text()) + scale_x_date(date_breaks = "1 month", labels = date_format("%d-%b"))

# use ggplot to plot the data in the vax_malaysia data frame

# ggplot(vax_malaysia, aes(x = date, y = daily, group = 1)) + geom_line()
