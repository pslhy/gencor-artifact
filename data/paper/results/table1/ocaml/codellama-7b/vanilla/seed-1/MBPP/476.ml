let rec big_sum (nums : int list) : int =
    match nums with
    | [] -> 0
    | [x] -> x
    | x::y::xs -> x + (big_sum (y::xs));;

let min_max (nums : int list) : int * int =
    let sorted = List.sort compare nums in
    (big_sum (List.rev (List.tl sorted)), big_sum (List.tl sorted));;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the largest and smallest value in a given list. *)
