let rec count_vowels (test_str : string) : int =
  match test_str with
  | "" -> 0
  | "a" -> 0
  | "e" -> 0
  | "i" -> 0
  | "o" -> 0
  | "u" -> 0
  | _ -> count_vowels (String.sub test_str 1 (String.length test_str - 1)) + 1;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count those characters which have vowels as their neighbors in the given string. *)
