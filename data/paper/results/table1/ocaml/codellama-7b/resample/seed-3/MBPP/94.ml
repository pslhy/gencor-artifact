(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a list of tuples, write a function that returns the first value of the tuple with the smallest second value. *)
let rec index_minimum (test_list :  (string * int) list) : string =
  match test_list with
    | []  -> raise (Failure "No list to process")
    | [x] -> fst x
    | _   -> let test_smallest = List.min_elt (fun (_,y) (_,z) -> compare y z) test_list in
            index_minimum (List.filter (fun (_,y) -> y <> snd test_smallest) test_list)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:34: Unbound value "List.min_elt" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec index_minimum (test_list :  (string * int) list) : string =
  match test_list with
    | []  -> raise (Failure "No list to process")
    | [x] -> fst x
    | _   -> let small_test = List.min_elt (fun (_,y) (_,z) -> compare y z) test_list in
            index_minimum (List.filter (fun (_,y) -> y <> snd small_test) test_list)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:31: Unbound value "List.min_elt" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec index_minimum (test_list :  (string * int) list) : string =
  match test_list with
    | []  -> raise (Failure "No list to process")
    | [x] -> fst x
    | _   -> let small_test = min_elt (fun (_,y) (_,z) -> compare y z) test_list in
            index_minimum (List.filter (fun (_,y) -> y <> snd small_test) test_list)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:31: Unbound value "min_elt" *)
(*     Hint: Did you mean "min_int"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec index_minimum (test_list :  (string * int) list) : string =
  match test_list with
    | []  -> raise (Failure "No list to process")
    | [x] -> fst x
    | _   -> let small_test = min_int (fun (_,y) (_,z) -> compare y z) test_list in
            index_minimum (List.filter (fun (_,y) -> y <> snd small_test) test_list)

