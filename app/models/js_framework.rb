class JsFramework < ApplicationRecord

  has_many :favorites
  has_many :users, through: :favorites
  has_many :comments
  has_many :ratings

  def current_user_rating(user)
    # I get 'ratings' from the above has_many :ratings
    # ratings is an ActiveRecord object, so I can call
    # and ActiveRecord method on it - 'find_by'
    rating = ratings.find_by(user_id: user.id)
    rating ? rating.rate : nil
    # this could also be written as this:
    # if rate
    #   rate.rate
    # else
    #   nil
    # end
  end

  def average_rating
    # fancy way to sum up all the rates on my Rating object
    rates = ratings.inject(0) {|sum, rating| sum + rating.rate}
    rates == 0 ? rates : rates / ratings.size
  end
end
