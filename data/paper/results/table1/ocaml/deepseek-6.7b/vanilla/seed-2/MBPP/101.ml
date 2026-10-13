let rec kth_element (arr : int list) (k : int) : int =
  match arr with
  | [] -> -1 (* If list is empty, return a default error value -1 *)
  | _ :: tl -> if k = 1 then List.hd arr else kth_element tl (k-1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the kth element in the given list using 1-based indexing. *)
