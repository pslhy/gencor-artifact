let rec index_minimum (test_list :  (string * int) list) : string =
    match test_list with
        | [] -> invalid_arg "Empty list"
        | [x] -> fst x
        | x1::x2::xs -> if snd x1 < snd x2 then index_minimum (x1::xs) else index_minimum (x2::xs)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of tuples, write a function that returns the first value of the tuple with the smallest second value. *)
