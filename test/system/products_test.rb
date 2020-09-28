require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first
    fill_in "Description", with: @product.description
    fill_in "Image url", with: @product.image_url
    fill_in "Price", with: @product.price
    fill_in "Title", with: "Karel The Robot in a Nutshell"
    click_on "Update Product"
    assert_text "Product was successfully updated"
    click_on "Back"
    end
end
