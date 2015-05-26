# Escape Sequences #
# \t tabs in the string.
tabby_cat = "\tI'm tabbed in."
# \n starts a new line
persian_cat = "I'm split\non a line."
# \\ escapes the \, allowing you to print it.
backslash_cat = "I'm \\ a \\ cat."

fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"""

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat