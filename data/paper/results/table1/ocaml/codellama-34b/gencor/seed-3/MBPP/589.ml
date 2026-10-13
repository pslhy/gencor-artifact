
let rec perfect_squares (a : int) (b : int) : int list =
  if a = b then [a]
  else if a > b then []
  else (a * a) :: perfect_squares (a + 1) b;;

let rec perfect_squares_with_loops (a : int) (b : int) : int list =
  let rec helper (a : int) (acc : int list) : int list =
    if a = b then acc
    else if a > b then []
    else helper (a + 1) ((a * a) :: acc)
  in
  helper a [];;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find perfect squares between two given numbers. *)
