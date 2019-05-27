module YNAB
  module API
    class TransactionsWrapper
      JSON.mapping(
        transactions: Array(TransactionDetail),
        server_knowledge: Int64,
      )
    end
  end
end
