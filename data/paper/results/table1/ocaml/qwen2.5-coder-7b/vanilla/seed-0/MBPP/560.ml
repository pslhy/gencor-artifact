let rec union_elements (test_tup1 : int list) (test_tup2 : int list) : int list = 
  let rec helper l1 l2 acc = 
    match l1, l2 with
    | [], [] -> List.rev acc
    | [], y::ys -> helper [] ys (y::acc)
    | x::xs, [] -> helper xs [] (x::acc)
    | x::xs, y::ys when x < y -> helper xs (y::ys) (x::acc)
    | x::xs, y::ys when x > y -> helper (x::xs) ys (y::acc)
    | x::xs, y::ys -> helper xs ys (x::y::acc)
  in
  helper test_tup1 test_tup2 []

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the union of the elements of two given lists and output them in sorted order. *)
