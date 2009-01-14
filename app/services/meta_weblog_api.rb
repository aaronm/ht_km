class MetaWeblogApi < ActionWebService::API::Base
 
 module Blog
  class Post < ActionWebService::Struct
    member :title,       :string
    member :link,        :string
    member :description, :string
    member :author,      :string
    member :category,    :string
    member :comments,    :string
    member :guid,        :string
    member :pubDate,     :string
  end

  class Category < ActionWebService::Struct
    member :description, :string
    member :htmlUrl,     :string
    member :rssUrl,      :string
  end
  
end  
  
    api_method :get_posts, :returns => [[:string]]
  
      api_method :newPost, :returns => [:string], :expects => [
        {:blogid=>:string},
        {:username=>:string},
        {:password=>:string},
        {:struct=>Blog::Post},
        {:publish=>:bool}
      ]

      api_method :editPost, :returns => [:bool], :expects => [
        {:postid=>:string},
        {:username=>:string},
        {:password=>:string},
        {:struct=>Blog::Post},
        {:publish=>:bool},
      ]

      api_method :getPost, :returns => [Blog::Post], :expects => [
        {:postid=>:string},
        {:username=>:string},
        {:password=>:string},
      ]

      api_method :getCategories, :returns => [[Blog::Category]], :expects => [
        {:blogid=>:string},
        {:username=>:string},
        {:password=>:string},
      ]

      api_method :getRecentPosts, :returns => [[Blog::Post]], :expects => [
        {:blogid=>:string},
        {:username=>:string},
        {:password=>:string},
        {:numberOfPosts=>:int},
      ]
  
  
end

