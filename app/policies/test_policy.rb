class TestPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope => Test
      scope.where(user: user)
    end

    def new?
    end

    def create?
      user.role == 3
    end

    def edit?
      is_company?
    end

    def update?
      is_company?
    end

    def destroy?
      is_company?
    end

    private

    def is_company?
      # user => current_user
      # record => @test
      record.user == user
  end
end
