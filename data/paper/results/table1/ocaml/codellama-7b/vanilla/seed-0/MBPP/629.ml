let rec split (list : int list) : int list =
  match list with
  | [] -> []
  | hd :: tl ->
    if hd mod 2 = 0 then hd :: split tl
    else split tl


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find even numbers from a list of numbers. *)
