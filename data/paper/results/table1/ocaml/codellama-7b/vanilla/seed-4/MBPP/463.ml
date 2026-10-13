let rec max_subarray_product (arr : int list) : int =
  if List.length arr <= 1 then
    List.hd arr
  else
    let left = max_subarray_product (List.tl arr) in
    let right = max_subarray_product (List.tl (List.tl arr)) in
    let mid = List.hd arr in
    if List.length arr <= 2 then
      mid
    else
      List.max [(mid * right); (mid * left)]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product sublist of the given list. *)
