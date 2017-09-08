connect_to_mydb <- function() {
  mydb <- dbConnect(MySQL(), user="root", password="H3in3ck3#", dbname="mydb", host="localhost")  #connect to mydb

  dbListTables(mydb) #display tables
}