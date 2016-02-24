class Service < ActiveRecord::Base

  has_many :accounts
  belongs_to :category

  scope :expiring_soon, -> { where('expiration_date <= ? ', Time.zone.now.beginning_of_day + 30.days).order(:expiration_date) }
  scope :trial_ending_soon, -> { where('free_trial_expiration_date <= ? ', Time.zone.now.beginning_of_day + 30.days).order(:free_trial_expiration_date) }

end
