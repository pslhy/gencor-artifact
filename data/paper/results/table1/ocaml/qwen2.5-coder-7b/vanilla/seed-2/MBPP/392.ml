let rec get_max_sum (n : int) : int = 
    let rec helper (n : int) (cache : int array) : int = 
        if n <= 0 then 0
        else if cache.(n) <> 0 then cache.(n)
        else 
            let max splits =
                List.fold_left max (-1) (List.filter ((<>) -1) splits)
            in
            let splits = [n/2; n/3; n/4; n/5] in
            let max_sum = max splits + n in
            cache.(n) <- max_sum;
            max_sum
    in
    let cache = Array.make (n + 1) 0 in
    helper n cache


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n). *)
