%% This program asks the user to guess a random integer in the specific range from 1
%% to 50. It will prompt the user until the correct integer is guessed and
%% then print how many tries it took to guess the correct number!

%% Generate the random integer in the range from 1 to 50
max_num = 50;
generator = randi(max_num);

fprintf(['Are you a good guesser? Let''s play one last game!\nIn the Command Window,' ...
    ' guess any random integer in the range from 1 to %d.\n'], max_num)

%% Prompt the user for a guess
% Take 's' out from the input statement because we are tryng to get a
% integer from the user not the string.
guess = input('Guess any integer in the range from 1 to 50: ');

%% Loop to check until the guess is correct and print how many times it took
%% to guess the correct integer!
count = 1;
if guess == generator
    fprintf('Wow! You guessed %d with only %d try!', generator, count)
end

% Add "count=count+1" on both if and elseif statement to count how many
% times the user tried to guess the number.

% Also, take 's' out from the input statement because we are still trying
% to get a integer from the user not the string.

while guess ~= generator
    if guess < generator
        guess = input('A little higher... guess again: ');
        count=count+1;
    elseif guess > generator
        guess = input('A little lower... guess again: ');
        count=count+1;
    end
end
fprintf('Nice! You finally guessed %d and it took %d tries.', generator, count)
