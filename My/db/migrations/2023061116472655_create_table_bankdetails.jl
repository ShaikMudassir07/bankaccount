module CreateTableBankdetails

import SearchLight.Migrations: create_table, column, columns, pk, add_index, drop_table, add_indices

function up()
  create_table(:bankdetails) do
    [
      pk()
      
      columns([
        #:column_name => :column_type
        :account_number => :int 
        :balance => :int
        :phone_number => :int
        :age => :int
      ])
    ]
  end

  
end

function down()
  drop_table(:bankdetails)
end

end
