let rec histogram (test : string) : (string * int) list =
    let split = String.split_on_char ' ' test in
    let rec check split_ls assoc_ls =
        match split_ls with
        | [] -> assoc_ls
        | h::t -> (match List.assoc_opt h assoc_ls with
                    | None -> check t ((h, 1)::assoc_ls)
                    | Some n -> check t ((h, n+1)::(List.remove_assoc h assoc_ls)))
    in let res = check split [] in
    let max_value = List.fold_left (fun acc (_, v) -> max acc v) 0 res in
    List.filter (fun (_, v) -> v = max_value) res;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a string representing a space separated lowercase letters, return an association list *)
(*     of the letter with the most repetition and containing the corresponding count. *)
(*     If several letters have the same occurrence, return all of them. *)
(*     Example: *)
(*     >>> histogram "a b c" *)
(*     [("a", 1); ("b", 1); ("c", 1)] *)
(*     >>> histogram "a b b a" *)
(*     [("a", 2); ("b", 2)] *)
(*     >>> histogram "a b c a b" *)
(*     [("a", 2); ("b", 2)] *)
(*     >>> histogram "b b b b a" *)
(*     [("b", 4)] *)
(*     >>> histogram "" *)
(*     [] *)
