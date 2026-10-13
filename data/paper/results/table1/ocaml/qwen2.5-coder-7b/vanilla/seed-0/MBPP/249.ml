let rec intersection_array (array_nums1 : int list) (array_nums2 : int list) : int list = 
  let rec helper l1 l2 acc = 
    match l1, l2 with 
    | [], _ | _, [] -> List.rev acc 
    | h1::t1, h2::t2 -> 
        if h1 = h2 then 
          helper t1 t2 (h1 :: acc) 
        else if h1 < h2 then 
          helper t1 l2 acc 
        else 
          helper l1 t2 acc 
  in 
  helper array_nums1 array_nums2 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the intersection of two lists. *)
