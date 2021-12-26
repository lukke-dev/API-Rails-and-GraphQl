class Mutations::UpdateUser < Mutations::BaseMutation
  argument :id, Integer, required: true
  argument :name, String, required: true
  argument :email, String, required: true

  field :user, Types::UserType, null: false
  field :response, String, null: false
  field :errors, [String], null: false

  def resolve(id:, name:, email:)
    user = User.find(id)
    if user.update(name: name, email: email)
      {
        user: user,
        response: "Usuario #{user.id} atualizado com sucesso!",
        errors: []
      }
    else
      {
        user: nil,
        response: nil,
        errors: user.errors.full_messages
      }
    end
  end
end
