class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :activities
  has_many :strengths, through: :activities
  has_many :weakness, through: :activities

  after_create :start_activity


  def start_activity
  	Strength.pluck(:id).each do |strength_id|
  		activities.create(strength_id: strength_id, count: 1)
  	end

  	Weakness.pluck(:id).each do |weakness_id|
  		activities.create(weakness_id: weakness_id, count: 0)
  	end
  end
end
