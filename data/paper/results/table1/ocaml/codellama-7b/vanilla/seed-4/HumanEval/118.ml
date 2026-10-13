let rec get_closest_vowel (word : string) : string =
  if String.length word = 1 then begin
    if (List.mem Char.lowercase_ascii word.[0] ['a'; 'e'; 'i'; 'o'; 'u']) then
      word.[0]
    else
      ""
  end else
    let last_index = String.length word - 2 in
    if (List.mem Char.lowercase_ascii word.[last_index] ['a'; 'e'; 'i'; 'o'; 'u']) &&
       (not (List.mem Char.lowercase_ascii word.[last_index + 1] ['a'; 'e'; 'i'; 'o'; 'u']))
    then
      word.[last_index]
    else
      get_closest_vowel (String.sub word 0 last_index)

let () =
  print_endline (get_closest_vowel "yogurt");
  print_endline (get_closest_vowel "FULL");
  print_endline (get_closest_vowel "quick");
  print_endline (get_closest_vowel "ab")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
