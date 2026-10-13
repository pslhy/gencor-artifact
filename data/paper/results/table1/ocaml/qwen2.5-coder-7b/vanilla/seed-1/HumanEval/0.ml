let rec has_close_elements (numbers : float list) (threshold : float) : bool = 
  match numbers with
  | [] | [_] -> false
  | x :: xs -> 
      if exists_close_pair x xs threshold then true else has_close_elements xs threshold

and exists_close_pair x (ys : float list) (threshold : float) : bool = 
  match ys with
  | [] -> false
  | y :: ys' -> 
      if abs_float (x -. y) < threshold then true else exists_close_pair x ys' threshold


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Check if in given list of numbers, are any two numbers closer to each other than *)
(*     given threshold. *)
(*     >>> has_close_elements [1.0; 2.0; 3.0] 0.5 *)
(*     false *)
(*     >>> has_close_elements [1.0; 2.8; 3.0; 4.0; 5.0; 2.0] 0.3 *)
(*     true *)
