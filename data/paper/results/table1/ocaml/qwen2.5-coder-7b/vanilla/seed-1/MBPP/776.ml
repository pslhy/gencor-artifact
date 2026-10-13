let rec count_vowels (test_str : string) : int = 
  let rec check_neighbors idx count =
    if idx >= String.length test_str then count
    else
      let current_char = String.get test_str idx in
      let prev_char = if idx > 0 then String.get test_str (idx - 1) else ' ' in
      let next_char = if idx < String.length test_str - 1 then String.get test_str (idx + 1) else ' ' in
      let is_vowel ch = List.mem ch ['a'; 'e'; 'i'; 'o'; 'u'; 'A'; 'E'; 'I'; 'O'; 'U'] in
      let count =
        if (is_vowel prev_char || is_vowel next_char) && is_vowel current_char then count + 1 else count
      in
      check_neighbors (idx + 1) count
  in
  check_neighbors 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count those characters which have vowels as their neighbors in the given string. *)
