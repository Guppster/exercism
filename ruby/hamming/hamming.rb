class Hamming
    def self.compute(compareTo, compareWith)

        if compareTo.length != compareWith.length
            raise ArgumentError, 'strand lengths not equal'
        end

        compareTo.chars.zip(compareWith.chars).count do |charTo, charWith|
            charTo != charWith
        end
    end
end

module BookKeeping
    VERSION = 3
end
