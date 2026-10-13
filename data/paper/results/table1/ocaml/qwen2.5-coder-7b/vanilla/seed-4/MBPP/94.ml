let rec index_minimum (test_list :  (string * int) list) : string = 
    let rec findMin (lst : (string * int) list) (min_elem : string * int) : string * int =
        match lst with
        | [] -> min_elem
        | (h::t) -> 
            let (hi, vi) = h in
            let (mi, vii) = min_elem in
            if vi < vii then findMin t h else findMin t min_elem
    in
    let (result, _) = findMin test_list ("", max_int) in
    result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of tuples, write a function that returns the first value of the tuple with the smallest second value. *)
