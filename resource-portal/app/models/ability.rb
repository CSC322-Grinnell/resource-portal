class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new 
    if user.is? :admin
       can :manage, :all
    else
<<<<<<< HEAD
       can :read, Resource
=======
       can :read, :all
>>>>>>> 1a89b8d485f789bed4f7c2036a4921aac1af1902
    end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
