class Kitten < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true

  def as_json(options = nil)
    {
      id: self.id,
      name: self.name,
      age: self.age,
      cuteness: self.cuteness,
      softness: self.softness
    }
  end
end