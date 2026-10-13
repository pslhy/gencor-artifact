let rec tuple_str_int (test_str : string) :  int * int * int =
  let str_arr = Str.split (Str.regexp ",") test_str in
  let int_arr = List.map int_of_string str_arr in
  match int_arr with
  | x::y::z::[] -> (x, y, z)
  | _ -> failwith "Not a suitable tuple string"
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
