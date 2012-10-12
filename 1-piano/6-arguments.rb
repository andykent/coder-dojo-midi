require "rubygems"
require "midi"

o = UniMIDI::Output.open(:first)

MIDI.using(o) do

  def play_note(oct)
    octave oct
    play 'C', 1
  end

  play_note 2

  play_note 3

end