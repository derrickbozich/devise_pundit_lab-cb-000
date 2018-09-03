class UserPolicy < ApplicationPolicy
  attr_reader  :record

  def index?
    user.admin?
  end


  def show?
    user.admin? || user.normal? || @user = user
  end

  def update?
    user.admin?
  end

  def destroy?
    user.admin?
  end
end
