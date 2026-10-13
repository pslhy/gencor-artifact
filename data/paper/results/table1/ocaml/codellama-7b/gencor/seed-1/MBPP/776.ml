
let rec count_vowels (test_str : string) : int =
match String.length test_str with
0 -> 0
| _ ->
let head = String.get test_str 0 in
let tail = String.sub test_str 1 (String.length test_str - 1) in
match (head = "a" || head = "e" || head = "i" || head = "o" || head = "u") with
false -> count_vowels tail
true 
  | _ -> count_vowels tail + 1
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count those characters which have vowels as their neighbors in the given string. *)
