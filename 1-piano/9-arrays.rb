require "rubygems"
require "midi"

o = UniMIDI::Output.open(:first)

MIDI.using(o) do

  def play_note(oct)
    octave oct
    ['C', 'E', 'G', 'B'].each do |letter|
      play letter, 0.5
    end
  end

  [1,2,3,4,5].each do |octave_number|
    play_note octave_number
  end

end