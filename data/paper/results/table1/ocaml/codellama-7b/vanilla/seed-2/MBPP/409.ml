let rec min_product_tuple (list1 :  (int * int) list) : int =
    match list1 with
        | [] -> 0
        | [x] -> x
        | x::xs ->
            let (x1, x2) = x
            let prod1 = x1 * x2
            let prod2 = min_product_tuple xs
            if prod1 < prod2 then prod1 else prod2 in

let rec min_product_list (list1 : int list) : int =
    match list1 with
        | [] -> 0
        | x::[] -> x
        | x::xs ->
            let prod1 = x
            let prod2 = min_product_list xs
            if prod1 < prod2 then prod1 else prod2 in

let rec find_min_product (list1 : int list list) : int =
    match list1 with
        | [] -> 0
        | x::[] -> min_product_tuple x
        | x::xs ->
            let prod1 = min_product_tuple x
            let prod2 = find_min_product xs
            if prod1 < prod2 then prod1 else prod2 in

(* Test code *)
let test_list = [[1, 2; 3, 4]; [5, 6; 7, 8]; [9, 10; 11, 12]];;
find_min_product test_list ;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the minimum product from the pairs of tuples within a given list. *)
