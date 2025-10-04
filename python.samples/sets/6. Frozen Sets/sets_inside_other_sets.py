# Frozensets of the harmonized C major scale triads
c_major_triads = {
    frozenset(["C", "E", "G"]),    # C major (I)
    frozenset(["D", "F", "A"]),    # D minor (ii)
    frozenset(["E", "G", "B"]),    # E minor (iii)
    frozenset(["F", "A", "C"]),    # F major (IV)
    frozenset(["G", "B", "D"]),    # G major (V)
    frozenset(["A", "C", "E"]),    # A minor (vi)
    frozenset(["B", "D", "F"]),    # B diminished (vii°)
}

# Notes played by a guitarist (could include repeated notes)
played_notes = ["E", "B", "E", "G", "B", "E"]
# Remove duplicates by turning into a set
unique_played_notes = set(played_notes) # set("E", "B", "G")

# Check if the played notes form a valid triad from the C major harmonization
if frozenset(unique_played_notes) in c_major_triads:
    print("You played a valid triad from the C major scale!")
else:
    print("Not a triad from the C major scale.")