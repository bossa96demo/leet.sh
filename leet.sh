#!/bin/sh


show_help() {
	echo "There are 5 modes of script."
	echo "The larger the number, the greater the amount of letters that are replaced."
	echo "0: simple, only vowels will be replaced"

	echo "1: nums, all leters that can be changed to numbers will be replaced"

	echo "2: medium, on the nex phase, text will become ugly"

	echo "3: hard, most of letters will be replaced, text is almost unreadable"

	echo "4: nuclear, ALL letters will be replaced, text is impossible to understand"
}

# Check if the --help flag is present
if [ "$1" = "--help" ]; then
	show_help
fi

# Define a hex color code
read -p "What mode do you want to use [0 - simple, 1 - nums, 2 - medium, 3 - hard, 4 - nuclear]
See help for more info: " mode

echo -n "Write your text, sed will replace "

if [ $mode -eq 0 ]; then
	echo -n "only vowels into leet"
	sed 's/a/4/g; s/i/1/g; s/e/3/g; s/i/1/g; s/o/0/g;' -
elif [ $mode -eq  1 ]; then
	echo "all leters that can be changed to numbers"
	sed 's/a/4/g; s/i/1/g; s/l/1/g; s/e/3/g; s/s/5/g; s/i/1/g;
	       	s/to/2/g; s/t/7/g; s/b/8/g; s/g/9/g; s/o/0/g; s/z/2/g' -

elif [ $mode -eq 2 ]; then
	echo "not small amount of letters"
	sed "s/a/4/g; s/i/1/g; s/e/3/g; s/i/1/g; s/o/0/g;
		s/l/1/g; s/s/5/g; s/to/2/g; s/t/7/g; s/b/8/g; s/g/9/g;
		s/y/\`\//g; s/f/pH/g; s/h/}{/g; s/k/X/g; s/z/2/g; s/x/></g; s/c/</g" -

elif [ $mode -eq 3 ]; then
	echo "most of letters"
	sed "s/a/4/g; s/i/1/g; s/e/3/g; s/i/1/g; s/o/0/g;
		s/l/1/g; s/s/5/g; s/to/2/g; s/t/7/g; s/b/8/g; s/g/9/g;
		s/y/\`\//g; s/u/|_|/g; s/p/|>/g; s/d/<|/g; s/f/pH/g; s/h/}{/g; s/k/X/g;
		s/z/2/g; s/x/></g; s/c/</g" -
		
elif [ $mode -eq 4 ]; then
	echo "ALL letters into leet"
	sed "s/a/4/g; s/i/1/g; s/e/3/g; s/i/1/g; s/o/0/g;
		s/l/1/g; s/s/5/g; s/to/2/g; s/t/7/g; s/b/8/g; s/g/9/g;
		s/q/0,/g; s/w/\\\|\//g; s/r/.-/g; s/y/\`\//g; s/u/|_|/g;
		s/p/|>/g; s/d/<|/g; s/f/pH/g; s/h/}{/g; s/j/.|/g; s/k/X/g;
		s/z/2/g; s/x/></g; s/c/</g; s/v/\//g; s/n/|\\\|/g; s/m/|v|/g;" -
fi
