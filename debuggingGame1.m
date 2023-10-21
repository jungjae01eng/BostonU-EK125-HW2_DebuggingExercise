%% This program presents the user with a random selection and asks 
%% whether or not it is a "bug"

%% Initialize the array of test items. Each row has two strings - the name of
%% an item and a 0 or 1 indicating whether it counts as a bug.
testvalues = ["spider" "1"; "bumblebee" "1"; "slipper lobster" "1"; "wiretap" "1"; ...
    "labradoodle" "0"; "glitch" "1"; "pillbug" "1"; "VW Beetle" "1"; "Union label" "1"; ...
    "wasp" "1"; "Gronkowski" "0"; "feature" "0"];

%% Select a random row of the array
[r, c] = size(testvalues);
selectrow = randi(r, 1);   % Changed rand to randi beacause it has to be integer for the array
testelement = testvalues(selectrow, 1);

%% Find the second entry in the selected row and convert it from a string to a
%% number that can be used for logical tests
testanswer = str2double(testvalues(selectrow, 2));

%% Ask the user whether the element is a bug
the_bug = sprintf('\nIs a %s a bug?\nEnter y for yes, n for no: ', testelement);

%% Compare response to correct answer
response = input(the_bug, 's');

if response == 'y' || response == 'Y'   % In MATLAB, we cannot say "response == 'y' || 'y' because 'or' statement isn't used appropriately
    if testanswer
        opt_1 = sprintf('Good catch! A %s is a bug!\nPress any key to continue: ', testelement);
        dummy_var = input(opt_1, 's');
    else
        opt_2 = sprintf('Sorry, a %s isn''t a bug.\nPress any key to continue: ', testelement);
        dummy_var = input(opt_2, 's');
    end
elseif response == 'n' || response == 'N'   % Same reason as above
    if testanswer
        opt_3 = sprintf('Actually, a %s IS a bug!\nPress any key to continue: ', testelement);
        dummy_var = input(opt_3, 's');
    else
        opt_4 = sprintf('You''re right! A %s is NOT a bug!\nPress any key to continue: ', testelement);
        dummy_var = input(opt_4, 's');
    end
else
    opt_5 = sprintf('I didn''t understand your answer.\nPress any key to continue: ');
    dummy_var = input(opt_5, 's');
end
