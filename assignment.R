#Run Packages
library(ggplot2)
library(palmerpenguins)

#Section 3.2 View Penguins
penguins
view(penguins)
ggplot(data = penguins)

#Section 3.3 Color
ggplot(data = penguins) +
  geom_point(mapping = aes(x = body_mass_g,
                           y = flipper_length_mm,
                           color = species,
                           shape = island))

#Section 3.3 Color and Island
ggplot(data = penguins) +
  geom_point(mapping = aes(x = body_mass_g,
                           y = flipper_length_mm,
                           color = species,
                           shape = island))

#Section 3.5 Facet Wrap
ggplot(data = penguins) +
  geom_point(mapping = aes(x = body_mass_g,
                           y = flipper_length_mm,
                           color = species,
                           shape = island)) + 
  facet_wrap(~species,nrow = 1)

#Section 3.5 Facet Grid
ggplot(data = penguins) +
  geom_point(mapping = aes(x = body_mass_g,
                           y = flipper_length_mm,
                           color = species,
                           shape = island)) + 
  facet_grid(species ~ island)
