let rec find_sum (arr : int list) : int =
  if List.length arr = 0 then
    0
  else if List.mem (List.hd arr) (List.tl arr) then
    find_sum (List.tl arr)
  else
    List.hd arr + find_sum (List.tl arr)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of non-repeated elements in a given list. *)
