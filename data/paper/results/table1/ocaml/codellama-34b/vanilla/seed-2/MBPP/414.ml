let rec overlapping (list1 : int list) (list2 : int list) : bool =
    match list1, list2 with
    | [], [] -> false
    | _, [] -> false
    | [], _ -> false
    | x::xs, y::ys -> if x = y then true || overlapping xs list2 else overlapping xs list2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether any value in a sequence exists in a sequence or not. *)
