let rec remove_kth_element (list1 : int list) (l : int) : int list =
  if list1 = [] then [] else
  let (hd :: tl) = list1 in
  let ilist2 = remove_kth_elements tl (l-1) in
  if l mod (l - 1) = 0 then ilist2 else hd :: ilist2
in remove_kth_elements list1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list and returns a list with the same elements, but the k'th element removed. *)
