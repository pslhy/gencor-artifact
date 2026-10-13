(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the length of the longest word. *)
let rec len_log (list1 : string list) : int =
  if list1 = [] then
    0
  else
    let len1 : int = String.length (List.hd list1) in
    let len2 : int = len_log (List.tl list1) in
    max len1 len2

