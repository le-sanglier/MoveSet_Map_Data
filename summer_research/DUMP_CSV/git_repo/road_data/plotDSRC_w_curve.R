plotDSRC_w_curve <- function(x) {
  switch(x,
    "1" = View(drive1_dsrc),
    "2" = View(drive2_dsrc),
    "3" = View(drive3_dsrc),
    "4" = View(drive4_dsrc),
    "5" = View(drive5_dsrc),
    "6" = View(drive6_dsrc),
    "7" = View(drive7_dsrc),
    "8" = View(drive8_dsrc)
         )
  
  switch(x,
    "1" = plot(drive1_dsrc$value~c(1:nrow(drive1_dsrc))),
    "2" = plot(drive2_dsrc$value~c(1:nrow(drive2_dsrc))),
    "3" = plot(drive3_dsrc$value~c(1:nrow(drive3_dsrc))),
    "4" = plot(drive4_dsrc$value~c(1:nrow(drive4_dsrc))),
    "5" = plot(drive5_dsrc$value~c(1:nrow(drive5_dsrc))),
    "6" = plot(drive6_dsrc$value~c(1:nrow(drive6_dsrc))),
    "7" = plot(drive7_dsrc$value~c(1:nrow(drive7_dsrc))),
    "8" = plot(drive8_dsrc$value~c(1:nrow(drive8_dsrc)))
  )
  
  switch(x,
         "1" = lines(spline(c(1:nrow(drive1_dsrc)), drive1_dsrc_fun(c(1:nrow(drive1_dsrc)))), col = "red"),
         "2" = lines(spline(c(1:nrow(drive2_dsrc)), drive2_dsrc_fun(c(1:nrow(drive2_dsrc)))), col = "red"),
         "3" = lines(spline(c(1:nrow(drive3_dsrc)), drive3_dsrc_fun(c(1:nrow(drive3_dsrc)))), col = "red"),
         "4" = lines(spline(c(1:nrow(drive4_dsrc)), drive4_dsrc_fun(c(1:nrow(drive4_dsrc)))), col = "red"),
         "5" = lines(spline(c(1:nrow(drive5_dsrc)), drive5_dsrc_fun(c(1:nrow(drive5_dsrc)))), col = "red"),
         "6" = lines(spline(c(1:nrow(drive6_dsrc)), drive6_dsrc_fun(c(1:nrow(drive6_dsrc)))), col = "red"),
         "7" = lines(spline(c(1:nrow(drive7_dsrc)), drive7_dsrc_fun(c(1:nrow(drive7_dsrc)))), col = "red"),
         "8" = lines(spline(c(1:nrow(drive8_dsrc)), drive8_dsrc_fun(c(1:nrow(drive8_dsrc)))), col = "red")
  )
}