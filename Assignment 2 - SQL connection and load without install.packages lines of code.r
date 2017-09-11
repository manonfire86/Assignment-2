### Load RMySQL library

library(RMySQL)

### load dplyr library

library(dplyr)

### connect to your SQL Server

sqldb = dbConnect(MySQL(), user='',password='',dbname = 'data_science_assignment',host='')

### check available tables

dbListTables(sqldb)

### store and merge your data

unified_table = dbSendQuery(sqldb,'select m.*,g.*,d.* 
                            from movies m left join genre g
                            on m.movie_number = g.movie_number
                            left join description d
                            on g.genre_id = d.genre_id')
unified_tabled_data = fetch(unified_table)


### convert tables to data frame and and remove duplicate columns

dataframe_sqldata = data.frame(unified_tabled_data)
dup_columns = c("movie_number.1","genre_id.1")
finaldf = dataframe_sqldata[,!(names(dataframe_sqldata) %in% dup_columns)]

### show results

print(finaldf)
