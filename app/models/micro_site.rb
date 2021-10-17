class MicroSite < ActiveRecord::Base
  belongs_to :user

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
