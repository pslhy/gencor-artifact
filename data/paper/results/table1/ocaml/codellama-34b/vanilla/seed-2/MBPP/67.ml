let rec bell_number (n : int) : int =
    match n with
    | 0 | 1 -> 1
    | _ ->
        List.fold_right (fun x acc -> acc + x * (bell_number (n - 1))
                            / (bell_number (n - x) * bell_number (x - 1)))
                        [1..n] 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the number of ways to partition a set of Bell numbers. *)
