
let rec perfect_squares (a : int) (b : int) : int list = 
  let is_perfect_square x =
    let root = int_of_float (sqrt (float x)) in
    root * root = x in
  let rec collect_squares n acc =
    if n > b then acc
    else if is_perfect_square n then collect_squares (n + 1) (n :: acc)
    else collect_squares (n + 1) acc in
  List.rev (collect_squares (max a (int_of_float (sqrt (float a)))) [])

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find perfect squares between two given numbers. *)
