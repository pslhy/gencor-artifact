(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether a list of numbers contains only one distinct element or not. *)
let rec unique_Element (arr : int list) : bool =
    if List.length arr <= 1 then
        true
    else if List.hd arr = List.hd (List.tl arr) then
        unique_Element (List.tl arr)
    else
        false

