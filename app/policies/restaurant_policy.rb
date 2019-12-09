class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # if user.admin?
      #   scope.all
      # else
      #   scope.where(approved: true)
      # end
    end
  end

  def show?
    true
  end

  def update?
    record.user == user
  end
end
