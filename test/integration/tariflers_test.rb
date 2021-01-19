require "test_helper"

class TariflersTest < ActionDispatch::IntegrationTest

  def setup
    @user = User.create!(username: "test",email: "deneme@gmail.com")
    @tarif = Tarifler.create!(isim: "Deneme", aciklama: "deneme deneme deneme deneme deneme", user: @user)
    @tarif2= @user.tariflers.build(isim: "denemee", aciklama: "süper deneme")
    @tarif2.save
  end

  test "tariflerin ana sayfası" do
    get tariflers_url
    assert_response :success
  end

  test "tarif listeleme" do
    get tariflers_path
    assert_template 'tariflers/index'
    assert_match @tarif.isim, response.body
    assert_match @tarif2.isim, response.body
  end

end
