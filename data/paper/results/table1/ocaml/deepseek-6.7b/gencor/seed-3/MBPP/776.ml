
let rec count_vowels (test_str : string) : int =
  let len = String.length test_str in
  let rec helper (pos : int) (count : int) : int =
    if pos >= len then count
    else
      let next_char  = if pos + 1 < len then Char.lowercase_ascii (String.get test_str (pos + 1)) else ' ' in
      let prev_char  = if pos - 1 >= 0 then Char.lowercase_ascii (String.get test_str (pos - 1))  else ' ' in
      let new_count  = if List.mem next_char ['a' ; 'e' ; 'i' ; 'o' ; 'u'] || List.mem prev_char ['a' ; 'e' ; 'i' ; 'o' ; 'u'] then count + 1 else count in
      helper (pos + 1) new_count in
  helper 0 0
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count those characters which have vowels as their neighbors in the given string. *)
