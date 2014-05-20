class Identity < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user_id, :uid, :provider
  validates_uniqueness_of :uid, :scope => :provider

  def self.find_for_oauth(auth)
    identity = Identity.where(provider: auth.provider, uid: auth.uid)
    .first_or_create do |identity|
      identity.provider = auth.provider
      identity.uid = auth.uid
    end
    identity
  end
end
