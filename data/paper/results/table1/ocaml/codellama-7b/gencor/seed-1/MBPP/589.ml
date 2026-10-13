
let rec perfect_squares (a : int) (b : int) : int list =
  if a = b then
    [a]
  else if a < b then
    match int_of_float (sqrt (float a)) with
    | x when x * x = a -> x :: perfect_squares (a + 1) b
    | _ -> perfect_squares (a + 1) b
  else
    []

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find perfect squares between two given numbers. *)
