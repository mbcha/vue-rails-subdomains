class MicroSite < ActiveRecord::Base
  belongs_to :user

  acts_as_url :user_name, url_attribute: :subdomain, only_when_blank: true

  validates :user, presence: true
  validates :subdomain, presence: true, format: { with: /\A[a-z0-9]+(-[a-z0-9]+)*\z/ }, uniqueness: true

  delegate :name, to: :user, prefix: true

  def url
    "#{protocol}://#{user.name}.#{domain}"
  end

  private

  def domain
    if Rails.env.development?
      'domains.fml:3000'
    else
      'cha-sale.com'
    end
  end

  def protocol
    domain == 'cha-sale.com' ? 'https' : 'http'
  end
end
