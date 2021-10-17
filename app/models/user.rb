class User < ActiveRecord::Base
  has_one :micro_site

  after_create :create_micro_site

  private

  def create_micro_site
    MicroSite.create!(user: self)
  end
end
