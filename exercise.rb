ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

totals ={}
contestants = []

ballots.each do |ballot|
  ballot.values.each do |name|
    contestants << name
  end
end

contestants.uniq!

contestants.each do |contestant|
  totals[contestant] = 0
end

ballots.each do |ballot|
  ballot.each do |key, value|
    totals[value] += 4 - key
  end
end

p totals.sort_by {|_key, value| value}.reverse
