class Pelicula < ApplicationRecord
 
  has_many :comentarios, dependent: :destroy
  validates :director, presence: true, uniqueness: {message: "El nombre del Director ha de ser unico"}
  	

def self.search(search)
  where("name like ?", "%" + "%#{search}%" + "%")
end

def self.search_year(search_year)
  where(year: search_year)
end


def self.search_genre(search_genre)
  where(genre: search_genre)
end
 

end
 
