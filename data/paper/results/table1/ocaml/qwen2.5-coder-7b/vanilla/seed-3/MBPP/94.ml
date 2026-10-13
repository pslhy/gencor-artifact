let rec index_minimum (test_list :  (string * int) list) : string = 
    let rec helper min_val min_str = function 
        | [] -> min_str
        | (i, v)::tail -> if v < min_val then helper v i tail else helper min_val min_str tail
    in 
    if test_list = [] then failwith "Empty list"
    else helper (snd (List.hd test_list)) (fst (List.hd test_list)) (List.tl test_list)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of tuples, write a function that returns the first value of the tuple with the smallest second value. *)
