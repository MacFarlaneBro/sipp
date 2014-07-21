class WelcomeController < ApplicationController

  def index
      @posts = Post.all
  end

  def about
  end

  def contact
  end

  def feed
    # This will be the name of the feed displayed on the feed reader
    @title = "Blog"

    #Blog Posts
    @blog_posts = Post.order("updated_at desc").limit(3)# ordering the blog by date updated and limiting posts to 3

    #The blog feed's update timestamp
    @updated = @blog_posts.first.updated_at unless @news_items.empty?

    respond_to do |format|
      format.atom { render :layout => false }

      format.rss { redirect_to feed_path(:format => :atom), :status => :moved_permanently }
    end
  end
end
