let rec count_vowels (test_str : string) : int = 
  let is_vowel ch = 
    match ch with
    | 'a' | 'e' | 'i' | 'o' | 'u' | 'A' | 'E' | 'I' | 'O' | 'U' -> true
    | _ -> false
  in
  let rec helper str acc =
    match str with
    | "" -> acc
    | ch1::ch2::rest when is_vowel ch1 && is_vowel ch2 -> helper (ch2::rest) (acc + 1)
    | ch1::ch2::rest | ch1::[] -> helper rest acc
  in
  helper (String.to_list test_str) 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count those characters which have vowels as their neighbors in the given string. *)
