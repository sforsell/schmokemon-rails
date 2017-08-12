class User < ApplicationRecord
  has_many :pokemons

  has_secure_password
end
