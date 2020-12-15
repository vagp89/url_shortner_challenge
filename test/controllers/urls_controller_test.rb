require 'test_helper'

class UrlsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get urls_url
    assert_response :success
  end

  test "should create an url" do
    assert_difference('Url.count') do
      post urls_url, params: { url: { link: "https://edgeguides.rubyonrails.org/active_record_migrations.html#changing-columns", code: "122334" } }
    end
  end

 test "should show url" do
    get urls_url(@url)
    assert_response :success
  end

end
