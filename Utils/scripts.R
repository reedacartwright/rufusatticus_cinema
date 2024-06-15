steps <- 60
time <- 1200
delay <- 20
height <- 5
dist <- 32
center <- "at @s"
center <- "at @s positioned -711.5 95.5 -55.5"

rot <- seq(0, 360, length.out = steps + 1)

start <- seq(0, time, length.out = steps + 1)

line0 <- sprintf("execute as @p[scores={cin_aaa=%s}] %s rotated %g 0 run camera @s set rufusatticus:free pos ^ ^%g ^%g facing ~ ~ ~",
    delay, center, rot[1], height, dist)

lines <- sprintf("execute as @p[scores={cin_aaa=%i}] %s rotated %g 0 run camera @s set rufusatticus:free ease %g linear pos ^ ^%g ^%g facing ~ ~ ~",
    delay+start[-length(start)], center, rot[-1], delay/20, height, dist)

lines <- c(line0, lines)

writeLines(lines, "temp.txt")
