require "rubygems"
require "midi"

o = UniMIDI::Output.open(:first)

MIDI.using(o) do

  8.times do
    play 'C', 0.5
  end

end