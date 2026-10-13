let rec f (n : int) : int list =
    if n = 0 then []
    else
        let rec fact (i : int) : int =
            if i = 0 then 1
            else i * fact (i - 1)
        in
        let rec sum_till_i (i : int) : int =
            if i = 0 then 0
            else i + sum_till_i (i - 1)
        in
        let v = sum_till_i n in
        let v = if n mod 2 = 0 then fact v else v in
        v :: f (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Implement the function f that takes n as a parameter, *)
(*     and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even *)
(*     or the sum of numbers from 1 to i otherwise. *)
(*     i starts from 1. *)
(*     the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i). *)
(*     Example: *)
(*     >>> f 5 *)
(*     [1; 2; 6; 24; 15] *)
