let rec count_vowels (test_str : string) : int =
  if test_str = "" then 0
  else if test_str.[0] = 'a' || test_str.[0] = 'e' || test_str.[0] = 'i' || test_str.[0] = 'o' || test_str.[0] = 'u' then 1 + count_vowels (String.sub test_str 1 (String.length test_str - 1))
  else 0 + count_vowels (String.sub test_str 1 (String.length test_str - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count those characters which have vowels as their neighbors in the given string. *)
