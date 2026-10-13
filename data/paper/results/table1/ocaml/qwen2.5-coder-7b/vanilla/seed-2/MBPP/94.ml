let rec index_minimum (test_list :  (string * int) list) : string = 
    let rec find_min (acc, min_val, rest : (string * int * (string * int) list) ) : (string * int * (string * int) list) = 
        match rest with
        | [] -> (acc, min_val, rest)
        | (x,y)::xs -> if y < min_val then find_min (x, y, xs) else find_min (acc, min_val, xs)
    in fst (find_min ("", max_int, test_list))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of tuples, write a function that returns the first value of the tuple with the smallest second value. *)
