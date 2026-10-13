let rec get_Inv_Count (arr : int list) : int = 
    let (left, right) = List.partition ((<) arr.(1)) arr in
    let (ll, rr) = (get_Inv_Count left, get_Inv_Count right) in
    List.length left + List.length right + ll + rr 
   
let countInversions arr = get_Inv_Count arr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count inversions in a list. *)
