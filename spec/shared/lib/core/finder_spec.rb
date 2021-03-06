require 'spec_helper'
require 'shared/core/finder'

describe Shared::Core::Finder do
  subject { described_class }

  context 'when model exists' do
    it 'finds a record' do
      model = double(:model)

      stub_const('Shared::Model', model)

      expect(model).to receive(:find_by).with(name: 'Peter').and_return(:record)

      record = subject.find_model_by(name: 'Peter')

      expect(record).to eql(:record)
    end
  end

  context 'when model does not exists' do
    it 'raises an error' do
      expect { subject.find_bogus_model_by(name: 'Peter') }.to raise_error(ArgumentError, 'Cannot find model \'Shared::BogusModel\'')
    end
  end
end
