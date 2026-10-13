let rec add_dict_to_tuple (test_tup :  int * int * int) (test_dict : (string * int) list) :  int * int * int * (string * int) list =
  let d1, d2, d3 = test_tup in
  let d1', d2', d3' = match test_dict with
    | [] -> test_tup
    | (k, v) :: rest ->
        if k = "d1" then (v, d2, d3)
        else if k = "d2" then (d1, v, d3)
        else if k = "d3" then (d1, d2, v)
        else (d1, d2, d3)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to add an association list to the tuple. The output should be a tuple. *)
