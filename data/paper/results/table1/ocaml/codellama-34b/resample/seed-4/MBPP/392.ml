(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n). *)
let rec get_max_sum (n : int) : int =
    if n <= 1 then
        n
    else
        let max_sum = ref 0 in
        for i = 2 to 5 do
            let sum = n / i in
            let max_sub_sum = get_max_sum sum in
            if max_sub_sum + n > !max_sum then
                max_sum := max_sub_sum + n
        done;
        !max_sum

