let rec tuple_str_int (test_str : string) :  int * int * int = 
  let strlist = Str.split_delim (white_spaces, test_str) in 
  if strlist.length = 3 then 
    let res = (try int_of_string strlist.[0], int_of_string strlist.[1], int_of_string strlist.[2] with _ -> failwith "Invalid tuple string") in 
    res 
  else 
    failwith "Invalid tuple string"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
