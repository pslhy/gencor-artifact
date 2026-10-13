let rec tuple_str_int (test_str : string) :  int * int * int =
    let split = Str.split (Str.regexp ",") test_str in
    match split with
    | a::b::c::[] -> (int_of_string a, int_of_string b, int_of_string c)
    | _ -> raise (Invalid_argument "Input string must be a string of three integers separated by commas")



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
