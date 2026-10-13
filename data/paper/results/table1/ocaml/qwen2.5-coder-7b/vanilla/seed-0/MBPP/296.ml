let rec get_Inv_Count (arr : int list) : int = 
  let rec inv_count lst i j = 
    if j = List.length lst - 1 then 0
    else 
      let invs = if List.nth arr j > List.nth arr (j + 1) then 1 else 0 in
      invs + inv_count lst (i + 1) (j + 1)
  in
  let rec wrapper lst i = 
    if i = List.length lst - 1 then 0
    else 
      inv_count lst i (i + 1) + wrapper lst (i + 1)
  in
  wrapper arr 0

let solve = get_Inv_Count


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count inversions in a list. *)
