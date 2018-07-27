# README

This is my solution to the Codewars Kata [Text Align Justify](https://www.codewars.com/kata/text-align-justify/train/ruby)

The challenge is to convert a string to be justified (as it would be justified HTML) based on a specific width:

- Use spaces to fill in the gaps between words.
- Each line should contain as many words as possible.
- Use '\n' to separate lines.
- Gap between words can't differ by more than one space.
- Lines should end with a word not a space.
- '\n' is not included in the length of a line.
- Large gaps go first, then smaller ones: 'Lorem---ipsum---dolor--sit--amet' (3, 3, 2, 2 spaces).
- Last line should not be justified, use only one space between words.
- Last line should not contain '\n'
- Strings with one word do not need gaps ('somelongword\n').

For example, with width 30:

    Lorem  ipsum  dolor  sit amet,
    consectetur  adipiscing  elit.
    Vestibulum    sagittis   dolor
    mauris,  at  elementum  ligula
    tempor  eget.  In quis rhoncus
    nunc,  at  aliquet orci. Fusce
    at   dolor   sit   amet  felis
    suscipit   tristique.   Nam  a
    imperdiet   tellus.  Nulla  eu
    vestibulum    urna.    Vivamus
    tincidunt  suscipit  enim, nec
    ultrices   nisi  volutpat  ac.



# STYLISTIC CHOICES

I have aimed for readability over brevity in this solution. It is a reasonably complex solution, so I have seperated
out the main components into seperate fuctions: dividing the text into lines of the right size, adding spaces appropriately to lines and seperate treatment of the final line.

# TESTS

I have included 5 test scenarios:

- short string (9 characters) with a width of 10
- long string (200+ characters) with width of 15
- long string (200+ characters) with width of 20
- long string (200+ characters) with width of 25
- long string (200+ characters) with width of 30

The solution has also passed all of the additional tests from codewars, but exact details of these are not provided
by the site.
