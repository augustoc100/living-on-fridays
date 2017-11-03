require 'rails_helper'

RSpec.describe Point, type: :model do

  it 'when all attributes are passed'do
  subject = described_class.new(attributes)

  expect(subject.name).to eq attributes[:name]
  expect(subject.description).to eq attributes[:description]
end

  def attributes
    {
      name: 'batatlandia',
      description: "a batata mais top da região então chupa"
    }
  end
end
