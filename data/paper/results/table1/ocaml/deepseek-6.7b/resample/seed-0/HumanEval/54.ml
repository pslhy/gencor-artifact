(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Check if two words have the same characters. *)
(*     >>> same_chars "eabcdzzzz" "dddzzzzzzzddeddabc" *)
(*     true *)
(*     >>> same_chars "abcd" "dddddddabc" *)
(*     true *)
(*     >>> same_chars "dddddddabc" "abcd" *)
(*     true *)
(*     >>> same_chars "eabcd" "dddddddabc" *)
(*     false *)
(*     >>> same_chars "abcd" "dddddddabce" *)
(*     false *)
(*     >>> same_chars "eabcdzzzz" "dddzzzzzzzddddabc" *)
(*     false *)
let rec same_chars (s0 : string) (s1 : string) : bool =
    if s0 = "" && s1 = "" then true
    else if s0 = "" || s1 = "" then false
    else if String.contains s0 (String.get s1 0) then
             same_chars (String.filter ((<>) (String.get s1 0)) s0) (String.trim_left s1)
    else false;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:26: Unbound value "String.filter" *)
(*     Hint: Did you mean "iter"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec same_chars (s0 : string) (s1 : string) : bool =
    if s0 = "" && s1 = "" then true
    else if s0 = "" || s1 = "" then false
    else if String.contains s0 (String.get s1 0) then
             same_chars (String.iter ((<>) (String.get s1 0)) s0) (String.trim_left s1)
    else false;;

