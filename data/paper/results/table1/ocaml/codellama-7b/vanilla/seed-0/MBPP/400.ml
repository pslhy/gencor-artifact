let rec extract_freq (test_list :  (int * int) list) : int =
    match test_list with
        | [] -> 0
        | (a, b) :: tail ->
            if (List.exists (fun (e1, e2) -> e1 = a && e2 = b) tail)
            then (extract_freq tail)
            else ((a, b) :: (extract_freq tail)) + 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract the number of unique tuples in the given list. *)
