let rec add_dict_to_tuple (test_tup :  int * int * int) (test_dict : (string * int) list) :  int * int * int * (string * int) list =
    let (a, b, c) = test_tup in
    let l = List.map (fun (w, x) -> (w, x, a + x)) test_dict in
    (a, b, c, l)

# Test case 1
add_dict_to_tuple (1, 2, 3) [("a", 1); ("b", 3); ("c", 2)] == (1, 2, 3, [("a", 1, 1); ("b", 3, 3); ("c", 2, 2)])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to add an association list to the tuple. The output should be a tuple. *)
