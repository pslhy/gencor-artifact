let rec last (arr : int list) (x : int) : int = 
    let rec find_index idx = function
        | [] -> -1
        | h::t -> if h = x then idx else find_index (idx + 1) t
    in find_index 0 arr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the last position of an element in a sorted list. *)
