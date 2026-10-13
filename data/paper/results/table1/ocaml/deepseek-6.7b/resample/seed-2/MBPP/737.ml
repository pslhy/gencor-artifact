(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given string is starting with a vowel or not using regex. *)
let rec check_str (string : string) : bool =
  let pattern = "^[aeiou]" in
  try
    ignore(String.search_forward ~pattern string 0);
    true
  with
  | Not_found -> false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:12: Unbound value "String.search_forward" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_str (string : string) : bool =
  let pattern = "^[aeiou]" in
  try
    ignore(String.index string ~sub:pattern);
    true
  with
  | Not_found -> false

