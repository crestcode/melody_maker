module MelodyMaker
  class Composer

    def compose(melody_length=7)
      Array.new(melody_length) { random_pitch }
    end

    private

    def random_pitch
      rand(1...15)
    end
  end
end