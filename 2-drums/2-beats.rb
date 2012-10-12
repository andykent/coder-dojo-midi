require "rubygems"
require "midi"

o = UniMIDI::Output.open(:first)

MIDI.using(o) do

  8.times do
    play 'C', 0.2
    play 'E', 0.1
    play 'D', 0.1
  end

end