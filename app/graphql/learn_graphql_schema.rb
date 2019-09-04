require 'types/mutation_type'
class LearnGraphqlSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
