let rec get_max_sum (n : int) : int =
    if n <= 0 then 0
    else
        let div2 = n / 2
        and div3 = n / 3
        and div4 = n / 4
        and div5 = n / 5 in
        let sum = get_max_sum div2 + get_max_sum div3 + get_max_sum div4 + get_max_sum div5 in
        max n sum


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n). *)
