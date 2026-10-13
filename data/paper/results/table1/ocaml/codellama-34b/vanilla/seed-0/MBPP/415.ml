let rec max_Product (arr : int list) :  int * int =
    match arr with
    | [] -> (0, 0)
    | x :: y :: _ ->
        if x * y > snd (max_product (arr))
        then (x, y)
        else max_product (arr)
    | [x] -> (x, x)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find a pair with highest product from a given list of integers. *)
