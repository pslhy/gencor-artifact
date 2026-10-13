let rec get_closest_vowel (word : string) : string =
  match word with
  | "" -> ""
  | _ ->
    let rec find_closest_vowel (word : string) (start_index : int) : int =
      match word.[start_index] with
      | 'a' | 'e' | 'i' | 'o' | 'u' -> start_index
      | _ ->
        if start_index - 1 >= 0 then
          find_closest_vowel word (start_index - 1)
        else
          -1
    in
    let closest_vowel_index = find_closest_vowel word (String.length word - 1) in
    if closest_vowel_index = -1 then
      ""
    else
      String.make 1 word.[closest_vowel_index]


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
