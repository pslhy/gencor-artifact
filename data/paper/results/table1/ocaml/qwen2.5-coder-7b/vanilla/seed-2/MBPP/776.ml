let rec count_vowels (test_str : string) : int = 
    let vowels = [ 'a'; 'e'; 'i'; 'o'; 'u'; 'A'; 'E'; 'I'; 'O'; 'U' ] in
    let rec helper (str : string) : int =
        match str with
        | "" -> 0
        | _ :: t ->
            if List.exists (fun v -> v = str.[0]) vowels then (
                if List.exists (fun v -> v = t.[0]) vowels then
                    1 + helper t
                else
                    helper t
            ) else
                helper t
    in
    helper test_str


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count those characters which have vowels as their neighbors in the given string. *)
