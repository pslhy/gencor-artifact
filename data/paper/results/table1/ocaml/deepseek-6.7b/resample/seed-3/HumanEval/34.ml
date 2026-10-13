(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return sorted unique elements in a list *)
(*     >>> unique [5; 3; 5; 2; 3; 3; 9; 0; 123] *)
(*     [0; 2; 3; 5; 9; 123] *)
let rec unique (l : int list) : int list =
  match l with
  | [] -> []
  | x :: xs -> x :: [for y in unique xs -> if y <> x then y]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:28: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec unique (l : int list) : int list =
  match l with
  | [] -> []
  | x :: xs -> x :: List.filter ((<>) x) (unique xs)

