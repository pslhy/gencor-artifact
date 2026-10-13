let rec find_sum (arr : int list) : int = 
  let rec check (lst: int list) (elem: int) : bool = 
    match lst with
    | [] -> false
    | h::t -> if h = elem then true else check t elem
  in
  match arr with
  | [] -> 0
  | h::t -> if check t h then find_sum t else h + find_sum t

let sum_of_non_repeated lst = find_sum lst


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of non-repeated elements in a given list. *)
