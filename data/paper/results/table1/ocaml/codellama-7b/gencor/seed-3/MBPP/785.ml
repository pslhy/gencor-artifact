
let rec tuple_str_int (test_str : string) :  int * int * int = 
match test_str  with
| "_," -> (0,0,0), 0
| ".," ->(0,0,0), 0
| test_str1 -> let regex str = 
Printf.sprintf "^\\((\\\\.|\\\\.\\|\\\\,|a\\)\\)+$" in 
let filtered_test = test_str1 
    |> (String.split_on_char ',') 
    |> List.filter (fun str -> 
    if (str |> String.length) <2 
    then Printf.sprintf "invalid length" 
    else 
    if str |> regex |> String.length |> (<>) 0  
    then print_endline "filtered"
    else str
    ) in  
    filtered_test |> List.hd |> string_of_int

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
