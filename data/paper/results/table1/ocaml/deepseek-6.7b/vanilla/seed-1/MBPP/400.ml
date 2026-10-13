let rec extract_freq (test_list :  (int * int) list) : int =
    match test_list with
    | (x, y)::tail -> (List.length (List.filter (fun (a, b) -> a = x && b = y) test_list)) + (extract_freq tail)
    | [] -> 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract the number of unique tuples in the given list. *)
