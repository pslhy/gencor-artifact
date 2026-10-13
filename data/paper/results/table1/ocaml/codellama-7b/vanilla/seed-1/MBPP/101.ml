let rec kth_element (arr : int list) (k : int) : int =
match arr with
| [] -> raise (Invalid_argument "kth_element")
| [x] -> x
| _ -> let rec loop (arr : int list) (k : int) (acc : int) =
match arr with
| [] -> raise (Invalid_argument "kth_element")
| [x] -> x
| _ -> let x = List.hd arr in
List.fold_left loop (List.tl arr) (k - 1) (acc + x) in
loop arr k 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the kth element in the given list using 1-based indexing. *)
