require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures :products
  test "product is not valid without a unique title - i18n" do
    product = Product.new(title: products(:ruby).title,
    description: "yyy",
    price: 1,
    image_url: "fred.gif")
    assert product.invalid?
    assert_equal [I18n.translate('errors.messages.taken')],
                 product.errors[:title]  end
end
