let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list = 
    let rec sort_pairs pairs sorted = 
        match pairs with
        | [] -> sorted
        | (x, y) :: rest -> 
            let rec insert pair sorted = 
                match sorted with
                | [] -> [pair]
                | (a, b) :: tail -> 
                    if b < y then (a, b) :: insert pair tail
                    else pair :: (a, b) :: tail
            in insert (x, y) sorted
    in sort_pairs subjectmarks []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of tuples using the second value of each tuple. *)
