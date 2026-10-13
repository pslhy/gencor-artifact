let rec highest_Power_of_2 (n : int) : int =
    match n with
    | 0 -> 0
    | _ ->
        let rec find_power (i : int) : int =
            if 1 lsl i <= n then i
            else find_power (i - 1)
        in
        find_power (30)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the highest power of 2 that is less than or equal to n. *)
