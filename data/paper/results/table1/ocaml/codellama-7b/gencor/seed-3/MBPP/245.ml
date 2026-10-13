
let rec max_sum (arr : int list) : int =
  match arr with
  | [] -> 0
  | h :: t ->
    let rec is_bitonic (arr : int list) : bool =
      match arr with
      | [] -> true
      | h :: t -> h < List.nth t 0

    and recsum (arr : int list) : int =
      match arr with
      | [] -> 0
      | h :: t -> (h + recsum (List.tl t))
    in
    if is_bitonic arr then recsum arr else max (recsum (List.tl arr)) (h + max_sum (List.tl t))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
