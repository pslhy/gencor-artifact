let rec vowels_count (s : string) : int =
    let vowels = ['a'; 'e'; 'i'; 'o'; 'u'] in
    let rec count_vowels (s : string) (count : int) : int =
        match s with
        | [] -> count
        | hd :: tl ->
            if List.mem hd vowels then
                count_vowels tl (count + 1)
            else
                count_vowels tl count
    in
    count_vowels s 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function vowels_count which takes a string representing *)
(*     a word as input and returns the number of vowels in the string. *)
(*     Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a *)
(*     vowel, but only when it is at the end of the given word. *)
(*     Example: *)
(*     >>> vowels_count "abcde" *)
(*     2 *)
(*     >>> vowels_count "ACEDY" *)
(*     3 *)
