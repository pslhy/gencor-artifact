(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to create a new tuple from the given string and list. *)
let rec new_tuple (test_list : string list) (test_str : string) :  string * string * string =
    let str_list = String.split_on_char '-' test_str in
    let value_1 = List.nth str_list 0 in
    let value_2 = List.nth str_list 1 in
    let value_3 = List.nth str_list 2 in
    if (List.mem value_1 test_list) || (List.mem value_2 test_list) || (List.mem value_3 test_list) then
        (value_1, value_2, value_3)
    else
        failwith "Value not present in list!"

