module YNAB
  module API
    class UserWrapper
      JSON.mapping(
        user: User,
      )
    end
  end
end
