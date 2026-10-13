let rec is_majority (arr : int list) (n : int) (x : int) : bool = 
  let rec count_from i =
    if i >= n then 0
    else if arr.[i] = x then 1 + count_from (i + 1)
    else 0
  in
  let count = count_from 0 in
  count > n / 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a sorted list, its length (n), and an element and returns whether the element is the majority element in the given sorted list. (The majority element is the element that occurs more than n/2 times.) *)
