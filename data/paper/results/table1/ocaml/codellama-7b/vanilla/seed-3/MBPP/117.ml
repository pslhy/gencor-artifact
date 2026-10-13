let rec list_to_float (test_list :  (string * string) list) :  (float * float) list =
  match test_list with
    | []  -> []
    | (x,y)::t -> let x_f = try float_of_string x with Failure _ -> x and y_f = try float_of_string y with Failure _ -> y in
              let folded_agg = list_to_float t in
              (x_f, y_f)::folded_agg 
   


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert all possible convertible elements in a list of lists to floats. *)
