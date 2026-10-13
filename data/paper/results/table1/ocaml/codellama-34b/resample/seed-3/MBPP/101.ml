(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the kth element in the given list using 1-based indexing. *)
let rec kth_element (arr : int list) (k : int) : int =
  if k = 1 then
    List.hd arr
  else
    kth_element (List.tl arr) (k - 1)

