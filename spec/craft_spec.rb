require './lib/person'
require './lib/craft'
require './lib/event'

RSpec.describe Craft do
  before :each do
    @craft = Craft.new('knitting', {yarn: 20, scissors: 1, knitting_needles: 2})

    @hector = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})
    @toni = Person.new({name: 'Toni', interests: ['sewing', 'knitting']})

    @sewing = Craft.new('sewing', {fabric: 5, scissors: 1, thread: 1, sewing_needles: 1})
    @knitting = Craft.new('knitting', {yarn: 20, scissors: 1, knitting_needles: 2})

    @event = Event.new("Carla's Craft Connection", [@sewing, @knitting], [@hector, @toni])
  end

  it 'exists' do
    expect(@craft).to be_an_instance_of(Craft)
  end

  it 'has attributes' do
    expect(@craft.name).to eq('knitting')
    expect(@craft.supplies_required).to eq({yarn: 20, scissors: 1, knitting_needles: 2})
  end

end
