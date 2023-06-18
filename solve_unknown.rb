# Make sure that story elements are kept on seperate lines.
character_fate = File.readlines("_narratives/outcomes/character_fates.txt")
dating_outcome = File.readlines("_narratives/outcomes/dating_outcomes.txt")

# Make the total imagined branch the size of the darkest path.
# branch_size = branch_1.size.to_i

# Imagined a compromise path that is neither ideal or tragic.
open("_imaginedpath/outcomes/nuetral_outcome.pl", "w") { |f|
  segment_1 = character_fate[1].strip
  segment_2 = dating_outcome[0].strip

  f.puts "#{segment_1} :- #{segment_2}"
}
