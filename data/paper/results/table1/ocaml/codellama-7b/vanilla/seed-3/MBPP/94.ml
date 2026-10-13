let rec index_minimum (test_list :  (string * int) list) : string =
  match test_list with
    | []  -> raise (Failure "No list to process")
    | [x] -> fst x
    | _   -> let test_smallest = List.min_elt (fun (_,y) (_,z) -> compare y z) test_list in
            index_minimum (List.filter (fun (_,y) -> y <> snd test_smallest) test_list)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of tuples, write a function that returns the first value of the tuple with the smallest second value. *)
