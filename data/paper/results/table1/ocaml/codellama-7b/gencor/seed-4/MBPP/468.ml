
let rec max_product (arr : int list) : int =
  match arr with
  | [] -> 0
  | [x] -> x
  | x::y::xs ->
    (* Find the maximum product of an increasing subsequence of size 2 *)
    let prod_2 = x * y in
    (* Find the maximum product of an increasing subsequence of size 3 or more *)
    let prod_3 = max (x * y * arr.(1)) (max_product (y::xs)) in
    max prod_2 prod_3

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that list. *)
