let rec find_kth (arr1 : int list) (arr2 : int list) (k : int) : int =
  let len1 = List.length arr1 in
  let len2 = List.length arr2 in
  if len1 = 0 then List.nth arr2 (k - 1)
  else if len2 = 0 then List.nth arr1 (k - 1)
  else if k = 1 then min (List.hd arr1) (List.hd arr2)
  else 
    let mid1 = min (len1 + 1) (k / 2) and
        mid2 = min (len2 + 1) (k / 2) 
    in 
    if List.nth arr1 (mid1 - 1) > List.nth arr2 (mid2 - 1) then
      find_kth arr1 (List.tl arr2) (k - mid2)
    else
      find_kth (List.tl arr1) arr2 (k - mid1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find kth element from the given two sorted lists. *)
