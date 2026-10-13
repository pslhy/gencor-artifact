let rec unique_product (list_data : int list) : int =
    let rec aux (acc : int * int list) : int =
        match acc with
        | (_, []) -> 1
        | (acc_prod, x :: xs) ->
            if List.mem x xs then
                aux (acc_prod * x, xs)
            else
                aux (acc_prod * x, xs)
    in
    aux (1, list_data)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to calculate the product of the unique numbers in a given list. *)
