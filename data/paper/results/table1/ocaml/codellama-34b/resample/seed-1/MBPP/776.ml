(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count those characters which have vowels as their neighbors in the given string. *)
let rec count_vowels (test_str : string) : int =
    let vowels = ['a'; 'e'; 'i'; 'o'; 'u'] in
    let sub_str = String.sub test_str 0 2 in
    match sub_str with
    | "" -> 0
    | str when List.mem (String.get str 0) vowels || List.mem (String.get str 1) vowels ->
        1 + count_vowels (String.sub test_str 1 (String.length test_str - 1))
    | _ -> count_vowels (String.sub test_str 1 (String.length test_str - 1))
;;

