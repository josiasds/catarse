class Project < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  validates_presence_of :name, :user, :category

  def successful?
    pledged >= goal
  end
  def expired?
    deadline < Time.now
  end
  def in_time?
    deadline >= Time.now
  end
  def time_left
    ""
  end
end
