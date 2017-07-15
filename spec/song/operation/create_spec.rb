require 'rails_helper'

RSpec.describe Song::Create do
  it 'create song' do
    result = Song::Create.call()
    expect( result.success? ).to be_truthy
  end
end
