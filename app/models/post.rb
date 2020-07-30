class Post < ApplicationRecord
  acts_as_taggable
  generate_public_uid
  is_impressionable counter_cache: true
  
  validates :title, presence: true, length: { maximum: 20 }
  validates :name, length:{ maximum: 20 }
  validates :overview, length:{ maximum: 100 }
  validates :label1, presence: true, length: { maximum: 10 }
  validates :label2, presence: true, length: { maximum: 10 }
  validates :label3, presence: true, length: { maximum: 10 }
  validates :label4, presence: true, length: { maximum: 10 }
  validates :label5, presence: true, length: { maximum: 10 }
  validates :value1, numericality: { only_integer: true }, length:{ maximum: 1 }
  validates :value2, numericality: { only_integer: true }, length:{ maximum: 1 }
  validates :value3, numericality: { only_integer: true }, length:{ maximum: 1 }
  validates :value4, numericality: { only_integer: true }, length:{ maximum: 1 }
  validates :value5, numericality: { only_integer: true }, length:{ maximum: 1 }
  validates :bgcolor, presence: true
  
  def to_param
    public_uid
  end
end
