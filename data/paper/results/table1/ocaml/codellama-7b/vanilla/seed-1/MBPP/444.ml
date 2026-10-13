let rec trim_tuple (test_list : int list list) (k : int) : int list list =
    match test_list with
    | [] -> []
    | test_list::rest ->
        let trimmed_list = List.map (fun x -> if x = k then -1 else x) test_list in
        trimmed_list :: trim_tuple rest k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to trim each list by k in the given lists. *)
