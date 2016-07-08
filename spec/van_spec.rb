require 'van'

describe Van do

  context 'respends to' do
    it {is_expected.to respond_to :capacity}
  end

end
