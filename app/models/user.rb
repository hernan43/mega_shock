class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :lockable, :trackable

  def fullname
    return first_name if not first_name.blank? and last_name.blank?
    return last_name if not last_name.blank? and first_name.blank?

    return "#{first_name} #{last_name}" if not first_name.blank? and not last_name.blank?

    return email
  end

  def has_name?
    fullname != email
  end
end
