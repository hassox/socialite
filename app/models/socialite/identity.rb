module Socialite
  class Identity < ActiveRecord::Base
    belongs_to :user, :inverse_of => :identities
    serialize :auth_hash

    # Before saving an identity, we ensure that the provider name
    # is downcased. This avoids any issue when using PostgreSQL
    # without ILIKE logic.
    before_save do |identity|
      identity.provider = identity.provider.downcase
    end

    # Setup common named scopes for officially supported providers
    scope :facebook, where(:provider => 'facebook')
    scope :twitter, where(:provider => 'twitter')

    # Ensure each user has only a single identity per provider type
    validates :provider,
      :uniqueness => {:scope => :user_id, :case_sensitive => false},
      :presence => true

    # Ensure an identity is never reused by another account
    validates :unique_id,
      :uniqueness => {:scope => :provider},
      :presence => true

    validates_associated :user
  end
end