module YNAB
  module API
    class AccountsWrapper
      JSON.mapping(
        accounts: Array(Account),
        server_knowledge: Int64,
      )
    end
  end
end
