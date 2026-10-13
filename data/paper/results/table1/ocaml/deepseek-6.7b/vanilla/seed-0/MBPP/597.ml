let rec find_kth (arr1 : int list) (arr2 : int list) (k : int) : int =
    if k < 0 then raise (Invalid_argument "K cannot be less than zero");
    if arr1 = [] then List.nth arr2 k
    else if arr2 = [] then List.nth arr1 k
    else
    let mid1 = List.length arr1 / 2
    and mid2 = List.length arr2 / 2 in
    if arr1.(mid1) > arr2.(mid2) then
        if (List.length arr1 + List.length arr2) / 2 < k then
            find_kth arr1 (List.tl arr2) k
        else find_kth (List.tl arr1) arr2 k
    else
        if (List.length arr1 + List.length arr2) / 2 < k then
            find_kth arr1 (List.tl arr2) k
        else find_kth arr1 (List.tl arr1) k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find kth element from the given two sorted lists. *)
