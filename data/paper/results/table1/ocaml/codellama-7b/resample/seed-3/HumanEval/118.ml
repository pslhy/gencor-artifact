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
  if String.length word <= 1 then
    ""
  else if Char.is_vowel (word.[String.length word - 2]) then
    String.make 1 word.[String.length word - 2]
  else
    get_closest_vowel (String.sub word 0 (String.length word - 2))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "Char.is_vowel" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_closest_vowel (word : string) : string =
  if String.length word <= 1 then
    ""
  else if Char.is_vowel (word.[String.length word - 2]) then
    String.make 1 word.[String.length word - 2]
  else
    get_closest_vowel (String.sub word 0 (String.length word - 2))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "Char.is_vowel" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_closest_vowel (word : string) : string =
  if String.length word <= 1 then
    ""
  else if Char.is_vowel(word.[String.length word - 2]) then
    String.make 1 word.[String.length word - 2]
  else
    get_closest_vowel (String.sub word 0 (String.length word - 2))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "Char.is_vowel" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_closest_vowel (word : string) : string =
  if String.length word <= 1 then
    ""
  else if (word.[String.length word - 2] == 'a' || word.[String.length word - 2] == 'e' || word.[String.length word - 2] == 'i' ||
        word.[String.length word - 2] == 'o' || word.[String.length word - 2] == 'u') then
    String.make 1 word.[String.length word - 2]
  else
    get_closest_vowel (String.sub word 0 (String.length word - 2))

