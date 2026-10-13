let rec count_vowels (test_str : string) : int =
  let len = String.length test_str in
  let vowels = ['a'; 'e'; 'i'; 'o'; 'u'; 'A'; 'E'; 'I'; 'O'; 'U'] in
  let rec helper idx acc =
    if idx = len then acc
    else if idx = 0 then helper (idx+1) acc
    else if List.mem test_str.[idx] vowels && List.mem test_str.[idx - 1] vowels then helper (idx+1) (acc+1)
    else helper (idx+1) acc
  in
  helper 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count those characters which have vowels as their neighbors in the given string. *)
