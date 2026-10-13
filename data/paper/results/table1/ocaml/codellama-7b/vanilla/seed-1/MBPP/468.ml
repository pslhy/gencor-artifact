let rec max_product (arr : int list) : int =
    match arr with
    | [] -> 0
    | [a] -> a
    | a :: b :: tl ->
        let a_mult_b = a * b in
        let a_mult_b_max = max (a_mult_b) (max (max_product (a :: tl)) (max_product (b :: tl))) in
        a_mult_b_max

let arr = [1; 2; 3; 4; 5];;
max_product arr;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that list. *)
