
let rec sum_Of_product (n : int) : int =
    if n = 0 then 0
    else
        match n with
        | 1 -> 1
        | _ -> (n * ((n - 1) / 2)) + sum_Of_product (n - 1)

(* Test Cases *)
let () =
    assert (sum_Of_product 1 = 1);
    assert (sum_Of_product 2 = 2);
    assert (sum_Of_product 3 = 2 * 2 + 1);
    assert (sum_Of_product 4 = 2 * 3 + 2 * 2 + 1);
    assert (sum_Of_product 5 = 2 * 4 + 2 * 3 + 2 * 2 + 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the product of consecutive binomial co-efficients. *)
