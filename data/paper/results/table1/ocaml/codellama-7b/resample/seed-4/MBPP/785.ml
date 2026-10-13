(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
let rec tuple_str_int (test_str : string) :  int * int * int = 
    let open Batteries in
    let tuple_str_int (test_str : string) :  int * int * int = 
        
        
        if String.length test_str < 1 then raise (Failure "Tuple string is empty")
        
        
        let split_str = List.filter (List.map String.trim) (String.nsplit test_str ",") in
        match List.rev split_str with 
        | [_; _] -> raise (Failure "Size of tuple must be 3")
        | _ -> (List.nth split_str 0 |> int_of_string, List.nth split_str 1 |> int_of_string, List.nth split_str 2 |> int_of_string)
        

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec tuple_str_int (test_str : string) :  int * int * int = 
  if ( String.length test_str < 1 ) then 
    raise (Failure "Tuple string is empty")
  else              <-------   This is a syntax error because of the lack of an indent
    let split_str = List.filter (List.map String.trim) (String.nsplit test_str ",") in
    match List.rev split_str with 
    | [_; _] -> raise (Failure "Size of tuple must be 3")
    | _ -> (List.nth split_str 0 |> int_of_string, List.nth split_str 1 |> int_of_string, List.nth split_str 2 |> int_of_string)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:21: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec tuple_str_int (test_str : string) :  int * int * int = 
  match (String.length test_str) with
  | 0 -> []
  | 1 -> raise (Failure "Tuple string is empty")
  | 2 -> [test_str |> String.split_on_char ',' |> List.map String.trim |> List.map int_of_string |> List.fold_left (+) 0]
  | 3 -> [test_str |> String.split_on_char ',' |> List.map String.trim |> List.map int_of_string |> List.fold_left (+) 0]
  | _ -> raise (Failure "Invalid input")

