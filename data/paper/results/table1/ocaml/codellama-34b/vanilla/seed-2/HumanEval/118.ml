let rec get_closest_vowel (word : string) : string =
    let vowels = ['a'; 'e'; 'i'; 'o'; 'u'] in
    if String.length word <= 2 then ""
    else
        let rec aux i =
            match String.get word i, String.get word (i+1), String.get word (i+2) with
            | c, v, _ when List.mem v vowels && not (List.mem c vowels) -> v
            | _, _, e when e = word.[String.length word - 1] -> ""
            | _ -> aux (i + 1)
        in aux 1


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
