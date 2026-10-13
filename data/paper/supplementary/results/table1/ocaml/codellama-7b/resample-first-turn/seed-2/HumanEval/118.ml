let rec get_closest_vowel (word : string) : string =
  match word with
  | "" -> ""
  | _ ->
    let rev_word = String.rev word in
    let is_vowel vowel =
      vowel = 'a' || vowel = 'e' || vowel = 'i' || vowel = 'o' || vowel = 'u'
    in
    let rec find_closest_vowel rev_word =
      match rev_word with
      | "" -> ""
      | [c] ->
        if is_vowel c then
          String.make 1 c
        else
          ""
      | c::c'::cs ->
        if is_vowel c then
          find_closest_vowel (c'::cs)
        else
          find_closest_vowel (c'::cs)
    in
    find_closest_vowel rev_word


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
