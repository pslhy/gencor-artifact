(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You are given a word. Your task is to find the closest vowel that stands between *)
(*     two consonants from the right side of the word (case sensitive). *)
(*     Vowels in the beginning and ending doesn't count. Return empty string if you didn't *)
(*     find any vowel met the above condition. *)
(*     You may assume that the given string contains English letter only. *)
(*     Example: *)
(*     >>> get_closest_vowel "yogurt" *)
(*     "u" *)
(*     >>> get_closest_vowel "FULL" *)
(*     "U" *)
(*     >>> get_closest_vowel "quick" *)
(*     "" *)
(*     >>> get_closest_vowel "ab" *)
(*     "" *)
let rec get_closest_vowel (word : string) : string = 
  let vowels = "aeiouAEIOU" in
  let rec helper (index : int) : string = 
    if index <= 1 || index >= String.length word - 1 then ""
    else if 
      String.mem word.[index - 1] vowels && String.mem word.[index + 1] vowels then
      String.make 1 word.[index]
    else helper (index - 1)
  in
  helper (String.length word - 1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:7: Unbound value "String.mem" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_closest_vowel (word : string) : string = 
  let vowels = "aeiouAEIOU" in
  let rec helper (index : int) : string = 
    if index <= 1 || index >= String.length word - 1 then ""
    else if 
      String.contains vowels word.[index - 1] && String.contains vowels word.[index + 1] then
      String.make 1 word.[index]
    else helper (index - 1)
  in
  helper (String.length word - 1)

