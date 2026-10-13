let rec count_samepair (list1 : int list) (list2 : int list) (list3 : int list) : int = 
  let rec helper l1 l2 l3 count = 
    match (l1, l2, l3) with 
    | ([], [], []) -> count
    | (h1::t1, h2::t2, h3::t3) -> 
      if h1 = h2 && h2 = h3 then helper t1 t2 t3 (count + 1)
      else helper t1 t2 t3 count
    | _ -> count
  in helper list1 list2 list3 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count number items that are identical in the same position of three given lists. *)
