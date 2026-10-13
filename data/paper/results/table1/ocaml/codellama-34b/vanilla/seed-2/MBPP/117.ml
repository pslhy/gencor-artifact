let rec list_to_float (test_list :  (string * string) list) :  (float * float) list =
    match test_list with 
    | [] -> []
    | (_,value):: rest -> 
    let (float_value, _) = 
    Utils.atol value
    in
    (float_value, float_value) :: list_to_float rest




(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert all possible convertible elements in a list of lists to floats. *)
