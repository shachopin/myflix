class QueueItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :video

  delegate :category, to: :video
  delegate :title, to: :video, prefix: :video

  validates_numericality_of :position, {only_integer: true}

  def rating
    review.rating if review
  end

  def rating=(new_rating)
    new_rating = nil if new_rating == ""

    if review
      review.update_column(:rating, new_rating)
    elsif new_rating
      review = Review.new(user: user, video: video, rating: new_rating)
      review.save(validate: false)
    end
  end

  def review
    @review ||= Review.where(user: user, video: video).first
  end 

  def category_name
    category.name
  end
end