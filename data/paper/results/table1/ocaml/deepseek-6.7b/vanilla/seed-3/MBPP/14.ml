let rec find_Volume (l : int) (b : int) (h : int) : int =
    match (l, b, h) with
    | (x,y,z) when x <= 0 || y <= 0 || z <= 0 -> 0
    | _ -> (l * b * h) / 2
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the volume of a triangular prism. *)
