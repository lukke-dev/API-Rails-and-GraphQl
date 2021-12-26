class Mutations::DeleteUser < Mutations::BaseMutation
  argument :id, Integer, required: true

  field :response, String, null: false
  field :errors, [String], null: false

  def resolve(id:)
    user = User.find(id)
    if user.destroy
      {
        response: 'Usuario deletado com sucesso',
        errors: []
      }
    else
      {
        user: nil,
        errors: user.errors.full_messages
      }
    end
  end
end
