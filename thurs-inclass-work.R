###
# notes from class
###

# two different symbols to pipe using magrittr (one is %>% and another is |>)

# magrittr is more useful for the double pipe %<>% basically to update a value
# going into a pipeline

# vectors are the simple building blocks of r (most simple type) so even num 6 
# is a vector

# dplyr functions works with pipes and expect tidy data

# control + L clears the console

###
# pipe lining 
###

# learn about piping with magrittr
library(magrittr)

v1 <- c(1:9)
mean(v1)

add1 <- function(x){
  return(x + 1)
}
add1(10) # check to see if the add1 function works as expected

# use %>% to "pipe" -> connects a set of functions into a single pathway/pipeline
v2 <- v1 %>% mean() %>% add1()
# use %<>% to pipeline but also update the original value
v1 %<>% mean() %>% add1() # v1 is still a vector after this

