require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe "Associations" do
    it { should have_many(:tank_type) }
    it { should have_many(:measurement_types) }
  end
end
