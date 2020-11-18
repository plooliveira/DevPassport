class TestPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def new?
    end

    def create?
      current_user.role == 3
    end

    def edit?
      user = current_user
    end

    def destroy?
      user = current_user
    end
  end
end
