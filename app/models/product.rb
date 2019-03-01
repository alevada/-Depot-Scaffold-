class Product < ApplicationRecord
  #validates() method is the standard Rails validator. It checks one or more model fields against one or more conditions
  validates :title, :description, :image_url,
            # presence: true >>tells the validator to check that each of the named fields is present and that its contents aren’t empty.
            presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
      with:    %r{\.(gif|jpg|png)\Z}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
  }

end
