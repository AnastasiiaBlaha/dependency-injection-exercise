require 'note'

describe Note do

    let(:our_formatter) { double :our_formatter}

    it 'displays a formatter notes' do
        note1 = Note.new('Hello', 'Hello world', our_formatter)
        allow(our_formatter).to receive(:format) { "Title: Hello\nHello world" }
        expect(note1.display).to eq "Title: Hello\nHello world"
    end

end