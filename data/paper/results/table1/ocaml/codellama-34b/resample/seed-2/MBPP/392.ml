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
        let max_value =
            List.fold_left (fun acc (d : int) ->
                let opt1 = get_max_sum (n / d) in
                let opt2 = get_max_sum ((n / d) + 1) in
                if opt1 >= opt2 then
                    opt1
                else
                    opt2
            ) 0 [2; 3; 4; 5]
        in
        if n mod 2 = 0 then
            max_value + (n / 2)
        else
            max_value + n

