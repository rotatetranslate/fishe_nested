class Scientist < ActiveRecord::Base
  after_initialize :default_discipline

  has_many :experiments, dependent: :destroy

  private

  # self is like js this. sets context to instance of class
  def default_discipline
    self.discipline ||= "General Science"
  end
end
