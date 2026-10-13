let rec mul_even_odd (list1 : int list) : int =
  match list1 with
  | [] -> 1
  | [x] -> x
  | x::y::tail ->
    if is_even x
    then mul_even_odd (y::tail)
    else mul_even_odd (y::tail)

and is_even n =
  n mod 2 = 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the product of first even and odd number of a given list. *)
