let rec reverse_vowels (str1 : string) : string = 
    let rec helper str1 stack input =
        match input with
        | [] -> List.rev stack ^ (String.of_list (List.rev str1))
        | h :: t ->
            if List.mem h ['a'; 'e'; 'i'; 'o'; 'u'; 'A'; 'E'; 'I'; 'O'; 'U'] then
                helper str1 (h :: stack) t
            else
                helper (h :: str1) stack t
    in
    helper [] [] (String.to_list str1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
