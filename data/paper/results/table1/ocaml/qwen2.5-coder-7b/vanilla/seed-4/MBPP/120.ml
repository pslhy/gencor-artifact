let rec max_product_tuple (list1 :  (int * int) list) : int = 
    match list1 with
    | [] -> 0
    | (a, b) :: rest -> 
        let rec max_product acc pairs =
            match pairs with
            | [] -> acc
            | (x, y) :: rest' -> 
                let current_max = max (max (abs (a * x)) (abs (a * y))) (max (abs (b * x)) (abs (b * y))) in
                max_product (max acc current_max) rest'
        in
        max_product (abs (a * b)) rest

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum absolute product between numbers in pairs of tuples within a given list. *)
