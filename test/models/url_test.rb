require 'test_helper'

class UrlTest < ActiveSupport::TestCase
  test "should set a code of 6 characters to url" do
    link = "https://edgeguides.rubyonrails.org/active_record_migrations.html#changing-columns"
    shortUrl = Url.new(link: link)
    shortUrl.code = shortUrl.shortster_url
    shortUrl.save
    assert_equal(shortUrl.code.length, 6)
  end

  test "Should throw error if the least than 4 characters" do
    url = Url.create(:link => "Some Title", :code => "n1")
    assert_not url.valid?
  end

  test "Code attribute should be unique" do
    new_code = Url.create(:link => "Some Title", :code => "n1")
    duplicate_item = Url.create(:link => "Some Title", :code => "n1")
    assert_not duplicate_item.valid?
  end

end
