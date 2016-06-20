class User < ActiveRecord::Base
  has_many :tools
  has_many :ratings_received, class_name: "Rating", foreign_key: "ratee_id"
  has_many :ratings_given, class_name: "Rating", foreign_key: "rater_id"
  has_many :raters, through: :ratings_received, source: :rater
  has_many :ratees, through: :ratings_given, source: :ratee

  validates :first_name, :last_name, :email, presence: true
  
  validates :email, uniqueness: true

  before_save :find_coordinates

  def find_coordinates
    
    full_address = "#{self.street_address_1}, #{self.city}, #{self.state}, #{self.zip}"
    
    geo_pos = Geokit::Geocoders::GoogleGeocoder.geocode full_address
    coor = geo_pos.ll.split(",")
    self.latitude = coor[0].to_f
    self.longitude = coor[1].to_f
  end
end
