let rec kth_element (arr : int list) (k : int) : int =
  if k < 1 || k > List.length arr then
    failwith "Index out of bounds"
  else
    match arr with
    | [] -> -1
    | x1 :: rest -> if k = 1 then x1 else kth_element rest (k - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the kth element in the given list using 1-based indexing. *)
