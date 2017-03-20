class User < ApplicationRecord
  has_many :ideas
  has_secure_password

  def great_ideas
    ideas.where(idea_type: 0)
  end

  def random_ideas
    ideas.where(idea_type: 1)
end

def scrapped_ideas
  ideas.where(idea_type: 2)
end

 end
