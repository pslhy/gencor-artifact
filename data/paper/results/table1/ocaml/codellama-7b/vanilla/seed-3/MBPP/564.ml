let rec count_Pairs (arr : int list) (n : int) : int =
  if n = 0 then
    0
  else if arr.[n-1] = arr.[n-2] then
    count_Pairs arr (n - 1)
  else
    count_Pairs arr (n - 1) + count_Pairs arr (n - 2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list of integers and counts the number of possible unordered pairs where both elements are unequal. *)
