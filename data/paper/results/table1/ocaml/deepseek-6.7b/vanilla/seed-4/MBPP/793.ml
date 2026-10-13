let rec last (arr : int list) (x : int) : int =
  match arr with
  |[] -> -1
  |h::t ->
    if h = x then
      max (list_length arr) (last t x)
    else
      last t x
and list_length (lst: 'a list) : int =
  match lst with
  | [] -> 0
  | _ :: t -> 1 + list_length t
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the last position of an element in a sorted list. *)
