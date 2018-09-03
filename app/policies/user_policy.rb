class UserPolicy < ApplicationPolicy
  attr_reader :post, :record

  def index?
    user.admin?
  end


  def show?
    user.admin? || user.moderator? || post.try(:user) == user
  end
end
