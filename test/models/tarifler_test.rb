require 'test_helper'

class TariflerTest < ActiveSupport::TestCase

  def setup
    @user = User.create!(username: "denemeuser", email: "denemeuser@gmail.com")
    @tarif = Tarifler.new(isim: "deneme", aciklama: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eu porttitor erat, sit amet aliquam diam. Pellentesque nisi tellus, elementum a bibendum eu, sagittis vitae diam. Nunc tincidunt posuere felis, ut ornare risus dictum at. Integer viverra diam ut faucibus maximus. Sed mattis nibh sit amet lacinia suscipit. Ut eu nisl facilisis, viverra velit nec, interdum orci. Ut et risus ut nisl sollicitudin congue. Sed nunc leo, lobortis porttitor erat et, aliquam viverra nunc.")
  end
  test "tarifi şef id ile bağlama" do
    @tarif.user_id = nil
    assert_not @tarif.valid?
  end
  test "tarif testi" do
    assert_not @tarif.valid?
  end

  test "tarif adi testi" do
    @tarif.isim = " "
    assert_not @tarif.valid?
  end
  test "tarif aciklama testi" do
    @tarif.aciklama = " "
    assert_not @tarif.valid?
  end
  test "tarif 5kelimeden kısa mi testi" do
    @tarif.aciklama = "a"*6
    assert_not @tarif.valid?
  end
  test "tarif 500 kelime uzun mu testi" do
    @tarif.aciklama = "a"*501
    assert_not @tarif.valid?
  end
end