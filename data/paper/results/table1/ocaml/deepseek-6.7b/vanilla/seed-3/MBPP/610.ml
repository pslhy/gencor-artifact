let rec remove_kth_element (list1 : int list) (l : int) : int list =
  match list1, l with
  | [], _ -> []
  | x :: xs, 0 -> xs
  | x :: xs, _ -> [x] @ remove_kth_element xs (l-1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list and returns a list with the same elements, but the k'th element removed. *)
