let rec find_Volume (l : int) (b : int) (h : int) : int =
  if l < 1 || b < 1 || h < 1 then
    failwith "Invalid dimensions"
  else
    l * b * h


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the volume of a triangular prism. *)
