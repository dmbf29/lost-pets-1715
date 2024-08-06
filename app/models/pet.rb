class Pet < ApplicationRecord
  # associations
  # validations
  SPECIES = ['snake', 'tiger', 'capybara', 'dog', 'cat', 'shark']
  validates :species, inclusion: { in: SPECIES }
end
