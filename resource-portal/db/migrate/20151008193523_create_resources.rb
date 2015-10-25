class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title
      t.string :category
      t.string :address
      t.string :alternative_address
      t.string :phone_number
      t.string :alternative_phone_number
      t.string :website
      t.string :fax_number
      t.string :contact_email
      t.string :agency_email
      t.text :description_of_service

      t.timestamps null: false
    end
  end
end

#Command to invoke
=begin
rails generate model Resource title:string category:string 
address:string alternative_address:string phone_number:string 
alternative_phone_number:string website:string fax_number:string 
contact_email:string agency_email:string description_of_service:text
=end 

#rails generate migration remove NameofColumn NameofTable

#rails generate migration add_email_to_users email:string