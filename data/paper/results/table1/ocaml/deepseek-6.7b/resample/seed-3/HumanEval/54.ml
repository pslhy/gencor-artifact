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
  let s0 = String.sort compare (String.lowercase_ascii s0) in
  let s1 = String.sort compare (String.lowercase_ascii s1) in
  s0 = s1;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:12: Unbound value "String.sort" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec same_chars (s0 : string) (s1 : string) : bool =
  let s0 = String.sort (String.lowercase_ascii s0) in
  let s1 = String.sort (String.lowercase_ascii s1) in
  s0 = s1;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:12: Unbound value "String.sort" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec same_chars (s0 : string) (s1 : string) : bool =
  let s0_list = List.sort compare (String.lowercase_ascii (String.to_list s0)) in
  let s1_list = List.sort compare (String.lowercase_ascii (String.to_list s1)) in
  s0_list = s1_list;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:60: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec same_chars (s0 : string) (s1 : string) : bool =
  let s0_list = List.sort_uniq compare (String.lowercase_ascii (String.split "" s0)) in
  let s1_list = List.sort_uniq compare (String.lowercase_ascii (String.split "" s1)) in
  s0_list = s1_list;;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:65: Unbound value "String.split" *)
(*     Hint: Did you mean "blit"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec same_chars (s0 : string) (s1 : string) : bool =
  let s0_list = List.sort_uniq compare (String.lowercase_ascii (String.split "" s0)) in
  let s1_list = List.sort_uniq compare (String.lowercase_ascii (String.split "" s1)) in
  s0_list = s1_list;;

