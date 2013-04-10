class SubComment
  include Mongoid::Document
  include Mongoid::Timestamps

  field :content, type: String
  validates_presence_of :content

  embedded_in :comment
  belongs_to :commenter, class_name: "User", inverse_of: nil

  has_and_belongs_to_many :likers, class_name: 'User', inverse_of: nil
  has_and_belongs_to_many :dislikers, class_name: 'User', inverse_of: nil
  
  def liked_by?(user)
    likers.include? user
  end

  def disliked_by?(user)
    dislikers.include? user
  end

  def liked_by(user)
    return if likers.include? user
    dislikers.delete user
    likers << user
  end

  def disliked_by(user)
    return if dislikers.include? user
    likers.delete user
    dislikers << user
  end

end