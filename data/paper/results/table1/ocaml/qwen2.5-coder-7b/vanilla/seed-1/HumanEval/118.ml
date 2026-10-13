let rec get_closest_vowel (word : string) : string = 
  let vowels = "aeiouAEIOU" in 
  let rec helper (chars : char list) (prev : char option) (closest : char option) = 
    match chars with 
    | [] -> Option.value closest ""
    | h::t -> 
      if String.contains vowels (String.make 1 h) then 
        (match prev with 
         | Some p when not (String.contains vowels (String.make 1 p)) -> 
           helper t (Some h) (Some h)
         | _ -> helper t (Some h) closest)
      else 
        helper t (Some h) closest
  in 
  helper (List.rev (String.toList word)) None None


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
