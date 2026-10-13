
let rec get_closest_vowel (word : string) : string =
    let len = String.length word in
    let rec loop (i : int) (j : int) =
        if i = len - 1 || j = len - 1 then ""
        else
            let c = Char.lowercase_ascii word.[j] in
            if c = 'a' || c = 'e' || c = 'i' || c = 'o' || c = 'u' then
                String.make 1 c
            else
                loop i (j + 1)
    in loop 0 0

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
