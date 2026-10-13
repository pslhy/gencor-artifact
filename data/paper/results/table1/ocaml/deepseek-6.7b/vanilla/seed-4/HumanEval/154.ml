let rec cycpattern_check (a : string) (b : string) : bool =
  if a = b then
    true
  else if String.length a < String.length b then
    false
  else
    cycpattern_check (String.sub a 1 (String.length a - 1) ^ String.make 1 (String.get a 0)) b
    || cycpattern_check (String.sub a (String.length a - 1) 1 ^ String.sub a 0 (String.length a - 1)) b
    || cycpattern_check (String.sub a 1 (String.length a - 1)) b;;

print_string (string_of_bool (cycpattern_check "abcd" "abd")); print_newline ();
print_string (string_of_bool (cycpattern_check "hello" "ell")); print_newline ();
print_string (string_of_bool (cycpattern_check "whassup" "psus")); print_newline ();
print_string (string_of_bool (cycpattern_check "abab" "baa")); print_newline ();
print_string (string_of_bool (cycpattern_check "efef" "eeff")); print_newline ();
print_string (string_of_bool (cycpattern_check "himenss" "simen")); print_newline ();


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given 2 words. You need to return true if the second word or any of its rotations is a substring in the first word *)
(*     >>> cycpattern_check "abcd" "abd" *)
(*     false *)
(*     >>> cycpattern_check "hello" "ell" *)
(*     true *)
(*     >>> cycpattern_check "whassup" "psus" *)
(*     false *)
(*     >>> cycpattern_check "abab" "baa" *)
(*     true *)
(*     >>> cycpattern_check "efef" "eeff" *)
(*     false *)
(*     >>> cycpattern_check "himenss" "simen" *)
(*     true *)
