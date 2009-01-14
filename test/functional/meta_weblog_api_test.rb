require File.dirname(__FILE__) + '/../test_helper'
require 'meta_weblog_controller'

class MetaWeblogController; def rescue_action(e) raise e end; end

class MetaWeblogControllerApiTest < Test::Unit::TestCase
  def setup
    @controller = MetaWeblogController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end
  
  
  def test_get_posts
      result = invoke :get_posts
      assert_equal(["Post 1", "Post 2"], result)
    end
  
end
