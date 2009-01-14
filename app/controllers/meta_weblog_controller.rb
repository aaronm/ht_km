class MetaWeblogController < ApplicationController
    wsdl_service_name 'MetaWeblog'
    web_service_api MetaWeblogApi
    web_service_scaffold :invocation if Rails.env == 'development'

    def get_posts
      ["Post 1", "Post 2"]
    end


    def newPost(blogid, username, password, post, publish)

        print blogid + username + password + post.description
        return "great success"

    end


end
