
let rec index_minimum (test_list :  (string * int) list) : string =
  match test_list with
    | []  -> raise (Failure "No list to process")
    | [x] -> fst x
    | _   -> let test_smallest = List.fold_left (fun smallest current ->
                            if snd current < snd smallest then current
                            else smallest) (List.hd test_list) (List.tl test_list) in
             fst test_smallest

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of tuples, write a function that returns the first value of the tuple with the smallest second value. *)
