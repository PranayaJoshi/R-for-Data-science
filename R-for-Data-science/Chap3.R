#Chap. 3#

install.packages("tidyverse")
library(tidyverse)
install.packages(c("nycflights", "gapminder", "Lahman")
                 )
1+2

mpg


ggplot(mpg, aes(x = displ, y = hwy)
       ) +
geom_point()

?mpg

#-- scatterplot of hwy vs cyl --

ggplot(mpg, aes(x = cyl, y = hwy)
) +
  geom_point()

#-- scatter class vs drv --
ggplot(mpg, aes(x = drv, y = class)
) +
  geom_point()

  
ggplot(mpg, aes(x = displ, y = hwy, color = class)
      ) +
geom_point()


ggplot(mpg, aes(x = displ, y = hwy, size = class)
      ) +
geom_point()


ggplot(mpg, aes(x = displ, y = hwy, alpha = class)
      ) +
geom_point()


ggplot(mpg, aes(x = displ, y = hwy, shape = class)
      ) +
geom_point()


ggplot(mpg, aes(x = displ, y = hwy), color = "blue"
       ) +
geom_point()


ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy), color = "blue"
             )


ggplot(mpg) +
  geom_point(aes(x = displ, y = hwy), color = "blue", size = 2, shape = 5
  )

ggplot(mpg) +
  geom_point(aes(x = displ, y = hwy), color = "blue", size = 4, shape = 9
  )


ggplot(mpg) +
  geom_point(aes(x = displ, y = hwy, color = "blue"))



#-- how to see info when you run mpg--

?mpg

#-- continuous variable to color , size , and shape . How do
these aesthetics behave differently for categorical vs. continuous
variables? discret?? --
  

ggplot(mpg, aes(x = displ, y = hwy, color = class)) + 
  geom_point() + 
geom_point(aes(Size = class)) + 
geom_point(aes(shape = class))

ggplot(mpg) +
  geom_point(aes(x = displ, y = cty), color = "blue", size = 2, shape = 5
  )


ggplot(mpg, aes(x = displ, y = hwy, color = cty)
) + 
  geom_point()


#-- stroke?? --
# to change border size of points _ need dev. version  
  
?geom_point


ggplot(mpg, aes(x = displ, y = hwy, color = displ < 5)
      ) +
geom_point()

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  facet_wrap(~ class, nrow = 2)

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  facet_grid(drv ~ cyl)
 

# --   facet_grid(~ --continuous variable?? -- )


ggplot(mpg) +
  geom_point(aes(x = drv, y = cyl))

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  facet_grid(drv ~ .)

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  facet_grid(drv ~ )


ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  facet_grid(. ~ cyl)



ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  facet_wrap(~ class, nrow = 2)

# -- use of facet_wrap and color aes --
  
?facet_wrap 

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  facet_wrap(~ class, ncol = 2)

ggplot(mpg, aes(x = displ, y = hwy)
       ) +
  geom_point()


ggplot(mpg, aes(x = displ, y = hwy)
       ) +
  geom_smooth()

ggplot(mpg, aes(x = displ, y = hwy, linetype = drv)
       ) +
  geom_smooth()

?geom_smooth

ggplot(mpg, aes(x = displ, y = hwy,)
) + 
  geom_smooth(aes(color = drv), show.legend = FALSE) 


ggplot(mpg, aes(x = displ, y = hwy, linetype = drv)
) + 
  geom_smooth(aes(color = drv), show.legend = TRUE)


ggplot(mpg, aes(x = displ, y = hwy,)
       ) + 
  geom_smooth() + 
  geom_smooth(aes(color = drv), show.legend = FALSE) + 
  geom_point(aes(color = class))

ggplot(mpg, aes(x = displ, y = hwy,)
) + 
  geom_smooth(aes(linetype = drv), show.legend = TRUE) + 
  geom_point(aes(color = class))


ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class)) +
  geom_smooth(data = filter(mpg, class == "subcompact"), se = FALSE) 

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class)) +
  geom_smooth(data = filter(mpg, class == "subcompact"), se = TRUE)


ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class)) +
  geom_smooth(data = filter(mpg, class == "subcompact"))


#line, box, histogram, box, area chart#

ggplot(mpg, aes(x = displ, y = hwy, color = drv)
       ) +
  geom_point() + 
  geom_smooth(se = FALSE)


#se function do?? #
# show or hide std. error

ggplot(mpg, aes(x = displ, y = hwy, color = drv)
) +
  geom_point() + 
  geom_smooth()

ggplot() +
  geom_point(mpg, aes(x = displ, y = hwy, color = drv))

#graph given -- generate code#

ggplot(mpg, aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth(se = FALSE)

ggplot(mpg, aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth(aes(class = drv), se = FALSE)

ggplot(mpg, aes(x = displ, y = hwy, color = drv)) + 
  geom_point() + 
  geom_smooth(se = FALSE)

ggplot(mpg, aes(x = displ, y = hwy)) + 
  geom_point(aes(color = drv)) + 
  geom_smooth(se = FALSE)

ggplot(mpg, aes(x = displ, y = hwy)) + 
  geom_point(aes(color = drv)) + 
  geom_smooth(aes(linetype = drv), se = FALSE)

ggplot(mpg, aes(x = displ, y = hwy)) + 
  geom_point(aes(color = drv), se = FALSE)

# assignment end

ggplot(diamonds, aes(x = cut)) + 
  geom_bar()

# error in trial
ggplot(diamonds, aes(x = cut)) + 
frequency(diamonds(cut)) + 
  geom_bar()


demo <- tribble(
  ~cut, ~freq, 
  "Fair", 1610,
  "Good", 4906,
  "Very Good", 12082,
  "Premium", 13791,
  "Ideal", 21551
)
# Typed dint work before?? ...  then worked

# Pasted from book below

demo <- tribble(
  ~cut, ~freq,
  "Fair", 1610,
  "Good", 4906,
  "Very Good", 12082,
  "Premium", 13791,
  "Ideal", 21551
)

ggplot(demo) + 
  geom_bar(aes(x = cut, y = freq), stat = "identity")

ggplot(demo) +
  geom_bar(aes(x = cut, y = freq), stat = "identity")

ggplot(diamonds, aes(x = cut, y = stat(prop), group = 1)
       ) +
  geom_bar()


ggplot(diamonds, aes(x = cut, y = depth)) +
  stat_summary(fun.min = min, fun.max = max, fun = median
              )

#geom_stat_??#
ggplot(diamonds, aes(x = cut, y = depth), se = y, ymin = y - se, ymax = y + se) +
  geom_errorbar()

geom_pointrange()
  
  geom_smooth(stat = "identity")
  
install.packages("plotrix")
library(plotrix)

diamonds
y = diamonds(depth)
std.error(depth)  
  
data.table()


    
    

  


