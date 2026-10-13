let rec intersperse (numbers : int list) (delimeter : int) : int list =
  match numbers with
  | [] -> []
  | [x] -> [x]
  | x :: y :: xs -> x :: delimeter :: intersperse (y :: xs) delimeter


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Insert a number 'delimeter' between every two consecutive elements of input list `numbers' *)
(*     >>> intersperse [] 4 *)
(*     [] *)
(*     >>> intersperse [1; 2; 3] 4 *)
(*     [1; 4; 2; 4; 3] *)
