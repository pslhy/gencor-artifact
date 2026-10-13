let rec find_kth (arr1 : int list) (arr2 : int list) (k : int) : int =
    match (arr1, arr2) with
    | (h1::t1, h2::t2) ->
        if k = 1 then h1
        else if k = 2 then h2
        else if h1 < h2 then find_kth t1 arr2 (k-1)
        else find_kth arr1 t2 (k-1)
    | _ -> raise (Invalid_argument "Lists should be of length greater than or equal to 1")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find kth element from the given two sorted lists. *)
