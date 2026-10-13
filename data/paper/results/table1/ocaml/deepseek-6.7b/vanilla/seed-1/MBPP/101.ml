let rec kth_element (arr : int list) (k : int) : int =
  match arr with
  | [] -> failwith "Empty list"
  | (x :: _) when k = 1 -> x
  | (_ :: tl) -> kth_element tl (k - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the kth element in the given list using 1-based indexing. *)
