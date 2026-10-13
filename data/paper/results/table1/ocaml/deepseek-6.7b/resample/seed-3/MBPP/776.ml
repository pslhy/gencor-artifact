(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count those characters which have vowels as their neighbors in the given string. *)
let rec count_vowels (test_str : string) : int =
  let len = String.length test_str in
  let rec helper (pos : int) (count : int) : int =
    if pos >= len then count
    else
      let next_char  = if pos + 1 < len then Char.lowercase (String.get test_str (pos + 1)) else ' ' in
      let prev_char  = if pos - 1 >= 0 then Char.lowercase (String.get test_str (pos - 1)) else ' ' in  
      let is_vowel c = c = 'a' || c = 'e' || c = 'i' || c = 'o' || c = 'u' in
      let new_count = if is_vowel prev_char && is_vowel next_char then count + 1 else count in
      helper (pos + 1) new_count
  in
  helper 0 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:46: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_vowels (test_str : string) : int =
  let len = String.length test_str in
  let rec helper (pos : int) (count : int) : int =
    if pos >= len then count
    else
      let next_char  = if pos + 1 < len then Char.lowercase (String.get test_str (pos + 1)) else ' ' in
      let prev_char  = if pos - 1 >= 0 then Char.lowercase (String.get test_str (pos - 1)) else ' ' in  
      let is_vowel c = c = 'a' || c = 'e' || c = 'i' || c = 'o' || c = 'u' in
      let new_count = if is_vowel prev_char && is_vowel next_char then count + 1 else count in
      helper (pos + 1) new_count
  in
  helper 0 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:46: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_vowels (test_str : string) : int =
  let len = String.length test_str in
  let rec helper (pos : int) (count : int) : int =
    if pos >= len then count
    else
      let next_char  = if pos + 1 < len then String.make 1 (String.get test_str (pos + 1)) else ' ' in
      let prev_char  = if pos - 1 >= 0 then String.make 1 (String.get test_str (pos - 1)) else ' ' in  
      let is_vowel c = c = 'a' || c = 'e' || c = 'i' || c = 'o' || c = 'u' in
      let new_count = if is_vowel prev_char && is_vowel next_char then count + 1 else count in
      helper (pos + 1) new_count
  in
  helper 0 0

