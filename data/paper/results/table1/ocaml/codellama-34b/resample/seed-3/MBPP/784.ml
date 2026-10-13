(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the product of first even and odd number of a given list. *)
let rec mul_even_odd (list1 : int list) : int =
  let rec helper (list1 : int list) (even_prod : int) (odd_prod : int) =
    match list1 with
    | [] -> even_prod * odd_prod
    | h :: _ when h mod 2 = 0 -> helper list1 (even_prod * h) odd_prod
    | h :: _ -> helper list1 even_prod (odd_prod * h)
  in
  helper list1 1 1

