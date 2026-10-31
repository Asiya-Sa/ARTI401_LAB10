% --- DATASET (The valid users) ---
% Format: user(Username, Password).
user(admin, 1234).
user(ali, password).
user(sara, prolog).

% --- START PROGRAM ---
start :-
    write('Enter Username: '),
    read(User),
    write('Enter Password: '),
    read(Pass),
    check_login(User, Pass, 1).

% --- CHECK LOGIN (Base Cases) ---
% If login is correct, it succeeds and stops.
check_login(User, Pass, _) :-
    user(User, Pass), !,
    write('Login Successful'), nl.

% If attempt > 3, fail and print sorry message.
check_login(_, _, Attempt) :-
    Attempt > 3, !,
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.

% --- RECURSIVE STEP (Wrong Password) ---
% If the attempt is 1 or 2 (and not matched above), give the user another chance.
check_login(_, _, Attempt) :-
    write('Login Unsuccessful'), nl,
    write('Try again...'), nl,
    NewAttempt is Attempt + 1,
    write('Enter Username: '),
    read(NewUser),
    write('Enter Password: '),
    read(NewPass),
    check_login(NewUser, NewPass, NewAttempt).
