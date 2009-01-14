class OutsideController < ApplicationController
  web_service_dispatching_mode :layered
  web_service_scaffold :invoker
  web_service(:metaWeblog) { MetaWeblogService.new(self) }
  web_service(:blogger) { BloggerService.new(self) }
end