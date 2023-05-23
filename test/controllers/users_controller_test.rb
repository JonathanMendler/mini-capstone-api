require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  setup do
    @user = User.create(name: "Test", email: "test@test.com", password: "password", admin: true)
    @order = Order.create(user_id: @user.id, product_id: Product.first.id, quantity: 10)
    post "/sessions.json", params: { email: "test@test.com", password: "password" }
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end

  test "create" do
    assert_difference "User.count", 1 do
      post "/users.json", params: { name: "Test", email: "test@test.com", password: "password", password_confirmation: "password" }
      assert_response 201
    end
  end
end
