usethis::use_git()

# Create simulated dataset which contains simulated data about a collection of pets.
# The dataset contains information on each pet's name, species, favourite toy and quirky behaviour score.
# 10 indicates a pet is extremely quirky.

#' @format data frame with 50 rows and 4 variables:
#' \describe{
#'   \item{name}{pet's name.}
#'   \item{species}{species of the pet}
#'   \item{favorite_toy}{pet's favorite toy.}
#'   \item{quirky_behavior_score}{score from 1 to 10 rating the pet's quirky behavior.}
#' }
#' @export

funny_pets <- data.frame(
  name = c("Terra", "Lucy", "Nala", "Lucky", "Carlson", "Snuckie", "Timon", "Skully", "Daisy", "Jack"),
  species = c("Dragon", "Robot Cat", "Phoenix", "Panther", "Pegasus", "Dog", "Rabbit", "Unicorn", "Gremlin", "Jaguar"),
  favorite_toy = c("Magic Wand", "Laser Pointer", "Golden Yarn", "Invisible Ball", "Galactic Wheel", "Mystery Box", "Cloud Fluff", "Rainbow Sprinkles", "Time Machine", "Marshmallow Stick"),
  quirky_behavior_score = sample(1:10, 10, replace = TRUE)
)

usethis::use_data(simulated_data, overwrite = TRUE)
devtools::document()
devtools::build()
usethis::use_github()
