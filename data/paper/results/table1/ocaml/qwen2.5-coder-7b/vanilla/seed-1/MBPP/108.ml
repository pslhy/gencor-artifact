let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list = 
  let rec merge (l1 : int list) (l2 : int list) (acc : int list) : int list =
    match (l1, l2) with
    | ([], []) -> List.rev acc
    | ([], h2::t2) -> merge [] t2 (h2 :: acc)
    | (h1::t1, []) -> merge t1 [] (h1 :: acc)
    | (h1::t1, h2::t2) when h1 <= h2 -> merge t1 l2 (h1 :: acc)
    | (h1::t1, h2::t2) -> merge l1 t2 (h2 :: acc)
  in
  merge (merge num1 num2 []) num3

let mergeThreeLists lst1 lst2 lst3 = merge_sorted_list lst1 lst2 lst3;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)
