class TestPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def index?
    true
  end

  def create?
    user.role == 3
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

end
