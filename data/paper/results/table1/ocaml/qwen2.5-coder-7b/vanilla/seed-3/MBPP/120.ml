let rec max_product_tuple (list1 :  (int * int) list) : int = 
    let rec helper (list2: (int * int) list) (maxP : int) :int =
        match list2 with
        | [] -> maxP
        | (first, second)::tail -> let currMax = max (abs (first * second)) maxP in
                                   helper tail currMax in
    match list1 with
    | [] -> 0
    | (first, second)::tail -> helper tail (abs (first * second))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum absolute product between numbers in pairs of tuples within a given list. *)
