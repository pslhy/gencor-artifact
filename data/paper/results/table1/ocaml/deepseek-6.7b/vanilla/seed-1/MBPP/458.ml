let rec rectangle_area (l : int) (b : int) : int =
  match l, b with
  | 0, 0 -> 0
  | l, _ when l < 0 -> rectangle_area (-l) b
  | _, b when b < 0 -> rectangle_area l (-b)
  | l, b -> l * b


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the area of a rectangle. *)
