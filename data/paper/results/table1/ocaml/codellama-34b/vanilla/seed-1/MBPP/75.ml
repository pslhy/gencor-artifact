let rec find_tuples (test_list :  (int * int * int) list) (k : int) :  (int * int * int) list =
    (* Define a function to check if a tuple is divisble by k *)
    let is_divisible ((a, b, c) : int * int * int) =
        a mod k = 0 && b mod k = 0 && c mod k = 0
    in
    match test_list with
    | [] -> []
    | tuple :: rest ->
        if is_divisible tuple then
            (* If the tuple is divisible by k, add it to the list *)
            tuple :: find_tuples rest k
        else (* If the tuple is not divisible by k, skip it *)
            find_tuples rest k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find tuples which have all elements divisible by k from the given list of tuples. *)
