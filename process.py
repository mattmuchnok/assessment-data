log_file = open("um-server-01.txt")  # assigns the function of opening a text file as a string to the variable log_file


def sales_reports(log_file):  # defines a function with one parameter
    for line in log_file:  # begins a for in loop which will look at each new line in what was passed in to the parameter as an argument
        line = line.rstrip()  # re-assigns to the variable of line the same lines after any trailing characters (characters at the end of a string) have been removed using the method rstrip()
        day = line[0:3] # assigns to the variable day the first 3 characters of each new line. this treats the strings similiar to an array and essentially says, return the first 3 values of a zero-based index starting (inclusive) at 0 and ending at position 3 (exclusive). so, if a line reads "Sat 2014-05-17: 5 Ancient Watermelon delivered to User 143", Sat is assigned as the value of day with a type of string
        if day == "Mon":  # begins a conditional if statement which compares the value of day to the string "Mon" (was previously Tue, changed per test instructions)
            print(line)  # if the previous condition is True, then this console logs the vaue of line, which in this case was previously defined and stripped of trailing characters


sales_reports(log_file)  # calls the function sales_report with an argument of log_file, a variable
