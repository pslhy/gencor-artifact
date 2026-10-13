let rec find_kth (arr1 : int list) (arr2 : int list) (k : int) : int = 
    match arr1, arr2, k with
    | [], _, _ -> raise (Invalid_argument "Invalid k")
    | _, [], _ -> raise (Invalid_argument "Invalid k")
    | _, _, 1 -> (match arr1, arr2 with
                   | [x], _ -> x
                   | _, [y] -> y
                   | [], [] -> raise (Invalid_argument "Invalid k"))
    | x::xs, y::ys, _ ->
        if x < y then find_kth xs arr2 (k - 1)
        else find_kth arr1 ys (k - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find kth element from the given two sorted lists. *)
