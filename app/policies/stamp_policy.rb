class StampPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def payment?
    true
  end

  def show?
    record.user == user
  end
end
