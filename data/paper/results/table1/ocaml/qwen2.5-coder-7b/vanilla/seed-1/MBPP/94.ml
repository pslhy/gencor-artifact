let rec index_minimum (test_list :  (string * int) list) : string = 
  let rec find_min acc = function
    | [] -> acc
    | (x, y)::tl ->
        if y < snd acc then find_min (x, y) tl
        else find_min acc tl
  in
  match test_list with
  | [] -> failwith "List cannot be empty"
  | (x, _)::_ -> fst (find_min (x, Int.max_int) test_list)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of tuples, write a function that returns the first value of the tuple with the smallest second value. *)
