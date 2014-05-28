class Product < ActiveRecord::Base
  has_attached_file :file
  has_many :sales
  belongs_to :user

  validates_numericality_of :price,
                            greater_than: 49,
                            message: 'must be at least 50 cents'

  validates_attachment :file,
                       content_type: {
                           content_type: ['image/jpg',
                                          'image/jpeg',
                                          'image/png',
                                          'image/gif',
                                          'application/pdf',
                                          'text/csv'] }

end
