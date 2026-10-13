let rec is_majority (arr : int list) (n : int) (x : int) : bool =
  if n = 0 then false else
  match (arr, n, x) with
  | (a :: t, n, x) when a = x -> is_majority t (n - 1) x
  | (a :: t, n, x) -> is_majority t (n - 1) x
  | _ -> false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a sorted list, its length (n), and an element and returns whether the element is the majority element in the given sorted list. (The majority element is the element that occurs more than n/2 times.) *)
