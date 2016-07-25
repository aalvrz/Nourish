class User < ActiveRecord::Base
    rolify
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
            :recoverable, :rememberable, :trackable, :validatable
    
    # Validations
    #validates :plan, :presence => true, inclusion: { in: PricingPlan.pluck(:name) }
    
    # Associations
    belongs_to :pricing_plan
    has_many :meal_plans, dependent: :destroy
    
end