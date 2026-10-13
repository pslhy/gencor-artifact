let rec find_kth (arr1 : int list) (arr2 : int list) (k : int) : int =
  if k > List.length arr1 + List.length arr2 then
    failwith "k is greater than the sum of the lengths of the two lists"
  else if k = 1 then
    let min_val = min (List.hd arr1) (List.hd arr2) in
    if List.hd arr1 = min_val then List.hd arr1 else List.hd arr2
  else
    let new_list1 = List.tl arr1 in
    let new_list2 = List.tl arr2 in
    let new_k = k - 1 in
    find_kth new_list1 new_list2 new_k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find kth element from the given two sorted lists. *)
