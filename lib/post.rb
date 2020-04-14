class Post

  attr_accessor :title, :author

  @@posts = [] 

  def initialize
    post = self
    @@posts << post
  end


end
