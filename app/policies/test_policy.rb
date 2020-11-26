class TestPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
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
