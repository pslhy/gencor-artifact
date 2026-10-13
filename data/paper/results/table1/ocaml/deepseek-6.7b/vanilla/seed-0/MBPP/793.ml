let rec last (arr : int list) (x : int) : int =
    match arr with
    | [] -> -1
    | hd :: tl -> if hd = x then max (last tl x) (List.length arr - List.length tl - 1) else last tl x


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the last position of an element in a sorted list. *)
