class ProfilePolicy < ApplicationPolicy
  def index?
    @current_user
  end

  def show?
    @current_user
  end

  def new?
    @current_user
  end

  def create?
    @current_user
  end

  def update?
    @current_user && @current_user.profile == @record
  end

  def edit?
    @current_user && @current_user.profile == @record
  end

  def destroy?
    @current_user && @current_user.profile == @record
  end
end
