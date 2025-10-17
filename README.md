# README for Username Validation Script

## Author Information
- Avery Williams
- CENG298 - Computer Science Colloquium
- HW 7: username.sh
- October 16, 2025

## Program Description
The program's purpose is to validate a username written in the username-input text file

## Username Requirements
This script validates usernames according to the following rules:
- Must start with a lowercase letter
- Can only contain lowercase letters, digits, and underscores
- Must be between 3 and 12 characters in length (inclusive)

## Usage
To run the script interactively:
```bash
./username.sh
```

To test with the provided input file:
```bash
./username.sh < username-input
```

## How the Script Works
[Explain in 3-5 sentences how your script validates usernames. Include information about:]
- The use of the `while` loop
- The `grep` command with extended regular expressions
- The meaning of the `-E` and `-v` flags
- The redirect `> /dev/null 2>&1`
The program first prints the instructions, then starts the while loop to read each line in the text file. The grep command with -E and -v deals with extended regular expresions like "{2,11}" and creates an invalid response respectively. >/dev/null 2>&1 moves any wrong usernames to the trash and doesn't show the error, so the whole thing looks cleaner.

## Regular Expression Pattern
The validation uses the following regular expression pattern:
```
^[a-z][a-z0-9_]{2,11}$
```
This pattern ensures that:
- The username starts with a lowercase letter `[a-z]`
- The following characters are lowercase letters, digits, or underscores `[a-z0-9_]`
- The total length is between 3 and 12 characters

## Testing Results
[Describe your testing process and results. Include:]
- Example valid usernames you tested (at least two)
    - dev_user, admin
- Example invalid usernames and why they fail (at least two)
    - ab: too little characters, test-user: invalid character "-"
- How you used the username-input file to test
    using command "./username.sh < username-input" makes each line in the file variables.

## Challenges and Solutions
I had trouble understanding some of the steps to properly clone my repository, but Prof. Miller helped when I went to her office hours
I don't know how to make it read all the names in the text file so I used the IFS command
I can't get the program to act on its own with it interactively and listing the text file so I have 2 bash files: 
- username.sh 
- usernameinterative.sh

## Resources
- Class Slides (Week 7 + 8)
- Prof. Miller's Office Hours (10/16/25)
- https://www.baeldung.com/linux/ifs-shell-variable for the use of IFS in the code

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
