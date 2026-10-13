(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to interchange the first and last elements in a list. *)
let rec swap_List (newList : int list) : int list =
  if(newList = []) then
      newList
  else if (newList = [newList.hd()]) then
    newList.hd()::swap_List(newList)
  else 
    (swap_List(newList.tl()::newList.hd()::newList.tl()))

