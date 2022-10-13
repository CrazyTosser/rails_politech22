module Types
  class MutationType < Types::BaseObject
    field :create_resort, ResortType, 'Create new Resort' do
      argument :name, String
      argument :email, String
      argument :descrition, String
    end
    field :create_apartment, ApartmentType, "Create new Apartment" do
      argument :room_type, String
      argument :description, String
      argument :resort_id, Int
    end

    def create_resort(name:, email:, descrition:)
      new_resort = Resort.create(name: name, email: email, descrition: descrition)
      new_resort
    end
    def create_apartment(room_type:, description:, resort_id:)
      new_apartment = Appartament.create(room_type: room_type, description: description, resort_id: resort_id)
      new_apartment
    end
  end
end
