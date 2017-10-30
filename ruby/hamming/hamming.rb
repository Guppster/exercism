class Hamming
    def self.compute(compareTo, compareWith)

        compareToChars = compareTo.split('')
        compareWithChars = compareWith.split('')

        if compareToChars.length != compareWithChars.length
            raise ArgumentError
        end

        hamming = 0

        for index in 0..compareToChars.length
            if compareToChars[index] != compareWithChars[index]
                hamming += 1
            end
        end

        return hamming
    end
end

module BookKeeping
    VERSION = 3
end
