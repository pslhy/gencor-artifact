let rec max_run_uppercase (test_str : string) : int =
    match test_str with
    | [] -> 0
    | h :: t ->
        let (run, rest) =
            List.fold_left (fun (run, rest) c ->
                if Char.is_uppercase c
                    && run < test_str.length - 1
                    && Char.is_uppercase rest Then rest + 1
                    else run + 1
            ) (0, test_str.length) test_str
        in
        max run (max_run_uppercase rest)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
