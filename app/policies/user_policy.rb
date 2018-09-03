class UserPolicy < ApplicationPolicy
  attr_reader :post, :record



  def show?
    user.admin? || user.moderator? || post.try(:user) == user
  end
end
