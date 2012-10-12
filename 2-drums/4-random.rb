require "rubygems"
require "midi"

o = UniMIDI::Output.open(:first)

MIDI.using(o) do

  def drum_loop(x)
    x.times do
      play 'C', 0.2
      play 'E', 0.1
      play 'D', 0.1
    end
  end

  8.times do
    drum_loop 4
    sleep rand
  end

end