let rec add_dict_to_tuple (test_tup :  int * int * int) (test_dict : (string * int) list) :  int * int * int * (string * int) list =
  let sum = List.fold_left (fun acc (_,n) -> acc + n) 0 test_dict in
  let avg = sum / List.length test_dict in
  let dict_above_avg = List.filter (fun (_,n) -> n > avg) test_dict in
  let new_tup = (sum, avg, List.length dict_above_avg, dict_above_avg ) in
  (* I'm assuming that "add an association list to the tuple" means to append (a list of type (string * int) * int * int * (string * int) list) to the end of the tuple. If there's a difference in your definition, please specify it. *)
  let result = test_tup,new_tup in
  result
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to add an association list to the tuple. The output should be a tuple. *)
