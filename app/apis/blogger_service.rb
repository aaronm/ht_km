

	

class Blog < ActionWebService::Struct
    member :blogid, :string
    member :blogName, :string
    member :url, :string
end

class BloggerApi < ActionWebService::API::Base
  inflect_names false

  api_method :getUsersBlogs,
    :expects => [ {:appkey => :string}, 
                  {:username => :string}, 
                  {:password => :string} ],
    :returns => [[Blog]]

end

class BloggerService < ActionWebService::Base
  web_service_api BloggerApi

  attr_accessor :controller

  def initialize(controller)
    @controller = controller
  end

  def getUsersBlogs(appkey, email, password)
    @author = get_author(email, password)
    [Blog.new(
      :url      => controller.url_for(:author=>@author, :controller=>'blog'),
      :blogid   => 1,
      :blogName => @author.short_name.capitalize + "'s Blog"
    )]
  end

  def get_author(email, password)
    Author.login(email, password)
  end

end