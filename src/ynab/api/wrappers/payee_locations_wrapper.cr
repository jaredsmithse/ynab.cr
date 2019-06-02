module YNAB
  module API
    class PayeeLocationsWrapper
      JSON.mapping(
        payee_locations: Array(PayeeLocation)
      )
    end
  end
end
