
let rec reverse_vowels (str1 : string) : string = 
    let vowels = [ 'a'; 'e'; 'i'; 'o'; 'u'; 'A'; 'E'; 'I'; 'O'; 'U' ] in
    let rec find_next_vowel idx str =
        if idx >= String.length str then None
        else if List.mem (str.[idx]) vowels then Some (idx, str.[idx])
        else find_next_vowel (idx + 1) str
    in
    let rec find_prev_vowel idx str =
        if idx < 0 then None
        else if List.mem (str.[idx]) vowels then Some (idx, str.[idx])
        else find_prev_vowel (idx - 1) str
    in
    let rec replace_vowels i j acc str =
        if i >= j then acc
        else
            match find_next_vowel i str with
            | Some (i', v1) ->
                match find_prev_vowel j str with
                | Some (j', v2) ->
                    replace_vowels (i' + 1) (j' - 1) (String.blit str 0 acc i')
                      (String.blit str 0 str 0 i' ^ String.make 1 v2 ^
                       String.blit str (i' + 1) str (i' + 2) (j' - i')
                      ^ String.make 1 v1 ^
                       String.blit str (j' + 1) str (j' + 2) (String.length str - j - 1))
                | None -> acc
            | None -> acc
    in
    replace_vowels 0 (String.length str1 - 1) str1 ""

(* Example usage *)
let () =
    let input = "hello world" in
    let reversed_vowels = reverse_vowels input in
    Printf.printf "Original: %s\nReversed Vowels: %s\n" input reversed_vowels

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
