let rec tuple_str_int (test_str : string) :  int * int * int = 
  let split str sep = 
    let str = str ^ sep in 
    let rec str_split lst str = 
      match String.index_opt str sep with 
      | Some i -> str_split ((String.sub str 0 i)::lst) (String.sub str (i+1) ((String.length str)-(i+1))) 
      | None -> List.rev (str::lst) 
    in 
    str_split [] str 
  in
  let splits = split test_str "," in
  (int_of_string (List.nth splits 0), int_of_string (List.nth splits 1), int_of_string (List.nth splits 2))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
