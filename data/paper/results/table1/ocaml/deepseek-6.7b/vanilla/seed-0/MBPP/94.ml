let rec index_minimum (test_list :  (string * int) list) : string =
    match test_list with
    |[] -> ""
    |(x, y)::xs ->
        let next_min = index_minimum xs in
         if y < (snd (List.assoc (next_min, 0) test_list)) then x else next_min

let test_list = [("one", 3); ("two", 1); ("three", 2); ("four", 4)]

let result = index_minimum test_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of tuples, write a function that returns the first value of the tuple with the smallest second value. *)
