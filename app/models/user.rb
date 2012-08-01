  class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :image, :name
  has_many :posts
  has_many :messages
  mount_uploader :image, ImageUploader
  has_many :relationships, :dependent => :destroy,
                           :foreign_key => "requester_id"
  has_many :reverse_relationships, :dependent => :destroy,
                                   :foreign_key => "requested_id",
                                   :class_name => "Relationship" 
   has_and_belongs_to_many :likes, join_table: :posts_users, association_foreign_key: :post_id, class_name: Post

  has_many :requesting, :through => :relationships, :source => :requested                            
  has_many :requesters, :through => :reverse_relationships,
                        :source  => :requester
  belongs_to :relationship

  attr_accessor :password
  before_save :encrypt_password
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def current_user?
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def requesting?(requested)
    relationships.find_by_requested_id(requested)
  end

  def request!(requested)
    relationships.create!(:requester_id => requested.id)
  end

  def unrequest!(request)
    relationships.find_by_requested_id(request).destroy
  end

  def with_relationships
     
  end
  
  def self.search(search)
    User.where("name LIKE ?", "%#{search}%")
  end
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end