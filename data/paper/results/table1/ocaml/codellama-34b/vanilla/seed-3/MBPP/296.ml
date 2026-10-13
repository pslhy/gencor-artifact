let rec get_Inv_Count (arr : int list) : int =
    if(arr.Length <= 1) then 0
    else arr.[0] * get_Inv_Count(arr.Tail)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count inversions in a list. *)
