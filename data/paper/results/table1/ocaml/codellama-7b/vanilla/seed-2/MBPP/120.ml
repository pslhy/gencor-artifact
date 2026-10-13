let rec max_product_tuple (list1 :  (int * int) list) : int =
    match list1 with
        | [] -> 0
        | [x] -> x
        | x::xs ->
            let (max_abs_product, max_product) =
                List.fold_left (fun (max_abs_product, max_product) (y1, y2) ->
                    let abs_product = y1 * y2
                    in if abs_product > max_product then
                        (abs_product, abs_product)
                    else
                        (max_abs_product, max_product)
                ) (0, 0) list1
            in
            Int.max (max_abs_product) (max_product)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum absolute product between numbers in pairs of tuples within a given list. *)
