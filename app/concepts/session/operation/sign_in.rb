# sign_in operation
class Session::SignIn < Trailblazer::Operation
  # form render operation
  class Present < Trailblazer::Operation
    step Model(User, :new)
    step Contract::Build(constant: Session::Contract::New)
  end

  step Nested(Present)
  step Contract::Validate()
  step :assign_user_from_contract

  def assign_user_from_contract(params)
    params["model"] = params["contract.default"].user
  end
end
