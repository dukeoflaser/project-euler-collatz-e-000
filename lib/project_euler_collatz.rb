require 'pry'
require 'pry-nav'


def even_next(n)
  n = n / 2
end

def odd_next(n)
  n = (3 * n) + 1
end

def next_value(n)
  n.even? ? even_next(n) : odd_next(n)
end

def collatz(n)
  collatz_sequence = []
  
  until n == 1
    collatz_sequence << n
    n = next_value(n)
  end
  collatz_sequence << n
  
  collatz_sequence
end

def  longest_collatz(max=999999)
  
  # checked = []
  longest_seen_sequence = 0
  largest_starting_number = 0
  
  until max <= 1
  # binding.pry
    # unless checked.include?(max)
      sequence = collatz(max)
      # checked.push(*sequence)
      # checked.uniq!
      sequence_length = sequence.length
    
      if sequence_length > longest_seen_sequence
        longest_seen_sequence = sequence_length
        largest_starting_number = max
      end
    # end
      
  max -= 1
  end

  largest_starting_number
end

