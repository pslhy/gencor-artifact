
let rec get_closest_vowel (word : string) : string = 
    let vowels = [ 'a'; 'e'; 'i'; 'o'; 'u'; 'A'; 'E'; 'I'; 'O'; 'U' ] in
    let rec helper (chars : char list) : string option =
        match chars with
        | [] | [_] | [_; _] -> None
        | c1 :: c2 :: c3 :: rest ->
            if List.mem c2 vowels && not (List.mem c1 vowels) && not (List.mem c3 vowels) then
                Some (string_of_int (Char.code c2))
            else
                helper (c2 :: c3 :: rest)
    in
    match helper (List.rev (String.to_seq word |> List.of_seq)) with
    | Some v -> v
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
