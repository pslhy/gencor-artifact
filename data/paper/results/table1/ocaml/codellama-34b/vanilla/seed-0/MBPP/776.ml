let rec count_vowels (test_str : string) : int =
    match test_str with
    | [] -> 0
    | hd :: tl when (List.mem hd ['a'; 'e'; 'i'; 'o'; 'u']) -> 1 + count_vowels tl
    | _ :: tl -> count_vowels tl


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count those characters which have vowels as their neighbors in the given string. *)
