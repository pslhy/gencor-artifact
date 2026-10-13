let rec count_vowels (test_str : string) : int =
    match test_str with
    | [] -> 0
    | h :: t ->
        let char = String.get test_str 0 in
        if Utils.is_vowel char then
            1 + count_vowels (String.sub test_str 1 (String.length test_str - 1))
        else
            count_vowels (String.sub test_str 1 (String.length test_str - 1))

and Utils.is_vowel (c : char) =
    String.contains "aeiou" c


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count those characters which have vowels as their neighbors in the given string. *)
