class SongPolicy
  def initialize(user, model)
    @user, @model = user, model
  end

  def create?
    user.artist?
  end

  def delete?
    user.artist?
  end

  def update?
    user.artist?
  end

  protected
    attr_reader :user, :model
end
