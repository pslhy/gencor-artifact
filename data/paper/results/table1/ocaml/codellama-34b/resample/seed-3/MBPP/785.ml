(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
let rec tuple_str_int (test_str : string) :  int * int * int = 
  let strlist = Str.split_delim (white_spaces, test_str) in 
  if strlist.length = 3 then 
    let res = (try int_of_string strlist.[0], int_of_string strlist.[1], int_of_string strlist.[2] with _ -> failwith "Invalid tuple string") in 
    res 
  else 
    failwith "Invalid tuple string"

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:17: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec tuple_str_int (test_str : string) :  int * int * int = 
  let strlist = String.split_on_char ' ' test_str in 
  if List.length strlist = 3 then 
    let res = (try int_of_string (List.hd strlist), int_of_string (List.hd (List.tl strlist)), int_of_string (List.hd (List.tl (List.tl strlist))) with _ -> failwith "Invalid tuple string") in 
    res 
  else 
    failwith "Invalid tuple string"

