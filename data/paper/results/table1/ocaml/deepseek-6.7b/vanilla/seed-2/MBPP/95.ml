let rec find_Min_Length (lst : int list list) : int =
  match lst with
  | [] -> 0
  | h::[] -> List.length h
  | h::t -> min (List.length h) (find_Min_Length t)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the length of the smallest list in a list of lists. *)
