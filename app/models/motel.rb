class Motel < ApplicationRecord
  has_many :hotel_rooms, inverse_of: :motel, dependent: :destroy
  has_many :rooms, through: :hotel_rooms
  has_many :hotel_equips, inverse_of: :motel, dependent: :destroy
  has_many :equipments, through: :hotel_equips
  has_many :reviews, dependent: :destroy
  has_many :user_hotels, inverse_of: :motel, dependent: :destroy 
  has_many :users, through: :user_hotels

  accepts_nested_attributes_for :hotel_equips, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :hotel_rooms, reject_if: :all_blank, allow_destroy: true

  mount_uploaders :images, ImagesUploader
  serialize :images, JSON
  validates :name, presence: true
  validates :zone, presence: true
  validates :address, presence: true,
    uniqueness: {case_sensitive: false}
  validates :phone, presence: true, :numericality => true,
    :length => { :minimum => 10, :maximum => 15 }
  validates :level, presence: true
  validate :validate_unique_equipment
  validate :validate_unique_room

  scope :order_level, ->{order level: :desc}

  def validate_unique_equipment
    validate_uniqueness_of_in_memory(
      hotel_equips, [:motel_id, :equipment_id])
  end

  def validate_unique_room
    validate_uniqueness_of_in_memory(
      hotel_rooms, [:motel_id, :room_id])
  end

  def self.search(search)
    where("name LIKE ? OR address LIKE ? OR level LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end

  def blank_stars
    5 - level.to_i
  end

 def self.search(search)
    where("name LIKE ? OR address LIKE ? OR level LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end

  def blank_stars
    5 - level.to_i
  end

  def self.filter(search_name, search_address, search_level, search_equipment, search_room)
      Motel.joins(:hotel_equips, :hotel_rooms).where("name LIKE ? AND address LIKE ? AND level LIKE ? AND hotel_equips.equipment_id = ? AND hotel_rooms.room_id = ?", "%#{search_name}%", "%#{search_address}%", "%#{search_level}%", "#{search_equipment}", "#{search_room}")
  end
  def self.filter_equipment(search_name, search_address, search_level, search_equipment)
    Motel.joins(:hotel_equips).where("name LIKE ? AND address LIKE ? AND level LIKE ? AND hotel_equips.equipment_id = ?", "%#{search_name}%", "%#{search_address}%", "%#{search_level}%", "#{search_equipment}")
  end
  def self.filter_room(search_name, search_address, search_level, search_room)
    Motel.joins(:hotel_rooms).where("name LIKE ? AND address LIKE ? AND level LIKE ? AND hotel_rooms.room_id = ?", "%#{search_name}%", "%#{search_address}%", "%#{search_level}%", "#{search_room}" )
  end
  def self.search_user(search_name, search_address, search_level)
    where("name LIKE ? AND address LIKE ? AND level LIKE ? ", "%#{search_name}%", "%#{search_address}%", "%#{search_level}%")
  end
end
