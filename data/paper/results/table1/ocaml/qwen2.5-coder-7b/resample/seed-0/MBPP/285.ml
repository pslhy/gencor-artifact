(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters. *)
let rec text_match_two_three (text : string) : bool = 
  let is_abbs prefix = Sys_utils.equal prefix "abb" || Sys_utils.equal prefix "abbb" in
  let rec check_chars i =
    if i > String.length text - 3 then false
    else if Sys_utils.equal (String.sub text i 2) "ab" then
      is_abbs (String.sub text (i + 2) 2)
    else check_chars (i + 1)
  in
  check_chars 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:24: Unbound module "Sys_utils" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_two_three (text : string) : bool = 
  let is_abbs prefix = prefix = "abb" || prefix = "abbb" in
  let rec check_chars i =
    if i > String.length text - 3 then false
    else if String.sub text i 2 = "ab" then
      is_abbs (String.sub text (i + 2) 2)
    else check_chars (i + 1)
  in
  check_chars 0

