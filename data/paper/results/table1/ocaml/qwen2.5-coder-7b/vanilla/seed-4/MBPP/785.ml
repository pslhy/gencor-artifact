let rec tuple_str_int (test_str : string) :  int * int * int = 
  let nums = Str.split (Str.regexp ",") test_str in
  let int_list = List.map int_of_string nums in
  match int_list with
  | a :: b :: c :: [] -> (a, b, c)
  | _ -> failwith "Invalid input format"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
