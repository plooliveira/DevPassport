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
    record.user == user
  end

  def show?
    record.user == user
  end

  def check_payment?
    record.user == user
  end
end
