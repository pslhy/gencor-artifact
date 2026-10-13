let rec interleave_lists (list1 : int list) (list2 : int list) (list3 : int list) : int list =
  match list1, list2, list3 with
  | [], [], [] -> []
  | a :: b :: c :: tl, d :: e :: f :: tl2, g :: h :: i :: tl3 ->
    a :: b :: c :: d :: e :: f :: g :: h :: i :: interleave_lists tl tl2 tl3
  | _, _, _ -> raise (Failure "lists are not the same length")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to interleave 3 lists of the same length into a single flat list. *)
