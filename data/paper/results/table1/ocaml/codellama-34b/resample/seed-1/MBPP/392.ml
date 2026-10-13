(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n). *)
let rec get_max_sum (n : int) : int =
    let max_sum =
        match n with
        | 1 -> 1
        | _ ->
            let half = get_max_sum (n / 2)
            let third = get_max_sum (n / 3)
            let fourth = get_max_sum (n / 4)
            let fifth = get_max_sum (n / 5)
            max (half + third + fourth + fifth) n
    in
    max_sum

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:13: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_max_sum (n : int) : int =
    let max_sum =
        if n = 1 then 1 else
            let half = get_max_sum (n / 2) in
            let third = get_max_sum (n / 3) in
            let fourth = get_max_sum (n / 4) in
            let fifth = get_max_sum (n / 5) in
            max (half + third + fourth + fifth) n in
    max_sum;;

