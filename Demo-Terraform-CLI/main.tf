provider "random" {

}

resource "random_pet" "name" {
  length = 1
}

resource "random_pet" "davids-pet" {
  length = 1
}

output "random_pet_name" {
    value = random_pet.name.id
}