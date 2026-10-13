let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
    match subjectmarks with 
    |[] -> []
    |(x, y)::xs -> insert (x, y) (subject_marks xs)
        

and insert (x, y) = function 
    |[] -> [(x, y)]
    |(a, b)::ys -> if y > b then (a, b)::(insert (x, y) ys) 
                   else (x, y)::(a, b)::ys


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of tuples using the second value of each tuple. *)
