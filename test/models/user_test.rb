require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(username: "admin", email: "ilkersari796@gmail.com")
  end

  test "user testi" do
    assert_not @user.valid?
  end

  test "username girilmis olmali" do
    @user.username = " "
    assert_not @user.valid?
  end
  test "username 20 karakterden kisa mi" do
    @user.username  = "a"*21
    assert_not @user.valid?
  end
  test "email girilmis mi" do
    @user.email  = " "
    assert_not @user.valid?
  end

  test "gecersiz email kontrolü" do
    gecersiz_emails = %w[bomba.s@hotmail deneme@gmail,com test@yahoo deneme@exa+mple.com]
    gecersiz_emails.each do |gecersiz|
      @user.email = gecersiz
      assert_not @user.valid?, "#{gecersiz.inspect} gerçersiz"
    end
  end
  test "email karakter kontrolü" do
    @user.username  = "a"*151 +"@gmail.com"
    assert_not @user.valid?
  end
  test "email tekrar ediyor mu ve büyük kücük kontrol" do
    duplicate_email = @user.dup
    duplicate_email.email = @user.email.upcase
    @user.save
    assert duplicate_email.valid?
  end


end