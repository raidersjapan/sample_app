class User < ActiveRecord::Base
  has_many :microposts, dependent: :destroy  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  validates :name, presence: true, length: { maximum: 50 }
  
  def feed
    # このコードは準備段階です。
    # 完全な実装は、次回以降に行います。
    Micropost.where("user_id = ?", id)
  end  
end