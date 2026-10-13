(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count the number of occurence of the string 'std' in a given string. *)
let rec count_occurance (s : string) : int =
    match s with
    | [] -> 0
    | h :: t -> if h = "std" then 1 + count_occurance t
               else count_occurance t

