load_measurements_table <- function() {
  mydb=dbGetQuery(mydb, "select * from Measurements")
  View(mydb)
}