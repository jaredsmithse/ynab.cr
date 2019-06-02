module YNAB
  module API
    class PayeeLocationWrapper
      JSON.mapping(
        payee_location: PayeeLocation
      )
    end
  end
end
