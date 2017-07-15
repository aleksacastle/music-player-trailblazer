require "reform"
require "reform/form/dry"

module Session::Contract
  class Create < Reform::Form
    # include Dry

    property :email
    property :password, virtual: true
    property :confirm_password, virtual: true
    property :nick_name

    validates :email, :password, :confirm_password, presence: true
    validate :password_ok?

    # validation do
    #   required(:email).filled
    #   required(:password).filled
    #   required(:confirm_password).filled
    #   required(:nick_name).filled
    # end

    private
      def password_ok?
        return unless email && password
        return if password == confirm_password
        errors.add(:password, "Password don't match")
      end
  end
end
