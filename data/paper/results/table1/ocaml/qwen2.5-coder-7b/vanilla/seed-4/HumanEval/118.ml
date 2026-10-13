let rec get_closest_vowel (word : string) : string = 
  let vowels = ["A"; "E"; "I"; "O"; "U"; "a"; "e"; "i"; "o"; "u"] in
  let rec helper i = 
    match String.length word - i with
    | 0 | 1 -> ""
    | _ -> 
        let char = String.get word i in
        if List.mem (String.make 1 char) vowels then
          let next_char = String.get word (i + 1) in
          if not (List.mem (String.make 1 next_char) vowels) then
            String.make 1 char
          else
            helper (i + 1)
        else
          helper (i + 1)
  in
  helper 0


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
