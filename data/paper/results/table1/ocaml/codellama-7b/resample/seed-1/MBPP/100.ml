(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
let rec next_smallest_palindrome (num : int) : int =
  let str = string_of_int num in
  let len = String.length str in
  if str = String.rev str then num + 1
  else
    let str' = String.sub str 0 (len - 1) in
    let str' = String.concat "" [str'; (string_of_int (num mod 10)); str'] in
    int_of_string str'

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:12: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec next_smallest_palindrome (num : int) : int =
  let str = string_of_int num in
  let len = String.length str in
  if str = "reverse_str" then num + 1
  else
    let str' = String.sub str 0 (len - 1) in
    let str' = String.concat "" [str'; (string_of_int (num mod 10)); str'] in
    int_of_string str'

