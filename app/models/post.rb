class Post < ApplicationRecord
  acts_as_taggable
  generate_public_uid
  
  def to_param
    public_uid
  end
end
