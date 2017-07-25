class FeaturePolicy
  attr_reader :user, :feature

  def initialize(current_user, model)
    @user = current_user
    @feature = model
  end

  def index?
    @user
  end

  def create?
    @user
  end

  def new?
    true
  end

  def show?
    @user
  end
  
  def edit?
    @user
  end

  def update?
    if @feature.locked? && @user.researcher?
      return true
    elsif @feature.locked?
      return false
    else
      @user.user? || @user.researcher?
    end
  end

  def destroy?
    @user.admin? || @user.editor? || @user.researcher?
  end

end
