let rec index_minimum (test_list :  (string * int) list) : string =
    match test_list with
    | [] ->  failwith "List is empty"
    | x::xs -> let (smallest, _) = get_minimum xs in x
and get_minimum (test_list :  (string * int) list) : (string * int) =
    match test_list with
    | [] -> failwith "List is empty"
    | x::xs -> let smallest = get_minimum xs in
        if x > smallest then smallest else x
in index_minimum test_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of tuples, write a function that returns the first value of the tuple with the smallest second value. *)
