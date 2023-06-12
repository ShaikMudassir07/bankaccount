module BankDetails

import SearchLight: AbstractModel, DbId
import Base: @kwdef

export BankDetail

@kwdef mutable struct BankDetail <: AbstractModel
  id::DbId = DbId()
  account_number::Int = 0
  balance::Int = 0
  loan_ammount::Int = 0




end
end


