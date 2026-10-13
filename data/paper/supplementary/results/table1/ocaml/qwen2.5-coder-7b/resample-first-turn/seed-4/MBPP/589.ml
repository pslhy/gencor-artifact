let rec perfect_squares (a : int) (b : int) : int list = 
  let is_perfect_square x =
    let root = int_sqrt x in root * root = x
  in
  let rec collect acc n =
    if n > b then acc
    else if is_perfect_square n then collect (n :: acc) (n + 1)
    else collect acc (n + 1)
  in
  List.rev (collect [] (if a < 0 then 0 else a))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find perfect squares between two given numbers. *)
