% --- Email Validator ---
% Goal: replace the following regex statement: ^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$


% domain is letters numbers fewer character
% a top level domain is just letters and only from a set




% shusterlev@gmail.com
% username - characters with sybols
% @ then domain

% host name and a top level domain
% top level domain is white listed



% Visualization: https://regexper.com/#%5E%5Ba-zA-Z0-9.!%23%24%25%26'*%2B%2F%3D%3F%5E_%60%7B%7C%7D~-%5D%2B%40%5Ba-zA-Z0-9-%5D%2B%28%3F%3A%5C.%5Ba-zA-Z0-9-%5D%2B%29*%24


% By Lev Shuster
% 6/7/2023

% username @ domain . topdomain

email --> user_name, [@], domain.
domain --> mail_server, [.], top_level_domain.

% --- User Validation ---

% username is a bunch of different types of character

user_name --> [Char], [], { user_name_char(Char) }.
user_name --> [Char], user_name, { user_name_char(Char) }.
user_name_char(Char) :-
	char_type(Char,alnum);
	member(Char, ['-', '.', '!', '#', '$', '%', '&', '\'', '*', '+',
				  '/', '=', '?', '^', '_', '`', '{', '|', '}', '~']).

% --- Domain Validation ---

mail_server --> [Char], [], { mail_server_char(Char) }.
mail_server --> [Char], mail_server, { mail_server_char(Char) }.
mail_server_char(Char) :-
	char_type(Char,alnum);
	member(Char, ['-', '.']).

top_level_domain --> [Char], [], { char_type(Char,alpha) }.
top_level_domain --> [Char], top_level_domain, { char_type(Char,alpha) }.

% --- Helper Functions ---

is_valid_email(String):-
	string_chars(String, CharList),
	phrase(email, CharList).
