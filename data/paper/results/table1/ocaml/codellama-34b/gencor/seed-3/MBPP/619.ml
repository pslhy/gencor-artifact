
let rec move_num (test_str : string) : string =
  if test_str = "" then ""
  else if Char.code (test_str.[0]) = Char.code(test_str.[0]) then test_str.[0] :: move_num (String.sub test_str 1 ((test_str. (-1)) + 1))
  else move_num (String.sub test_str 1 (test_str. (-1))

test_str = "abcd1234efgh567";

print_string (move_num test_str)

"efgh567abcd1234"

test_str = "123abcd456efgh";

print_string (move_num test_str)

"abcd456efgh123"

test_str = "12345678";

print_string (move_num test_str)

"12345678"

test_str = "";

print_string (move_num test_str)

""

test_str = "abcd";

print_string (move_num test_str)

"abcd"

test_str = "$%^&*()0987654321";

print_string (move_num test_str)

"$%^&*()0987654321"

test_str = "123abc456def789";

print_string (move_num test_str)

"abc456def789123"

test_str = "abbdef789";

print_string (move_num test_str)

"abbdef789"

test_str = "123";

print_string (move_num test_str)

"123"

test_str = "abcd1234efgh";

print_string (move_num test_str)

"efgh1234abcd"

test_str = "123abcd456efgh";

print_string (move_num test_str)

"abcd456efgh123"

test_str = "12345678";

print_string (move_num test_str)

"12345678"

test_str = "";

print_string (move_num test_str)

""

test_str = "abcd";

print_string (move_num test_str)

"abcd"

test_str = "$%^&*()0987654321";

print_string (move_num test_str)

"$%^&*()0987654321"

test_str = "123abc456def789";

print_string (move_num test_str)

"abc456def789123"

test_str = "abbdef789";

print_string (move_num test_str)

"abbdef789"

test_str = "123";

print_string (move_num test_str)

"123"

test_str = "abcd1234efgh";

print_string (move_num test_str)

"efgh1234abcd"

test_str = "123abcd456efgh";

print_string (move_num test_str)

"abcd456efgh123"

test_str = "12345678";

print_string (move_num test_str)

"12345678"

test_str = "";

print_string (move_num test_str)

""

test_str = "abcd";

print_string (move_num test_str)

"abcd"

test_str = "$%^&*()0987654321";

print_string (move_num test_str)

"$%^&*()0987654321"

test_str = "123abc456def789";

print_string (move_num test_str)

"abc456def789123"

test_str = "abbdef789";

print_string (move_num test_str)

"abbdef789"

test_str = "123";

print_string (move_num test_str)

"123"

test_str = "abcd1234efgh";

print_string (move_num test_str)

"efgh1234abcd"

test_str = "123abcd456efgh";

print_string (move_num test_str)

"abcd456efgh123"

test_str = "12345678";

print_string (move_num test_str)

"12345678"

test_str = "";

print_string (move_num test_str)

""

test_str = "abcd";

print_string (move_num test_str)

"abcd"

test_str = "$%^&*()0987654321";

print_string (move_num test_str)

"$%^&*()0987654321"

test_str = "123abc456def789";

print_string (move_num test_str)

"abc456def789123"

test_str = "abbdef789";

print_string (move_num test_str)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
