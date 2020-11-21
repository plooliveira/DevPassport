class TestPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope => Test
      scope.all
    end

    def index?
    end

    def new?
      true
    end

    def create?
    end

    def edit?
      raise

      record.user.role == 3
    end

    def update?
    end

    def destroy?
      is_company?
    end

    private

    def is_company?
      # user => current_user
      # record => @test
      # record.user.role == 3
    end
  end

  def index?
    true
  end
end
