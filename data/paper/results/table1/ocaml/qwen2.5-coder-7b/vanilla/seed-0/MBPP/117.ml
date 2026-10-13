let rec list_to_float (test_list :  (string * string) list) :  (float * float) list = 
  let f (a,b) = 
    try (float_of_string a, float_of_string b) 
    with _ -> (float_of_int (int_of_string a), float_of_int (int_of_string b)) 
  in
  List.map f test_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert all possible convertible elements in a list of lists to floats. *)
