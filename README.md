# aocodeR

The goal of aocodeR is to help me solve and share my advent of code puzzles. 
There are parts

With the help of my colleague [**Phil Tooley**](https://twitter.com/acceleratedsci), I wrote a function (`aoc_get_input`) to get the input for a given day directly from the Advent of Code server. It defaults to inputs for `2017` puzzles but you can override that by supplying a different year to `year`. The server also needs to know who the user is so the path to a `.txt` file containing a users session cookie needs to be supplied to argument `cookie_path`. 

## Example

``` r

aoc_get_input(day = 1, cookie_path = "~/Documents/workflows/hackathon-output-repos/advent_of_code/secrets/session_cookie.txt")

```

### Getting your session cookie

In chrome, get your cookie details by clicking on the triple dot menu
#' (top right) > More tools > Developer tools > Application > Cookies. You need to copy the long
#' string in the `value` column for row `session`. Save that as a text file.
