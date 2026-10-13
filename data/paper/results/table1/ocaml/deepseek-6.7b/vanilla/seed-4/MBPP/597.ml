let rec find_kth (arr1 : int list) (arr2 : int list) (k : int) : int =
  let len1 = List.length arr1 in
  let len2 = List.length arr2 in
  if len1 = 0 then
    List.nth arr2 (k - 1)
  else if len2 = 0 then
    List.nth arr1 (k - 1)
  else if k = 1 then
    if arr1.(0) < arr2.(0) then arr1.(0) else arr2.(0)
  else
    let k1 = if len1 < k / 2 then len1 else k / 2 in
    let k2 = k - k1 in
    if arr1.(k1 - 1) < arr2.(k2 - 1) then
      find_kth (List.sub arr1 k1 len1) arr2 k
    else
      find_kth arr1 (List.sub arr2 k2 len2) k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find kth element from the given two sorted lists. *)
