class Person < ApplicationRecord
  has_and_belongs_to_many :clinics

  validate :hpr_number_must_be_valid
  validates :hpr_number, numericality: { only_integer: true }

  private

  def hpr_number_must_be_valid
    begin
      scraper = Hpr.scraper(hpr_number: hpr_number)
      self.name = scraper.name # this will trigger Hpr::InvalidHprNumberError if person does not exist
      self.date_of_birth = scraper.birth_date
    rescue StandardError => e
      errors.add(:hpr_number, :invalid, message: 'Invalid') 
    end
  end
end
