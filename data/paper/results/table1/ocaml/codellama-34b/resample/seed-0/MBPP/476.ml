(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the largest and smallest value in a given list. *)
let rec big_sum (nums : int list) : int =
  match nums with
  | [] -> 0
  | [x] -> x
  | x::y::zs ->
      let big =
        if x > y
        then x
        else y
      in
      let small =
        if x < y
        then x
        else y
      in
      big + small + big_sum zs

