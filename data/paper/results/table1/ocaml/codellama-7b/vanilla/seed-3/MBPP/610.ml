let rec remove_kth_element (list1 : int list) (l : int) : int list =
  if l = 0 then
    list1
  else
    let list2 = List.tl list1 in
    let list2' = remove_kth_element list2 (l - 1) in
    let list2'' = List.append list2' [List.hd list1] in
    list2''

;;

let rec remove_kth_element' = function
  | [] -> []
  | h :: t when (List.length t < 2) -> []
  | h :: t -> h :: remove_kth_element' t

;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list and returns a list with the same elements, but the k'th element removed. *)
