(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find a pair with highest product from a given list of integers. *)
let rec max_Product (arr : int list) :  int * int =
    match arr with
    | [] -> (0, 0)
    | x :: y :: _ ->
        if x * y > snd (max_product (arr))
        then (x, y)
        else max_product (arr)
    | [x] -> (x, x)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:25: Unbound value "max_product" *)
(*     Hint: Did you mean "max_Product"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_Product (arr : int list) :  int * int =
    match arr with
    | [] -> (0, 0)
    | x :: y :: _ ->
        if x * y > snd (max_Product (arr))
        then (x, y)
        else max_Product (arr)
    | [x] -> (x, x)

