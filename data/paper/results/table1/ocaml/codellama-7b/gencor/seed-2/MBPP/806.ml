
let rec max_run_uppercase (test_str : string) : int =
    match test_str with
    | [] -> 0
    | h :: t ->
        let (run, rest) =
            List.fold_left (fun (run, rest) c ->
                if Char.uppercase_ascii c = h then (run + 1, rest)
                else if run > 0 then (0, rest)
                else (0, c :: rest)
            ) (0, []) test_str
        in
        if run > 0 then run + max_run_uppercase rest else run

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
