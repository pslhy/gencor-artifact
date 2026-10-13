let rec max_Product (arr : int list) :  int * int =
    match arr with
    | x :: y :: tl ->
        let p = x * y in
        let m = max_Product (y :: tl) in
        if p > fst m then
            (x, y)
        else
            m
    | _ -> (0, 0)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find a pair with highest product from a given list of integers. *)
