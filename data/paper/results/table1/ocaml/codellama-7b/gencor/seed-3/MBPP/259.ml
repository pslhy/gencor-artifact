
let rec maximize_elements (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
  match test_tup1 with
  | [] -> []
  | x::xs ->
    let rec maximize_helper (ys : int list) (zs : int list) : int list =
      match (ys, zs) with
      | [], [] -> []
      | y1::ys1, [] -> y1::zs
      | [], z1::zs1 -> z1::ys
      | y1::ys1, z1::zs1 ->
        if y1 > z1 then y1::maximize_helper ys1 zs
        else z1::maximize_helper ys zs1
    in
    let maximum_element = List.hd (maximize_helper x xs) in
    maximum_element::maximize_elements xs

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to maximize the given two lists. *)
