let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list = 
  let rec merge_sorted lst1 lst2 accum = 
    match lst1, lst2 with
    | [], _ -> List.rev accum @ lst2
    | _, [] -> List.rev accum @ lst1
    | h1 :: t1, h2 :: t2 -> 
      if h1 < h2 then merge_sorted t1 lst2 (h1 :: accum)
      else merge_sorted lst1 t2 (h2 :: accum)
  in
  merge_sorted (merge_sorted num1 num2 []) num3 []



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)
