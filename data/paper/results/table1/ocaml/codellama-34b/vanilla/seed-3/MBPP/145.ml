let rec max_Abs_Diff (arr : int list) : int =
  if List.length arr <= 1 then
    0
  else
    let diff = abs (List.hd arr - List.hd (List.tl arr)) in
    max diff (max_Abs_Diff (List.tl arr))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the maximum difference between any two elements in a given list. *)
