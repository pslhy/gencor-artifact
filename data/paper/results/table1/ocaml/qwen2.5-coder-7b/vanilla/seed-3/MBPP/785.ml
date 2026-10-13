let rec tuple_str_int (test_str : string) :  int * int * int = 
    let split_str = String.split_on_char ',' test_str in
    let rec convert_to_int lst = 
        match lst with
        | [] -> []
        | x::xs -> (int_of_string x)::(convert_to_int xs) 
    in
    let int_list = convert_to_int split_str in
    match int_list with
    | x::y::z::[] -> (x, y, z)
    | _ -> failwith "Invalid tuple string format"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
