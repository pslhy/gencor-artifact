let rec largest_neg (list1 : int list) : int =
  match list1 with
  | [] -> 0
  | [x] -> if x < 0 then x else largest_neg (List.tl list1)
  | x :: y :: ys ->
      let rec find_largest (list2 : int list) : int =
        match list2 with
        | [x] -> if x < 0 then x else find_largest (List.tl list2)
        | x :: y :: ys -> if x < y then find_largest (x :: y :: List.tl ys) else y
      in find_largest (x :: y :: ys)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest negative number from the given list. *)
