require "rubygems"
require "midi"

o = UniMIDI::Output.open(:first)

MIDI.using(o) do

  def play_note(oct)
    octave oct
    play 'C', 0.5
    play 'E', 0.5
    play 'G', 0.5
    play 'B', 0.5
  end

  [1,2,3,4,5].each do |octave_number|
    play_note octave_number
  end

end