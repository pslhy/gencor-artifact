(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that matches a word containing 'z'. *)
let rec text_match_wordz (text : string) : bool = 
  let rec find_z (chars : char list) : bool = 
    match chars with
    | [] -> false
    | 'z' :: rest -> true
    | _ :: rest -> find_z rest
  in
  let chars = list_of_string text in
  find_z chars

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:15: Unbound value "list_of_string" *)
(*     Hint: Did you mean "int_of_string"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_wordz (text : string) : bool = 
  let rec find_z (chars : char list) : bool = 
    match chars with
    | [] -> false
    | 'z' :: rest -> true
    | _ :: rest -> find_z rest
  in
  let chars = String.to_list text in
  find_z chars

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:15: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_wordz (text : string) : bool = 
  let rec find_z (chars : char list) : bool = 
    match chars with
    | [] -> false
    | 'z' :: rest -> true
    | _ :: rest -> find_z rest
  in
  find_z (List.of_string text)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:11: Unbound value "List.of_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_wordz (text : string) : bool = 
  let rec find_z (chars : char list) : bool = 
    match chars with
    | [] -> false
    | 'z' :: rest -> true
    | _ :: rest -> find_z rest
  in
  find_z (String.to_list text)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:11: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_wordz (text : string) : bool = 
  (String.contains text 'z')

