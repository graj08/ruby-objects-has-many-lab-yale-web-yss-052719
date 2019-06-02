require 'pry'

class Author

attr_accessor :name, :posts

@@all_posts = []

def initialize(name)
    @name = name
    @posts = []
end

def self.all_posts
    @@all_posts
end

def add_post (post)
    post.author = self
    self.posts << post
    @@all_posts << post
end

def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
end

def self.post_count
    @@all_posts.length
end

end
