module YNAB
  module API
    class PayeesWrapper
      JSON.mapping(
        payees: Array(Payee),
        server_knowledge: Int64,
      )
    end
  end
end
