let rec get_closest_vowel (word : string) : string = 
  let rec helper (chars : char list) (last_vowel : char option) : char option = 
    match chars with
    | [] -> last_vowel
    | x::y::xs -> 
        if String.contains "aeiouAEIOU" x && not (String.contains "aeiouAEIOU" y) && not (String.contains "aeiouAEIOU" (Option.value ~default:' '` chars)) then
          helper (y::xs) (Some y)
        else
          helper (y::xs) last_vowel
  in
  match helper (List.rev (String.to_list word)) None with
  | Some v -> String.make 1 v
  | None -> ""


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
