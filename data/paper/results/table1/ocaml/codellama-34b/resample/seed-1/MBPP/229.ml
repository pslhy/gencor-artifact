(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an integer n, and re-arranges the first n elements of the given list so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved. *)
let rec re_arrange_array (arr : int list) (n : int) : int list =
    let rec aux (arr : int list) (n : int) (i : int) : int list =
        if i = n then
            []
        else
            let x = arr.(i) in
            if x < 0 then
                x :: (aux arr n (i + 1))
            else
                (aux arr n (i + 1)) @ [x]
    in
    aux arr n 0

