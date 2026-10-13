(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Implement a function that takes an non-negative integer and returns a list of the first n *)
(*     integers that are prime numbers and less than n. *)
(*     for example: *)
(*     >>> count_up_to 5 *)
(*     [2; 3] *)
(*     >>> count_up_to 11 *)
(*     [2; 3; 5; 7] *)
(*     >>> count_up_to 0 *)
(*     [] *)
(*     >>> count_up_to 20 *)
(*     [2; 3; 5; 7; 11; 13; 17; 19] *)
(*     >>> count_up_to 1 *)
(*     [] *)
(*     >>> count_up_to 18 *)
(*     [2; 3; 5; 7; 11; 13; 17] *)
let rec count_up_to (n : int) : int list =
    if n <= 1 then
        []
    else
        let rec count_up_to' (m : int) (acc : int list) : int list =
            if m >= n then
                acc
            else if m <= 1 then
                count_up_to' (m + 1) (m :: acc)
            else
                let sqrt_m = int_of_float (sqrt (float_of_int m)) in
                let rec is_prime (i : int) : bool =
                    i > sqrt_m || m mod i <> 0 && is_prime (i + 1)
                in
                if is_prime 2 then
                    count_up_to' (m + 1) (m :: acc)
                else
                    count_up_to' (m + 1) acc
        in
        count_up_to' 2 []

