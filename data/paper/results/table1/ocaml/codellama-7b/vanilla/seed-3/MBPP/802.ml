let rec count_rotation (arr : int list) : int =
  if List.length arr <= 1 then
    0
  else if List.hd arr > List.nth arr (List.length arr - 2) then
    1 + count_rotation (List.tl arr)
  else
    count_rotation (List.tl arr)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of rotations required to generate a sorted list. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-list/ *)
